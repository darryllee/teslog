# teslog
Shell scripts to capture stats from Tesla Backup Gateway - Powerwall, Solar, Grid Info, etc.

## Parameters
* **GW** should be the IP address of your Backup Gateway on your local network. You should be able to find this on your router, etc. by looking at DHCP assignments for a device named "teg"
* **LOGFILE** and **JAR** can be whereever you want to keep your logs and your cookies.txt file (used for storing the authentication token)
* **EMAIL** and **PASSWORD** are whatever you've set those to _on your gateway_. They are **_NOT_** the same as your Tesla (website/app) email/password unless you've made them the same. (You probably shouldn't use the same password.)

## Running
Well, these are shell scripts. So after you've saved a script to a system, and modified the parameters you can "run" it by typing "sh pwstatus.sh". Or you could make the file executable by doing "chmod 755 pwstatus.sh" and then you can run "./pwstatus.sh"

But you probably want it to run on a schedule. For that you can use something called crontab. This is a good tutorial: https://www.howtogeek.com/101288/how-to-schedule-tasks-on-linux-an-introduction-to-crontab-files/

And here's my crontab entries:
```
*/5 * * * * /home/pi/workplace/teslog/pwstatus.sh
*/5 * * * * /home/pi/workplace/teslog/pwmorestats.sh
```

## Requirements
I'm running this on a fairly vanilla Raspberry Pi 2 Model B with Raspbian GNU/Linux 10 (buster).

I think *curl* was already installed, but yeah, you'll need that. But that's about it. They're not the most sophisticated of scripts. 

## Credits
**_So_** much credit goes to Vince for his exploration and documentation of the *Tesla Powerwall 2 - Local Gateway API* (https://github.com/vloschiavo/powerwall2/). I wouldn't be anywhere without that.
