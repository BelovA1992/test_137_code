FROM python:3.9.5-slim-buster
ENV PYTHONUNBUFFERED 1
WORKDIR /app
RUN apt update
RUN apt install dos2unix
COPY r.txt r.txt
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir --upgrade setuptools
RUN pip install --no-cache-dir -r r.txt
COPY . .
RUN ["dos2unix", "/app/entrypoint.sh"]
RUN ["chmod", "+x", "/app/entrypoint.sh"]
ENTRYPOINT ["sh", "/app/entrypoint.sh"]
