from django.db import models

from datetime import datetime

from workorders.models import workord
from users.models import UserProfile
from userguid.models import userguid,possession
# Create your models here.

class employs(models.Model):
    '员工设备信息'
    username = models.ForeignKey(UserProfile, verbose_name=u"员工姓名")
    guid = models.ForeignKey(userguid, verbose_name=u"设备id")
    unit = models.ForeignKey(possession, verbose_name=u"所在单位")

    class Meta:
        verbose_name = u"员工设备"
        verbose_name_plural = verbose_name



class ordComments(models.Model):
    "我的工单"
    user = models.IntegerField(default=0, verbose_name=u"接收用户")
    ordernum = models.ForeignKey(workord, verbose_name=u"工单号")
    comments = models.CharField(max_length=500, verbose_name=u"评论")
    has_read = models.BooleanField(default=False, verbose_name=u"是否已读")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"工单讨论"
        verbose_name_plural = verbose_name