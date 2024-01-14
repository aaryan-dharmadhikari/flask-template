FROM python:3.11-alpine

WORKDIR /app
COPY . /app

RUN pip3 install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]