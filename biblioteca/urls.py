from django.urls import path
from . import views

urlpatterns = [
    path('editorial/', views.editorial, name="editorial"),
    path('escritor/', views.escritor, name="escritor"),
    path('', views.index, name="index"),
    path('libros/', views.libros, name="libros"),
]