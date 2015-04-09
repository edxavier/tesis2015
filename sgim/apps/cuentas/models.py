# coding=utf-8
from django.db import models
import os
from django.contrib.auth.models import (
    AbstractBaseUser, BaseUserManager, PermissionsMixin, User
)
from django.dispatch import receiver
from apps.inicio.utils import enviarSMS


# Create your models here.
class UserManager(BaseUserManager, models.Manager):

    def _create_user(self, username, password, is_staff, is_superuser, **extra_fields):

        #email = self.normalize_email(email)
        #if not email:
           # raise ValueError('El email es un campo requerido')
        user = self.model(username=username, is_active=True,
                          is_staff=is_staff, is_superuser=is_superuser, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_user(self, username,  password=None, **extra_fields):
        return self._create_user(username,  password, False, False, **extra_fields)

    def create_superuser(self, username,  password=None, **extra_fields):
        return self._create_user(username,  password, True, True, **extra_fields)


class Usuario(AbstractBaseUser, PermissionsMixin):
    username = models.CharField(max_length=50, unique=True, verbose_name='Usuario')
    firstname = models.CharField(max_length=50, verbose_name='Nombres', blank=True)
    lastname = models.CharField(max_length=50, verbose_name='Apellidos', blank=True)
    email = models.EmailField(blank=True)
    imagen = models.ImageField(upload_to='cuentas/img', blank=True, default="cuentas/img/default.png")
    is_active = models.BooleanField(default=True, verbose_name='Esta Activo')
    is_staff = models.BooleanField(default=False, verbose_name='Es Administrador',
                                   help_text='Indica si el usuario puede acceder al panel de administracion')

    telefono = models.CharField(max_length=15, blank=True)

    objects = UserManager()

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = []
    TEMP_PASSWD = ""

    '''class Meta:
        permissions = (
            ("ver_usuarios", "Puede ver la lista de usuarios"),
            ("change_task_status", "Can change the status of tasks"),
        )'''

    def get_short_name(self):
        return self.username

    def get_full_name(self):
        return self.first_name + ' ' + self.last_name

    def enviar_sms(self, mensaje):
        if self.telefono:
            enviarSMS(self.telefono, mensaje)


#Receptor de señal post_save
@receiver(models.signals.post_save, sender=Usuario)
def notificarUsuarioDeAlta(sender, instance, created, **kwargs):
    """
    Envia un correo al usuario una vez fue dado de alta
    """
    if created and not instance.is_superuser:
    #si el objeto se acaba de crear, enviar correo
        mensaje = "Credenciales de acceso a SGIM =" \
                  " Usuario:" + instance.username + "-Clave:" + instance.TEMP_PASSWD + " "
        instance.enviar_sms(mensaje)


@receiver(models.signals.pre_save, sender=Usuario)
def auto_borrar_foto_al_cambiar(sender, instance,  **kwargs):
    """
    Envia un correo al usuario una vez fue dado de alta
    """
       #intenta darme el archivo anterior
    try:
        old_file = Usuario.objects.get(pk=instance.pk).imagen
    except Usuario.DoesNotExist:
        return

    if os.path.basename(old_file.path) == "default.jpg":
        return False
    #dame el archivo q viene en el objeto a actualizar
    new_file = instance.imagen
    #si no son los mismos archivos elimina el anterior
    if not old_file == new_file:
        if os.path.isfile(old_file.path):
            os.remove(old_file.path)
