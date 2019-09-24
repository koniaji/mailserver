FROM zvinger/docker-node-alpine:ubuntu

RUN cd /usr/lib/node_modules && git clone https://github.com/haraka/Haraka.git && cd Haraka && rm -rf .git && npm install
RUN cd /usr/lib/node_modules/Haraka && npm install --unsafe-perm srs.js sqlite3 haraka-plugin-geoip haraka-plugin-fcrdns haraka-plugin-asn haraka-plugin-known-senders haraka-plugin-watch ws express maxmind maxmind-geolite-mirror vs-stun

