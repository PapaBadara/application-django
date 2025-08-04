from django.http import HttpResponse

def accueil(request):
    return HttpResponse("Bienvenue sur mon application Django simple !(modifié : Va refaire un buil sur Jenkins😎)")
