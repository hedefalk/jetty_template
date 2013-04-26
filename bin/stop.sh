. ./setupenv.sh
echo "Ending the server process, hard"
echo "PID_FILE: $PID_FILE"
PID=$(cat $PID_FILE)
echo "PID was $PID"
kill -9 $PID
rm $PID_FILE

