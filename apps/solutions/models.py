from datetime import datetime

from django.db import models

# Create your models here.

class solution(models.Model):
    soname = models.CharField(max_length=100, verbose_name=u"故障标题")
    desc = models.CharField(max_length=300, verbose_name=u"故障描述")
    solu = models.CharField(max_length=300, verbose_name=u"解决办法")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"发布时间")

    class Meta:
        verbose_name = u"常见故障"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.soname


class solutionResource(models.Model):
    soname = models.ForeignKey(solution, verbose_name=u"故障名")
    download = models.FileField(upload_to="solution/resource/%Y/%m", verbose_name=u"资源文件", max_length=100)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"课程资源"
        verbose_name_plural = verbose_name