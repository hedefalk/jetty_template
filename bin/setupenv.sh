export APP_HOME=/home/test.4bodyandmind
export JETTY_HOME=/home/jettys/jetty-distribution-8.1.9.v20130131
export PORT=8088
export JMX_PORT=9000
export JAVA_OPTIONS="-Xms128m -Xmx512m -Djetty.port=$PORT -XX:MaxPermSize=256M"
export JAVA_OPTIONS="$JAVA_OPTIONS -Drun.mode=test -Djetty.logs=$APP_HOME/logs -Dapp.home=$APP_HOME"
export PID_FILE=$APP_HOME/server.pid

#JMX: http://braintwitter.blogspot.se/2011/10/accessing-jmx-remotely-via-visualvm.html
#export JAVA_OPTIONS="$JAVA_OPTIONS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.port=$JMX_PORT -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.authenticate=false"

echo "JAVA_OPTIONS: $JAVA_OPTIONS"


