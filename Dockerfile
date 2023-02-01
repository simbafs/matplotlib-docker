 FROM python:3.6-alpine
 RUN apk add g++ jpeg-dev zlib-dev libjpeg make
 RUN pip3 install matplotlib
 VOLUME /app
 WORKDIR /app
 CMD python /app/main.py
