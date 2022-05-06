FROM python:3.8-bullseye

RUN pip install webssh

RUN mkdir -p /app
EXPOSE 8888
#CMD ["wssh"]
CMD ["bash", "/app/init.sh"]

COPY webssh /usr/local/lib/python3.8/site-packages/webssh
COPY scripts/init.sh /app/
