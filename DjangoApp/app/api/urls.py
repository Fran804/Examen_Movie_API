from django.urls import include, path
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'movies', views.MovieViewSet)
router.register(r'moviecategories', views.MovieCategoriesViewSet)
router.register(r'director', views.DirectorViewSet)
router.register(r'actor', views.ActorViewSet)
router.register(r'character', views.CharacterViewSet)

urlpatterns = [
    # path('', views.index, name='index')
    path('', include(router.urls)),
    path('api-auth', include('rest_framework.urls', namespace=' rest_framework'))
]
