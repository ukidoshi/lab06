FROM ubuntu:18.04

RUN apt update
RUN apt install -yy gcc g++ cmake

WORKDIR /mandp

COPY . .

RUN mkdir cmake-build

RUN cd cmake-build && cmake ..

RUN cd cmake-build && cmake --build .

