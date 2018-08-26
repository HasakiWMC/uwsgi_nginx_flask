
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	../../../myFlask/nginx//sbin/nginx -t

	kill -USR2 `cat ../../../myFlask/nginx//logs/nginx.pid`
	sleep 1
	test -f ../../../myFlask/nginx//logs/nginx.pid.oldbin

	kill -QUIT `cat ../../../myFlask/nginx//logs/nginx.pid.oldbin`
