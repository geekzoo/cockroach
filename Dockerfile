FROM ubuntu:18.04
MAINTAINER <Rex Matthews>
LABEL maintainer="Rex Matthews"
#RUN useradd cockroach
RUN mkdir /cockroach
#RUN chown -v cockroach /cockroach
WORKDIR /cockroach
COPY cockroach-v2.2.0-alpha.20190211.linux-amd64/cockroach /cockroach
COPY cockroach.sh /cockroach
#RUN chown -v cockroach /cockroach/cockroach.sh  
#USER cockroach
ENTRYPOINT ["/cockroach/cockroach.sh"]
CMD ["/bin/sh", "-c", "#(nop)"]
