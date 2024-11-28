from django.shortcuts import render
from webproject import models
from django.views.decorators.csrf import csrf_exempt

def index(request):
    return render(request, 'index.html')

@csrf_exempt
def test(request):
    setting_data = models.get_setting()
    print(len(setting_data))
    return render(request, "test.html", {'count': len(setting_data)})