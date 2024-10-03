#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT test_c2s_949.wsgi:application
