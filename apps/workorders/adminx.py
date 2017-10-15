import xadmin

from .models import workord

class workordAdmin(object):
    list_display = ['ordernum', 'username', 'guid', 'add_time']
    search_fields = ['ordernum', 'username', 'guid']
    list_filter = ['ordernum', 'username', 'guid', 'add_time']


xadmin.site.register(workord, workordAdmin)