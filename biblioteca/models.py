from django.db import models

# Create your models here.
class escritor(models.Model):
    nombres = models.CharField(max_length = 150)
    apellidos = models.CharField(max_length = 150)
    nacionalidad = models.CharField(max_length = 150)
    fecha_nacimiento = models.DateField()
    fecha_captura = models.DateTimeField(auto_now = True)
    
    class Meta:  # Con M mayúscula
        ordering = ['nombres']
    
    def __str__(self):
        return f"{self.nombres} {self.apellidos}"

class editorial(models.Model):
    nombres = models.CharField(max_length = 150)
    especialidad = models.CharField(max_length = 100)
    pais = models.CharField(max_length = 100)

    class Meta:
        ordering = ['nombres']
    
    def __str__(self):
        return f"{self.nombres} {self.especialidad}"

class libro(models.Model):
    titulo = models.CharField(max_length = 150)
    isbn = models.CharField(max_length = 20)
    # Eliminamos el CharField de escritor para dejar solo la relación real
    escritor = models.ForeignKey(escritor, on_delete = models.CASCADE)
    editorial = models.ForeignKey(editorial, on_delete = models.CASCADE) 
    #editorial = models.CharField(max_length = 150)
    fecha_publicacion = models.DateField()
    existencia = models.IntegerField()  # Eliminado el max_length
    precio = models.DecimalField(max_digits = 10, decimal_places=2)
    fecha_captura = models.DateTimeField(auto_now = True)

    class Meta:  # Con M mayúscula
        ordering = ['titulo']
    
    def __str__(self):
        return self.titulo

class usuario(models.Model):
    nombres = models.CharField(max_length = 150)
    apellidos = models.CharField(max_length = 150)
    # Se recomienda EmailField para validar automáticamente el formato
    email = models.EmailField(max_length = 150) 
    telefono = models.CharField(max_length = 15)
    direccion = models.TextField(blank = True)
    fecha_nacimiento = models.DateField()
    fecha_captura = models.DateTimeField(auto_now = True)

    class Meta:  # Con M mayúscula
        ordering = ['nombres']
    
    def __str__(self):
        return f"{self.nombres} {self.apellidos}"