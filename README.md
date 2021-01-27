# docker-trojan
Trojan in a docker

Usage: `docker run --name trojan -d -p 443:443 -v /etc/letsencrypt:/cert -e CERT_PATH=/cert/live/YOUR_DOMAIN/fullchain.pem -e KEY_PATH=/cert/live/sYOUR_DOMAIN/privkey.pem -e PASSWORD=YOUR_PASSWORD richardzone/trojan`
