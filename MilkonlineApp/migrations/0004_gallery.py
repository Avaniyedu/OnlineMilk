# Generated by Django 2.2 on 2020-03-31 16:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MilkonlineApp', '0003_aboutus'),
    ]

    operations = [
        migrations.CreateModel(
            name='gallery',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(blank=True, upload_to='gallery')),
            ],
        ),
    ]