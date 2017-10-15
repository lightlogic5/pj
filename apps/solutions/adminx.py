import xadmin

from .models import solution

class solutionAdmin(object):
    list_display = ['soname', 'desc', 'add_time']
    search_fields = ['soname', 'desc']
    list_filter = ['soname', 'desc', 'add_time']


xadmin.site.register(solution, solutionAdmin)