from django.db import models

# Create your models here.
class MarcaDeTiempo(models.Model):
    '''
    Modelo utilizado para heredarlo en otros modelos
    '''
    creado = models.DateTimeField(auto_now_add=True)
    modificado = models.DateTimeField(auto_now=True)

    class Meta:
        #Esto es para que no se cree una tabla en la base de datos
        abstract = True