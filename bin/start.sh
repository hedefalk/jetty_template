#!/bin/bash
. ./setupenv.sh

cd $JETTY_HOME
JETTY_CONFIGS="OPTIONS=Server,jmx,resources,ext,plus $JETTY_HOME/etc/jetty-jmx.xml $JETTY_HOME/etc/jetty.xml $JETTY_HOME/etc/jetty-deploy.xml $APP_HOME/etc/jetty-contexts.xml"
java $JAVA_OPTIONS -jar start.jar $JETTY_CONFIGS >& $APP_HOME/logs/start.log &
echo $! > $PID_FILE
echo "The PID is $!"

