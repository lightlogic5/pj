from django.db import models

from users.models import UserProfile

# Create your models here.


class userguid(models.Model):
    "下发的信息设备"
    guid = models.CharField(max_length=11, verbose_name=u"设备id")
    devicetype = models.CharField(max_length=6, choices=(("pr", u"打印机"), ("com", "计算机")), default="com")
    Configinfo = models.CharField(max_length=300, verbose_name=u"配置信息")
    ipaddress = models.CharField(max_length=100, verbose_name=u"ip地址")

    class Meta:
        verbose_name = u"信息化设备"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.guid


class possession(models.Model):
    "属地划分"
    unit = models.CharField(max_length=20, verbose_name=u"单位")
    posse = models.CharField(verbose_name=u"属地", choices=(("jg","机关大楼"), ("dd","调度楼"), ("xq","西区"), ("dq","东区"), ("bq","北区"), ("nq","南区")), max_length=2)


    class Meta:
        verbose_name = u"单位属地"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.unit