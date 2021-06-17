#! /bin/bash
#
# Pull both German translations, and compare them.
# (C) 2021 jw@owncloud.com, distribute under GPLv2
#
# Requires: 
# 	- apt install transifex-client
# 	- access to https://www.transifex.com/owncloud-org/owncloud/
# 
# 2021-06-16 v0.1  initial draught
#

resources="owncloud.client owncloud.client-desktop"

mkconfig()
{
  config="[main]
host = https://www.transifex.com

[$1]
source_lang = en
trans.de_DE = trans.de_DE
trans.de = trans.de
"
  echo "$config" > .tx/config
}

for res in $resources; do
  mkdir -p $res/.tx
  cd $res
  test -e .tx/config || mkconfig $res
  tx pull -r $res -f
  cd ..
done
