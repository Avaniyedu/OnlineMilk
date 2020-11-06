# Generated by Django 2.2 on 2020-04-10 10:05

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('MilkonlineApp', '0007_delivery_reg'),
    ]

    operations = [
        migrations.CreateModel(
            name='DeliverTask',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.EmailField(max_length=254, null=True)),
                ('address', models.TextField(max_length=254)),
                ('license', models.CharField(max_length=200)),
                ('phoneno', models.IntegerField(blank=True)),
                ('datecreated', models.DateTimeField(auto_now_add=True, null=True)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]