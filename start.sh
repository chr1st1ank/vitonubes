#!/usr/bin/bash
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
set -x

cd "$SCRIPT_DIR"
source .env || echo "Export the necessary environment variables in .env!"

~/.local/bin/open3e --can can0 \
--read 268,269,271,274,284,318,320,321,322,324,325,355,381,389,391,396,401,424,475,543,880,901,902,987,1043,1100,1101,1102,1415,1643,1731,1769,1770,1771,1772,1775,1776,2256,2333,2334,2346,2350,2351,2352,2369,2370,2487,2488,2496,2543,2544,2545,2560,2569,2735,2791,2792,2855,3016,0x68c.2256,0x6cf.2442 \
--timestep 30 \
--mqtt $MQTT_HOST:${MQTT_PORT:-1883}:${MQTT_TOPIC:-open3e} \
--mqttuser $MQTT_USER:$MQTT_PASSWORD \
--mqttformatstring {ecuAddr:03X}_{didNumber}_{didName} \
--listen ${MQTT_TOPIC:-open3e}/cmnd \
--verbose 
# --config open3e_config/Open3Edatapoints.json \
#--config devices.json
