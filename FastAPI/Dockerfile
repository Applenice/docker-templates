FROM python:3.9.19-bullseye

RUN sed -i "s@http://\(deb\|security\).debian.org@https://mirrors.aliyun.com@g" /etc/apt/sources.list 

RUN apt clean && apt update && apt install vim -y

RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/

RUN pip install fastapi uvicorn
