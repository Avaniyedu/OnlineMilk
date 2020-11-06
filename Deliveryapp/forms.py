from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from crispy_forms.helper import FormHelper


class SignUpForm1(UserCreationForm):
    helper=FormHelper()

    helper.form_show_labels =False
    first_name = forms.CharField(max_length=100, required=True)
    last_name = forms.CharField(max_length=100, required=True)
    email = forms.EmailField(max_length=254)
    age=forms.IntegerField()


    class Meta:
        model = User
        help_texts = {
            'username': None,
            'password':None,


        }
        fields = ('first_name', 'last_name', 'email', 'username', 'password1', 'password2')
