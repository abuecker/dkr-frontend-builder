FROM ubuntu:xenial

ENV DISPLAY=:99
ENV NPM_CONFIG_LOGLEVEL=info
ENV PATH /opt/node-v6.11.2-linux-x64/bin:$PATH

ADD https://dl-ssl.google.com/linux/linux_signing_key.pub /tmp/linux_signing_key.pub
RUN apt-key add /tmp/linux_signing_key.pub && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable firefox xvfb python python-pip openjdk-8-jre

ADD https://nodejs.org/dist/v6.11.2/node-v6.11.2-linux-x64.tar.xz /opt

RUN rm -rf /tmp/* && apt-get clean
