FROM python:3.6
ENV PYTHONUNBUFFERED 1
ADD ./src/ /src/
WORKDIR /src
RUN pip install --upgrade pip && \
    pip install pipenv && \
    pipenv install --system
