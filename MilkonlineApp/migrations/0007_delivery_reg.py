# Generated by Django 2.2 on 2020-04-10 05:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('MilkonlineApp', '0006_delete_user'),
    ]

    operations = [
        migrations.CreateModel(
            name='Delivery_reg',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('address', models.CharField(max_length=100)),
                ('vehicle', models.CharField(max_length=200)),
                ('licence', models.CharField(max_length=200)),
                ('password', models.TextField(blank=True)),
            ],
        ),
    ]
