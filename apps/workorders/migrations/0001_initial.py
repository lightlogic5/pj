# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-16 21:45
from __future__ import unicode_literals

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='workord',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ordernum', models.CharField(max_length=20, verbose_name='工单号')),
                ('guid', models.CharField(max_length=50, verbose_name='故障设备')),
                ('desc', models.CharField(max_length=300, verbose_name='故障描述')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='提交时间')),
                ('username', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='报修人姓名')),
            ],
            options={
                'verbose_name': '故障工单',
                'verbose_name_plural': '故障工单',
            },
        ),
    ]
