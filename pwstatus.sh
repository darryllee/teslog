GW="192.168.2.51"
API="https://$GW/api"
LOGFILE="/home/pi/workplace/teslog/status.log"

date -Iseconds >> $LOGFILE
curl -c $JAR -b $JAR -s -k "$API/status" >> $LOGFILE
echo >> $LOGFILE
