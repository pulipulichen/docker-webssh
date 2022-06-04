FROM python:3.8-bullseye

RUN pip install webssh

RUN mkdir -p /app
EXPOSE 8888
#CMD ["wssh"]
CMD ["bash", "/app/init.sh"]
ENV DEBIAN_FRONTEND=noninteractive

#WORKDIR /tmp
#RUN wget https://www.marksimonson.com/assets/content/fonts/AnonymousPro-1_002.zip
#RUN unzip AnonymousPro-1_002.zip
#RUN mv AnonymousPro-1.002.001/* /usr/local/lib/python3.8/site-packages/webssh/static/css/fonts/

#RUN cp /usr/share/fonts/truetype/dejavu/DejaVuSerif.ttf /usr/local/lib/python3.8/site-packages/webssh/static/css/fonts/

# RUN apt-get update
# #RUN apt-get install -y \
# #    fonts-noto-cjk locales
# RUN apt-get install -y locales

# RUN sed -ie 's/# zh_TW.UTF-8 UTF-8/zh_TW.UTF-8 UTF-8/g' /etc/locale.gen
# RUN sed -ie 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g' /etc/locale.gen
# RUN locale-gen zh_TW.UTF-8 zh_CN.UTF-8
# ENV LC_ALL=zh_TW.UTF-8
# ENV LANG=zh_TW.UTF-8

# ENV LANG=zh_TW.UTF-8

#COPY scripts/ssh_config /etc/ssh/
COPY scripts/init.sh /app/
COPY webssh /usr/local/lib/python3.8/site-packages/webssh

WORKDIR /usr/local/lib/python3.8/site-packages/webssh
