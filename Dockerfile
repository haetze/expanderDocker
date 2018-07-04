#Download base image ubuntu 16.04
From ubuntu:16.04


WORKDIR /expander/Expander2

ADD ./ohexp/ /expander

RUN apt-get update
RUN apt-get -y install bison
RUN apt-get -y install libreadline6-dev
RUN apt-get -y install libncurses-dev
RUN apt-get -y install Tk8.4-dev
RUN apt-get -y install tcl8.4-dev
RUN cd ../src && make all
RUN cd ../src && cp ./rohugs ../Expander2


CMD ["./rohugs", "Ecom.hs"]
#CMD ["ls"]

