# teslog
Shell scripts to capture stats from Tesla Backup Gateway - Powerwall, Solar, Grid Info, etc.

## Parameters
* **GW** should be the IP address of your Backup Gateway on your local network. You should be able to find this on your router, etc. by looking at DHCP assignments for a device named "teg"
* **LOGFILE** and **JAR** can be whereever you want to keep your logs and your cookies.txt file (used for storing the authentication token)

## Requirements
I'm running this on a fairly vanilla Raspberry Pi 2 Model B with Raspbian GNU/Linux 10 (buster).

I think *curl* was already installed, but yeah, you'll need that. But that's about it. They're not the most sophisticated of scripts. 

## Credits
**_So_** much credit goes to Vince for his exploration and documentation of the *Tesla Powerwall 2 - Local Gateway API* (https://github.com/vloschiavo/powerwall2/). I wouldn't be anywhere without that.
