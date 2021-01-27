FROM ubuntu:rolling
LABEL maintainer="Richard (https://github.com/richardzone)"
EXPOSE 443

RUN mkdir -p /trojan
RUN apt-get update && apt-get install -y trojan

WORKDIR /trojan

COPY . .
ENTRYPOINT ["/trojan/docker-entrypoint.sh"]

CMD ["trojan", "-c", "/trojan/trojan.json"]
