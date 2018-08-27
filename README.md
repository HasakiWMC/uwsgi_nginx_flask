# uwsgi_nginx_flask
nginx-1.14.0依赖安装：
openssl-1.0.2o
pcre-8.42
zlib-1.2.11

https://blog.csdn.net/huaishuming/article/details/54345826
./configure --prefix=../nginx/ --with-openssl=../openssl-1.0.2o --with-pcre=../pcre-8.42 --with-zlib=../zlib-1.2.11
make & make install