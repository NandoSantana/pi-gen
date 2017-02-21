FROM debian:jessie

RUN apt-get -y update && \
    apt-get -y install \
        git vim parted \
        quilt realpath qemu-user-static debootstrap zerofree pxz zip dosfstools \
        bsdtar libcap2-bin rsync grep \
    && rm -rf /var/lib/apt/lists/*

ADD https://github.com/multiarch/qemu-user-static/releases/download/v2.8.0/x86_64_qemu-arm-static.tar.gz /usr/bin

COPY . /pi-gen/

VOLUME [ "/pi-gen/work", "/pi-gen/deploy"]
