import xadmin

from .models import employs

class employsAdmin(object):
    list_display = ['username', 'guid','unit']
    search_fields = ['username', 'guid','unit']
    list_filter = ['username', 'guid','unit']



xadmin.site.register(employs, employsAdmin)
