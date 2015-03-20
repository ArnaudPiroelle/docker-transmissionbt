FROM arnaudpiroelle/base
MAINTAINER Arnaud Piroelle "piroelle.arnaud@gmail.com"

RUN apt-get update && apt-get install -y transmission-daemon

COPY asset/settings.json /tmp/settings.json
COPY entrypoint.sh 		 /opt/entrypoint.sh

EXPOSE 9091

ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["transmission-daemon", "-f", "--config-dir", "/transmission/config"]