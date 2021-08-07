GW="192.168.2.51"
API="https://$GW/api"
LOGDIR="/home/pi/workplace/teslog"
JAR="/home/pi/workplace/teslog/cookies.txt"
EMAIL="YOUREMAIL"
PASSWORD="YOURPASSWORD"

curl -c $JAR -b $JAR -s -k -X POST "$API/login/Basic" -H "Content-Type: application/json" -d '{"username":"customer","password":"$PASSWORD","email":"$EMAIL"}' > /dev/null

for x in sitemaster system_status/soe system/update/status meters/aggregates ;
do
LOGFILE=$LOGDIR/`basename $x`.log ;
date -Iseconds >> $LOGFILE ;
curl -c $JAR -b $JAR -s -k "$API/$x" >> $LOGFILE ;
echo >> $LOGFILE ;
done
