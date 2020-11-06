from django.urls import path, include
from . import views


urlpatterns = [
    path('account/create/',views.signupView1,name='signup'),
    path('account/login/', views.signinView1, name='signin'),
    path('account/logout/', views.signoutView1, name='signout'),
    ]