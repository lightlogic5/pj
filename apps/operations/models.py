from django.db import models

from datetime import datetime

from workorders.models import workord
# Create your models here.


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