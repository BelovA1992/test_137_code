!#/bin/sh
echo "Starting))"
gunicorn --bind :80 --keep-alive 16 app:app