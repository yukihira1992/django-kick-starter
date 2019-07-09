FROM python:3.6-alpine
ENV PYTHONUNBUFFERED 1
COPY src /src
WORKDIR /src

RUN apk update \
    && apk add --update --no-cache mariadb-connector-c-dev \
    curl \
    && apk add --update --no-cache --virtual .build-dependencies \
    mariadb-dev \
    gcc \
    musl-dev \
    && pip install --upgrade pip \
    && pip install pipenv \
    && pipenv install --system \
    && apk del .build-dependencies \
    && rm -rf /root/.cache

CMD ["sh","-c","/src/bin/entrypoint.sh"]