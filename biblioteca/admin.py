from django.contrib import admin
from django.db.models import Sum
from .models import libro, usuario, escritor


# Register your models here.
@admin.register(libro)
class libroAdmin(admin.ModelAdmin):
    list_display = ['isbn', 'titulo', 'escritor', 'editorial', 'fecha_publicacion', 'fecha_captura', 'existencia', 'precio']
    search_fields = ['isbn', 'titulo', 'editorial']

    # Esta función calcula el total de la columna precio
    def changelist_view(self, request, extra_context=None):
        response = super().changelist_view(request, extra_context=extra_context)
        
        # Intentamos obtener el queryset de la respuesta (resultados filtrados o buscados)
        try:
            qs = response.context_data['cl'].queryset
        except (AttributeError, KeyError):
            return response

        # Calculamos la suma
        total_precio = qs.aggregate(total=Sum('precio'))['total'] or 0
        
        # Pasamos el dato al contexto para usarlo en el HTML
        response.context_data['total_precio'] = total_precio
        return response

@admin.register(usuario)
class usuarioAdmin(admin.ModelAdmin):
    list_display = ['nombres', 'apellidos', 'email', 'telefono', 'direccion', 'fecha_nacimiento']
    search_fields = ['nombres', 'apellidos', 'email',]

@admin.register(escritor)
class escritorAdmin(admin.ModelAdmin):
    list_display = ['nombres', 'apellidos', 'nacionalidad', 'fecha_nacimiento', 'fecha_captura']
    search_fields = ['nombres', 'apellidos', 'nacionalidad']