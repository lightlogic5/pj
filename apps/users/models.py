# _*_ encoding:utf-8 _*_
from django.db import models


from django.contrib.auth.models import AbstractUser
# Create your models here.

class UserProfile(AbstractUser):
    employeeid = models.CharField(max_length=11, verbose_name=u"员工id")
    birday = models.DateField(verbose_name=u"生日", null=True, blank=True)
    gender = models.CharField(max_length=6, choices=(("male",u"男"),("female","女")), default="female")
    unit = models.CharField(max_length=20, default=u"所在单位")
    department = models.CharField(max_length=20, default=u"所在部门")
    mobile = models.CharField(max_length=11, null=True, blank=True, verbose_name=u"联系电话")
    image = models.ImageField(upload_to="image/%Y/%m",default=u"image/default.png", max_length=100)

    class Meta:
        verbose_name = "用户信息"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.username

class Userguid(models.Model):
    username = models.ForeignKey(UserProfile, verbose_name=u"使用人姓名")
    devicetype = models.CharField(max_length=6, choices=(("pr", u"打印机"), ("com", "计算机")), default="com")
    Configinfo = models.CharField(max_length=300, verbose_name=u"配置信息")
    ipaddress = models.CharField(max_length=100, verbose_name=u"ip地址")

    class Meta:
        verbose_name = u"员工信息设备"
        verbose_name_plural = verbose_name

