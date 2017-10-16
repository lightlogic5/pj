import xadmin

from .models import Userguid

class UserguidAdmin(object):
    list_display = ['username', 'devicetype','Configinfo','ipaddress']
    search_fields = ['username', 'devicetype','Configinfo','ipaddress']
    list_filter = ['username', 'devicetype','Configinfo','ipaddress']




xadmin.site.register(Userguid, UserguidAdmin)
