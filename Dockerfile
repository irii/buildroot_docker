FROM ubuntu:26.04

RUN apt-get update && apt-get install -y \
                          build-essential \
                          bash \
                          bc \
                          binutils \
                          bzip2 \
                          cpio \
                          diffutils \
                          file \
                          findutils \
                          g++ \
                          gcc \
                          git \
                          gzip \
                          libncurses-dev \
                          make \
                          patch \
                          perl \
                          python3 \
                          rsync \
                          sed \
                          tar \
                          unzip \
                          wget \
                          which


RUN useradd -ms /bin/bash builder
USER builder

WORKDIR /home/builder
RUN git clone https://gitlab.com/buildroot.org/buildroot.git -b 2026.08
WORKDIR /home/builder/buildroot
