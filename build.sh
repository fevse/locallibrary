#!/usr/bin/env bash
# exit on error
set -o errexit

pip install setuptools
poetry install
pip install setuptools
poetry install setuptools

python manage.py collectstatic --no-input
python manage.py migrate
