FROM paddlepaddle/paddle:2.4.1

LABEL maintainer="geoyee@yeah.net"

RUN mkdir /usr/src/gdal
WORKDIR /usr/src/gdal
ADD . /usr/src/gdal

RUN pip install GDAL-3.4.1-cp37-cp37m-manylinux_2_5_x86_64.manylinux1_x86_64.whl

WORKDIR /
RUN rm -rf /usr/src/gdal
