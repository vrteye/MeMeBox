# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-01-16 15:08
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tpsapp', '0010_cart'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='cart',
            table='tpsapp_cart',
        ),
    ]