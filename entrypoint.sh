#!/bin/bash

echo "PWD: `pwd`"
python3 -V

echo "KToolBox: `ktoolbox version`"
echo "User: `id -u`:`id -g`"
echo


if [[ $KEMONO_CREATOR_URL =~ ^(https?:\/\/)?kemono.(su|party)\/(.+)$ ]]; then
  ktoolbox sync-creator $KEMONO_CREATOR_URL -p output 
else
  echo "Error: Wrong url: $KEMONO_CREATOR_URL" >> output/a.txt
fi

chown -R $PUID:$PGID output