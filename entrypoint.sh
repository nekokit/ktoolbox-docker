#!/bin/bash
echo "User: `id -u`:`id -g`"
echo "PWD: `pwd`"
python3 -V
echo "KToolBox: `ktoolbox version`"
echo

if [[ $KEMONO_CREATOR_URL =~ ^(https?:\/\/)?kemono.(su|party)\/(.+)$ ]]; then
  ktoolbox sync-creator $KEMONO_CREATOR_URL -p output 
else
  echo "Error | Wrong url: $KEMONO_CREATOR_URL" >> output/error.log
fi

echo
echo "All Done"
