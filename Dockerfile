FROM debian:buster
LABEL maintainer="Richard (https://github.com/richardzone)"
EXPOSE 443

RUN mkdir -p /trojan
RUN apt-get update && apt-get install -y trojan/buster-backports

WORKDIR /trojan

COPY . .
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["trojan", "-c", "trojan.json"]
