# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-16 23:18
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_auto_20171016_2229'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='userprofile',
            name='unit',
        ),
    ]
