FROM python:3.11
LABEL maintainer 'Hugo Kuribayashi <hkuribayashi at gmail.com>'

RUN pip install flask

COPY src app
workdir /app

ENTRYPOINT ["/usr/local/bin/python"]

CMD ["main.py"]
