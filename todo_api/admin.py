from django.contrib import admin
from .models import Todo
# Register your models here.
class TodoAdmin(admin.ModelAdmin):
    list_display = ['id', 'task', 'completed']
    list_filter = ['task']
    search_fields = ['task']

admin.site.register(Todo,TodoAdmin)
