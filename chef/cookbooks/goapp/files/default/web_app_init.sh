#!/bin/bash
### BEGIN INIT INFO
# Provides: web_app daemon
# Required-Start:  None
# Required-Stop: None
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# chkconfig: 345 20 80
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# description: web_app daemon
# processname: web_app
### END INIT INFO

APP=myapp
DAEMON=web_app
PIDFILE=/var/run/$APP.pid
USER=gouser

case "$1" in
start)
    printf "%-50s" "Starting $APP..."
    start-stop-daemon --start --quiet -m -b -v -u $USER --pidfile $PIDFILE --exec  /opt/goapp/web_app
	if [ -f $PIDFILE  ]; then
	 echo "Application Launched successfully"
	else
	  echo "Application Failed to launch"
    fi
;;
status)
        printf "%-50s" "Checking $APP..."
        if [ -f $PIDFILE ]; then
            PID=`cat $PIDFILE`
            if [ -z "`ps axf | grep ${PID} | grep -v grep`" ]; then
                printf "%s\n" "Process dead but pidfile exists"
            else
                echo "Running"
            fi
        else
            printf "%s\n" "Service not running"
        fi
;;
stop)
        printf "%-50s" "Stopping $APP"
        start-stop-daemon --stop --pidfile $PIDFILE
;;
restart)
  	$0 stop
  	$0 start
;;
*)
        echo "Usage: $0 {status|start|stop|restart}"
        exit 1
esac
