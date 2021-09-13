from settings.common import *

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '@=0tvn!)+hu(y(x1f50d3e8)oitnb0hb0fmqfb#$5^z3i%d0*8'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True


# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'databases/db.sqlite3'),
    },
    'fa3ed4d0-7a98-444d-a34c-8db7d7fbc87d':{
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'databases/fa3ed4d0-7a98-444d-a34c-8db7d7fbc87d.sqlite3'),
    }
}
