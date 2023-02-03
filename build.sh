#!/usr/bin/env bash
# exit on error
set -o errexit

poetry add setuptools
poetry install
pip install setuptools
poetry add setuptools

python manage.py collectstatic --no-input
python manage.py migrate

pip install setuptools
