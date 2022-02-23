from django.db import models

# Create your models here.

class MovieCategories(models.Model):
    genre = models.CharField(max_length=250)

class Director(models.Model):
    name = models.CharField(max_length=250)
    lastName = models.CharField(max_length=250)
    birthday = models.CharField(max_length=250)
    

class Actor(models.Model):
    name = models.CharField(max_length=250)
    lastName = models.CharField(max_length=250)
    birthday = models.CharField(max_length=250)

class Character(models.Model):
    name = models.CharField(max_length=250)

class Movie(models.Model):
    name = models.CharField(max_length=250)
    description = models.CharField(max_length=2000)
    age = models.IntegerField(4)
    duration = models.CharField(max_length=20)
    ranking = models.IntegerField(1)
    categories = models.ManyToManyField(MovieCategories)
    director = models.ManyToManyField(Director)
    characters = models.ManyToManyField(Character)
