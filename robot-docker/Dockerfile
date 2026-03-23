FROM python:3.8.16-alpine3.17

RUN apk add --no-cache chromium chromium-chromedriver bash build-base openssl-dev libffi-dev git

COPY ./requirements.txt /requirements.txt
RUN python3 -m pip install -r /requirements.txt

COPY ui_tests /opt/ui_tests

VOLUME /opt
WORKDIR /opt