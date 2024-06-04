FROM debian:bullseye-20240513

RUN mkdir -p /usr/share/fonts/chinese_fonts

COPY SimKai.ttf SimHei.ttf SimSun.ttf /usr/share/fonts/chinese_fonts/

RUN sed -i "s@http://\(deb\|security\).debian.org@http://mirrors.ustc.edu.cn@g" /etc/apt/sources.list

RUN apt clean && apt update && apt install -y vim wget curl ca-certificates libreoffice xfonts-utils

RUN apt clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/archives/*.deb /var/cache/apt/*cache.bin

RUN chmod 644 /usr/share/fonts/chinese_fonts/* \
    && mkfontscale && mkfontdir && fc-cache

RUN useradd --create-home --shell /bin/bash converter \
    && chown converter:converter /usr/bin/libreoffice

USER converter
WORKDIR /home/converter

CMD cat - > input_file \
    && libreoffice --headless --convert-to pdf --outdir $(pwd) input_file \
    && cat input_file.pdf
