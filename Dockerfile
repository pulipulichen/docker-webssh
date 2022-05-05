FROM python:3.8-bullseye

RUN pip install webssh

RUN mkdir -p /app
COPY scripts/init.sh /app/

EXPOSE 8888
#CMD ["wssh"]
CMD ["bash", "/app/init.sh"]

RUN apt-get update
RUN apt-get install -y nano wget curl
