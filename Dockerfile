FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/nojs/nojs/ /root/packages/nojs/
WORKDIR /root/packages/nojs
RUN pip3 install /root/packages/nojs

CMD ["python3","test/nojs.py"]


