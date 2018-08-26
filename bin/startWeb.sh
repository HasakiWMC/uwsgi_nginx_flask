#!/usr/bin/env bash

bin_path=$(dirname $(readlink -f $0))
nginx_path="$bin_path/../nginx/sbin"
flask_path="$nginx_path/../.."

cd $nginx_path

echo 'start nginx'
#su - flaskmain <<EOF
#
#./nginx -c conf/nginx.conf
#
#exit
#
#EOF
./nginx -c conf/nginx.conf


if [ $? -eq 0 ]; then
    echo 'start nginx success'
else
    echo 'start nginx failed'
fi


cd $flask_path

echo 'start uwsgi'

./venv/bin/uwsgi config.ini

if [ $? != 0 ]; then
    echo 'start uwsgi failed'
fi