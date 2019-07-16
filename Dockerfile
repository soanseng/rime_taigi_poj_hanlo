# Dockerfile
# 用來起造librime kap POJ輸入測驗環境（rime_api_console, Python Behave）

FROM ubuntu:18.04
MAINTAINER Hê-bí

RUN apt-get update
RUN apt-get install -y apt-utils

RUN apt-get install -y \
cmake \
libboost-dev \
libboost-filesystem-dev libboost-regex-dev libboost-system-dev libboost-locale-dev \
libgoogle-glog-dev \
libgtest-dev \
libyaml-cpp-dev \
libleveldb-dev \
libmarisa-dev

RUN apt-get install -y git

# Manually install libopencc
RUN git clone https://github.com/BYVoid/OpenCC.git
WORKDIR OpenCC/
RUN apt-get install -y doxygen
RUN make
RUN make install

# Fix libgtest problem during compiling
WORKDIR /usr/src/gtest
RUN cmake CMakeLists.txt
RUN make
#copy or symlink libgtest.a and libgtest_main.a to your /usr/lib folder
RUN cp *.a /usr/lib

# Build librime
WORKDIR /
RUN git clone https://github.com/rime/librime.git
WORKDIR librime/
RUN make
RUN make install

# Install Python Behave
RUN apt-get install curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py
RUN pip install behave

# Get Taigi IME for Rime
WORKDIR /
RUN git clone https://github.com/i3thuan5/rime_taigi_poj_hanlo.git
WORKDIR /rime_taigi_poj_hanlo/taigi_pojhanlo_sujiphoat/
