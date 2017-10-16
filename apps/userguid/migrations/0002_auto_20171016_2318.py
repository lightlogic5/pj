# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-16 23:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userguid', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='possession',
            options={'verbose_name': '单位属地', 'verbose_name_plural': '单位属地'},
        ),
        migrations.AlterModelOptions(
            name='userguid',
            options={'verbose_name': '信息化设备', 'verbose_name_plural': '信息化设备'},
        ),
        migrations.RemoveField(
            model_name='userguid',
            name='username',
        ),
        migrations.AddField(
            model_name='userguid',
            name='guid',
            field=models.CharField(default=1111, max_length=11, verbose_name='设备id'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='possession',
            name='unit',
            field=models.CharField(default='单位', max_length=20),
        ),
    ]