from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404, redirect
from MilkonlineApp.models import Category, Product, Aboutus, gallery
from django.contrib.auth.models import Group, User
from .forms import SignUpForm1
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.decorators import login_required
# Create your views here.



def signupView1(request):
    if request.method == 'POST':
        form = SignUpForm1(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            signup_user = User.objects.get(username=username)
            customer_group = Group.objects.get(name='Deliveryboy')
            customer_group.user_set.add(signup_user)
    else:
        form = SignUpForm1()
    return render(request, 'signup.html', {'form': form})


def signinView1(request):
    if request.method == 'POST':
        form = AuthenticationForm(data=request.POST)
        if form.is_valid():
            username = request.POST['username']
            password = request.POST['password']
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect('MilkonlineApp:index')
            else:
                return redirect('MilkonlineApp:signup')
    else:
        form = AuthenticationForm()
    return render(request, 'signin.html', {'form': form})


def signoutView1(request):
    logout(request)
    return redirect('/')
