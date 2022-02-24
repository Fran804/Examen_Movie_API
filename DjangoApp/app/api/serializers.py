from .models import *
from rest_framework import serializers

class MovieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = ['id', 'name', 'description', 'age', 'duration', 'ranking']

    # def to_representation(self, instance):
    #     ret = super().to_representation(instance)
    #     return {
    #         'id': ret['id'],
    #         'name': ret['name'],
    #         'ranking': ret['ranking'],
    #         'description': ret['description'],
    #         'category_id': ret['category']
    #     }

class MovieCategoriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = MovieCategories
        fields = ['genre']

class DirectorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Director
        fields = ['name', 'lastName', 'birthday']

class ActorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Actor
        fields = ['name', 'lastName', 'birthday']

class CharacterSerializer(serializers.ModelSerializer):
    class Meta:
        model = Character
        fields = ['name']
