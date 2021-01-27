# docker-trojan
Trojan in a docker

Usage: `docker run --name trojan -d -p 443:443 -v /etc/letsencrypt/live/YOUR_DOMAIN:/cert -e CERT_PATH=/cert/fullchaim.pem -e KEY_PATH=/cert/privkey.pem -e PASSWORD=YOUR_PASSWORD richardzone/trojan`
