from django.db import models

from datetime import datetime

from users.models import UserProfile

# Create your models here.


class workord(models.Model):
    "故障申请"
    ordernum = models.CharField(max_length=20, verbose_name=u"工单号")
    username = models.ForeignKey(UserProfile, verbose_name=u"报修人姓名")
    guid = models.CharField(max_length=50, verbose_name=u"故障设备")
    desc = models.CharField(max_length=300, verbose_name=u"故障描述")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"提交时间")

    class Meta:
        verbose_name = u"故障工单"
        verbose_name_plural = verbose_name


