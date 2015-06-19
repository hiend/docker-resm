FROM correl/erlang:17.1

MAINTAINER Dmitry Averbakh <adm@ruhub.com>

ADD https://github.com/hiend/resm/releases/download/1.0.1/resm_1.0.1_amd64.deb /tmp/resm_1.0.1_amd64.deb
ADD run.sh ./

RUN dpkg -i /tmp/resm_1.0.1_amd64.deb

EXPOSE 8008

CMD sh run.sh
