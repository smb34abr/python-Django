from django.contrib import admin
from .models import libro, usuario, escritor


# Register your models here.
@admin.register(libro)
class libroAdmin(admin.ModelAdmin):
    list_display = ['isbn', 'titulo', 'escritor', 'editorial', 'fecha_publicacion', 'fecha_captura', 'existencia', 'precio']
    search_fields = ['isbn', 'titulo', 'editorial']

@admin.register(usuario)
class usuarioAdmin(admin.ModelAdmin):
    list_display = ['nombres', 'apellidos', 'email', 'telefono', 'direccion', 'fecha_nacimiento']
    search_fields = ['nombres', 'apellidos', 'email',]

@admin.register(escritor)
class escritorAdmin(admin.ModelAdmin):
    list_display = ['nombres', 'apellidos', 'nacionalidad', 'fecha_nacimiento', 'fecha_captura']
    search_fields = ['nombres', 'apellidos', 'nacionalidad']