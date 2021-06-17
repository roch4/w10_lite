# w10_lite
This script remove some defaults apps and stop some unnecessary services. All in background. 

This makes Windows more lite.

## Remove Apps
First, the script remove some apps defaults of Windows 10, like Bing News, Camera, Alarms etc.

This remotion is valid for current User. If do you like this for all users, is necessary to use the parameter <b>-AllUser</b> in the <b>appf</b> Function.

## Stop Services
The second step is Stop Services. Now, the script stop some unnecessary services, like Themes and different types of notifications. At the end, the services that have been stopped are displayed.

<b>IMPORTANT:</b>
* The configuration of Stop Services is reset if restart the machine. Being necessary start this service when start the machine. A option for this, is add a script of Stop Services in Windows Initialization Configs.
* There are the Stop Services for <b>Windows Update</b> and <b>Windows Search</b>, but in this services, the Windows start forcibly in a few minutes.

## More Information
Is recommended start run as admin mode.

# Author
Matheus Rocha

Brazil

https://www.linkedin.com/in/roch4/
