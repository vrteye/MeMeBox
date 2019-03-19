# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-01-16 15:07
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tpsapp', '0009_detail_img'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cart',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.IntegerField()),
                ('isselect', models.BooleanField(default=True)),
                ('products', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tpsapp.Detail')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tpsapp.User')),
            ],
        ),
    ]
