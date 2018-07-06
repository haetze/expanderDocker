#Download base image ubuntu 16.04
From ubuntu:16.04


WORKDIR /rohugs/src

ADD ./ohexp /rohugs

RUN apt-get update
RUN apt-get -y install bison
RUN apt-get -y install libreadline6-dev
RUN apt-get -y install libncurses-dev
RUN apt-get -y install Tk8.4-dev
RUN apt-get -y install tcl8.4-dev
RUN make all


CMD ["../rohugs", "Ecom.hs"]
#CMD ["ls"]

