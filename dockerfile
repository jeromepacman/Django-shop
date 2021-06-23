FROM python:3.9

ENV PATH="/scripts:${PATH}"

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
COPY ./shop /app
WORKDIR /app
COPY ./scripts /scripts

RUN chmod +x /scripts/*

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/static


CMD ["entrypoint.sh"]
