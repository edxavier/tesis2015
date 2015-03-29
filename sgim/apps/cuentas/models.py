from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin, User
from django.dispatch import receiver


# Create your models here.
class UserManager(BaseUserManager, models.Manager):

    def _create_user(self, username, email, password, is_staff, is_superuser, **extra_fields):

        email = self.normalize_email(email)
        if not email:
            raise ValueError('El email es un campo requerido')
        user = self.model(username=username, email=email, is_active=True,
                          is_staff=is_staff, is_superuser=is_superuser, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_user(self, username, email, password=None, **extra_fields):
        return self._create_user(username, email, password, False, False, **extra_fields)

    def create_superuser(self, username, email, password=None, **extra_fields):
        return self._create_user(username, email, password, True, True, **extra_fields)


class Usuario(AbstractBaseUser,PermissionsMixin):
    username = models.CharField(max_length=50, unique=True, verbose_name='Usuario')
    firstname = models.CharField(max_length=50, verbose_name='Nombres', blank=True)
    lastname = models.CharField(max_length=50, verbose_name='Apellidos', blank=True)
    email = models.EmailField(blank=True)
    imagen = models.ImageField(upload_to='cuentas/img', blank=True)
    is_active = models.BooleanField(default=False, verbose_name='Esta Activo')
    is_staff = models.BooleanField(default=False, verbose_name='Es Administrador', help_text='Indica si el usuario puede acceder al panel de administracion')

    objects = UserManager()

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email']

    '''class Meta:
        permissions = (
            ("ver_usuarios", "Puede ver la lista de usuarios"),
            ("change_task_status", "Can change the status of tasks"),
        )'''

    def get_short_name(self):
    	return self.username

    def get_full_name(self):
        return self.first_name + ' ' + self.last_name

@receiver(models.signals.post_save,sender=Usuario)
def notificarUsuarioDeAlta(sender, instance, **kwargs):
    """
    Envia un correo al usuario una vez fue dado de alta
    """
    if instance.pk:
        if instance.previous_instance().flag == False and instance.flag == True:
            usuario = Usuario.objects.get(pk=instance.pk)
            print "Enviar correo a " + usuario.username