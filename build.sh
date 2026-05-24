#!/usr/bin/env bash
set -o errexit

pip install poetry -U
poetry install --no-root 

python manage.py collectstatic --no-input

python manage.py migrate

python manage.py makemigrations polls

python manage.py migrate polls

