#!/usr/bin/env bash
# exit on error
set -o errexit

pip install setuptools
pip update setuptools
poetry add setuptools
poetry update setuptools
poetry install
pip install setuptools
pip update setuptools
poetry add setuptools
poetry update setuptools

python manage.py collectstatic --no-input
python manage.py migrate

pip install setuptools
pip update setuptools
poetry add setuptools
poetry update setuptools
