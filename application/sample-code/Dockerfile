FROM python:3.8-alpine

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

RUN apk update && apk add curl

WORKDIR /app

COPY check.sh /tmp
RUN chmod +x /tmp/check.sh

COPY . .

RUN pip install --editable .


RUN flask init-db

EXPOSE 5000

CMD [ "flask", "run", "--host=0.0.0.0" ]



