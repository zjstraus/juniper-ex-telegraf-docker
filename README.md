# juniper-ex-telegraf-docker

This is a convenience container image to poll Juniper EX switches over SNMPv2 from telegraf. 

# Configuration
The telegraf configuration for the image pulls from environment variables.

| telegraf.conf name  | envvar | default value |
| ------------- | ------------- | ----- |
| global\_tags > dc  | TELEGRAF_DC  |  |
| global\_tags > rack  | TELEGRAF_RACK  |  |
| global\_tags > user | TELEGRAF\_USER | |
| agent > interval | TELEGRAF\_INTERVAL | 10s |
| agent > round_interval | TELEGRAF\_ROUND\_INTERVAL | false |
| agent > collection_jitter | TELEGRAF\_COLLECTION\_JITTER | 0s |
| agent > flush_interval | TELEGRAF\_FLUSH\_INTERVAL | 30s |
| agent > flush_jitter | TELEGRAF\_FLUSH\_JITTER | 0s |
| outputs.influxdb > database | INFLUX\_DB | telegraf |
| outputs.influxdb > retention_policy | INFLUX\_RP | |
| outputs.influxdb > urls | INFLUX\_ADDRESS | http://127.0.0.1:8086 |
| inputs.snmp > agents | SNMP\_TARGET | |
| inputs.snmp > community | SNMP\_COMMUNITY | public |

