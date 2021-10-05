!#/bin/sh
echo "Starting))"
# export FLASK_APP=app.py
# gunicorn --bind :80 --keep-alive 16 app:app
uwsgi --http 127.0.0.1:5000 --module app:app