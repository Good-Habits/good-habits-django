from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User

from user.models import User as CustomUser


admin.site.unregister(User)
admin.site.register(CustomUser, UserAdmin)