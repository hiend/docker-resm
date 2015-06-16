FROM correl/erlang:R16

MAINTAINER Dmitry Averbakh <adm@ruhub.com>

ADD https://github.com/hiend/resm/releases/download/1.0.0/resm_1.0.0_amd64.deb /tmp/resm_1.0.0_amd64.deb
ADD run.sh ./

RUN apt-get update && apt-get install -y erlang-base
RUN dpkg -i /tmp/resm_1.0.0_amd64.deb

EXPOSE 8008

CMD sh run.sh