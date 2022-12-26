#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3e351ccc-bf56-4b80-8278-cbedc5a449d4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

