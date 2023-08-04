# todo_api/urls.py
from django.urls import path
from .views import *

urlpatterns = [
    path('api/',TodoListApiView.as_view(), name='TodoListApiView'),
    # Add more URL patterns for your app views...
]
