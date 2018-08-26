#!/usr/bin/env bash
bin_path=$(dirname $(readlink -f $0))
cd $bin_path

chown flaskmain:flask startWeb.sh

setcap cap_net_bind_service=+ep /usr1/pyProject/myFlask/nginx/sbin/nginx


echo `pwd`

su - flaskmain -c "bash /usr1/pyProject/myFlask/bin/startWeb.sh"