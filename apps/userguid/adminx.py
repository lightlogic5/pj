import xadmin

from .models import userguid,possession

class userguidAdmin(object):
    list_display = ['guid','devicetype','Configinfo','ipaddress']
    search_fields = ['guid','devicetype','Configinfo','ipaddress']
    list_filter = ['guid','devicetype','Configinfo','ipaddress']


class possessionAdmin(object):
    list_display = ['unit','posse']
    search_fields = ['unit','posse']
    list_filter = ['unit','posse']

xadmin.site.register(userguid, userguidAdmin)
xadmin.site.register(possession, possessionAdmin)
