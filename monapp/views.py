from django.http import HttpResponse

def accueil(request):
    return HttpResponse("Bienvenue sur mon application Django simple !(Deja modifié , un build sur Jenkins reussi mec😎)")
