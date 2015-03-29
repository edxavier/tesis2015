from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import Usuario
from .forms import UserCreationForm, UserChangeForm


# Register your models here.
@admin.register(Usuario)
class UsuarioAdmin(UserAdmin):
    form = UserChangeForm
    add_form = UserCreationForm

    list_display = ('username','email', 'is_staff')
    list_filter = ('username',)

    fieldsets = (
        ('Informacion de Acceso', {'fields': ('username', 'password')}),
        ('Informacion Personal', {'fields': ('firstname','lastname','email')}),
        ('Permisos', {'fields': ('is_staff','is_superuser','groups','user_permissions')}),
    )
    # add_fieldsets is not a standard ModelAdmin attribute. UserAdmin
    # overrides get_fieldsets to use this attribute when creating a user.

    search_fields = ('email',)
    ordering = ('email',)
    filter_horizontal = ('groups','user_permissions',)

