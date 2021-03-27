FROM python:3.8.5-alpine
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

RUN mkdir /app
COPY . /app
WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY entrypoint.sh /
ENTRYPOINT [ "sh", "entrypoint.sh" ]

