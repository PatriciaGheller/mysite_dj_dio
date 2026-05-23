#!/usr/bin/env bash
set -o errexit

pip install poetry -U
poetry install --no-root --without dev

python manage.py collectstatic --no-input

python manage.py migrate