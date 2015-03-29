from django import forms
from django.contrib import admin
from django.contrib.auth.models import Group

from django.contrib.auth.forms import ReadOnlyPasswordHashField

from .models import Usuario


class UserCreationForm(forms.ModelForm):
    """A form for creating new users. Includes all the required
    fields, plus a repeated password."""
    password1 = forms.CharField(label='Clave', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirma tu clave', widget=forms.PasswordInput)

    class Meta:
        model = Usuario
        fields = ('username','password1','password2','email','is_staff','is_superuser','groups','user_permissions',)

    def clean_password2(self):
        # Check that the two password entries match
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("Las claves no coinciden")
        return password2

    def save(self, commit=True):
        # Save the provided password in hashed format
        user = super(UserCreationForm, self).save(commit=False)
        user.set_password(self.cleaned_data["password1"])
        if commit:
            user.save()
        return user


class UserChangeForm(forms.ModelForm):
    """A form for updating users. Includes all the fields on
    the user, but replaces the password field with admin's
    password hash display field.
    """
    password = ReadOnlyPasswordHashField( help_text=("Las claves no se almacenan en texto plano, asi que no hay manera"
                    "de ver la clave del usuario, pero se puede modificard "
                    "usando <a href=\"password/\">este formulario</a>."))

#    password1 = forms.CharField(label='Clave', widget=forms.PasswordInput)
 #   password2 = forms.CharField(label='Confirma tu Clave', widget=forms.PasswordInput)

    class Meta:
        model = Usuario


    def clean_password(self):
        # Regardless of what the user provides, return the initial value.
        # This is done here, rather than on the field, because the
        # field does not have access to the initial value
        return self.initial["password"]
