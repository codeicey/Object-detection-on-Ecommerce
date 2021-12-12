from django.contrib.auth.models import User, Group
from .models import *
from rest_framework import serializers

class ItemSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Item
        fields = ['title', 'price', 'discount_price', 'category','label','slug','description','image']

