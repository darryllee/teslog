GW="192.168.2.51"
API="https://$GW/api"
LOGFILE="/home/pi/workplace/teslog/all.log"
JAR="/home/pi/workplace/teslog/cookies.txt"
EMAIL="YOUREMAIL"
PASSWORD="YOURPASSWORD"

date -Iseconds >> $LOGFILE
curl -c $JAR -b $JAR -s -k -X POST "$API/login/Basic" -H "Content-Type: application/json" -d '{"username":"customer","password":"$PASSWORD","email":"$EMAIL"}' > /dev/null
curl -c $JAR -b $JAR -s -k "$API/sitemaster" >> $LOGFILE
echo >> $LOGFILE
curl -c $JAR -b $JAR -s -k "$API/system_status/soe" >> $LOGFILE
echo >> $LOGFILE
curl -c $JAR -b $JAR -s -k "$API/meters/aggregates" >> $LOGFILE
echo >> $LOGFILE
