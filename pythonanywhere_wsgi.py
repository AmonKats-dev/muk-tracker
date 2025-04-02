# PythonAnywhere WSGI configuration file

import os
import sys

# Add your project path to the system path
path = '/home/amnamara/muk-tracker/backend'
if path not in sys.path:
    sys.path.append(path)

# Set the environment variable for Django settings
os.environ['DJANGO_SETTINGS_MODULE'] = 'muk_support_backend.settings_prod'

# Import the Django WSGI application
from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
