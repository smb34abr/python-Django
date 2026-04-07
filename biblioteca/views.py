from django.shortcuts import render

# Create your views here.
def editorial(request):
    return render(request, 'editorial.html')

def escritor(request):
    return render(request, 'escritor.html')

def index(request):
    return render(request, 'index.html')

def libros(request):
    return render(request, 'libros.html')