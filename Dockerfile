FROM telegraf:alpine

ENV TELEGRAF_DC="" \
    TELEGRAF_RACK="" \
    TELEGRAF_USER="" \
    TELEGRAF_INTERVAL="10s" \
    TELEGRAF_ROUND_INTERVAL=false \
    TELEGRAF_COLLECTION_JITTER="0s" \
    TELEGRAF_FLUSH_INTERVAL="30s" \
    TELEGRAF_FLUSH_JITTER="0s" \
    INFLUX_DB="telegraf" \
    INFLUX_RP="" \
    INFLUX_ADDRESS="http://127.0.0.1:8086" \
    SNMP_TARGET="" \
    SNMP_COMMUNITY="public"

COPY telegraf.conf /etc/telegraf/