<#
This script remove some defaults apps and stop some unnecessary services. All in background. More informations in: README.
* start as admin mode *

Author: Matheus Rocha
Country: Brazil
GitHub: /roch4
LinkedIn: /roch4
#>

#Remove Apps:
function appf{
    Get-AppxPackage $app | Remove-AppxPackage -ErrorAction SilentlyContinue #Error Silent for if don't have an app
}

$app = 1

while ($app -ne 0){ #-ne is different
    $app = "*BingFinance*"; appf;
    $app = "*BingNews*"; appf;
    $app = "*BingSports*"; appf;
    $app = "*BingWeather*"; appf;
    $app = "*Getstarted*"; appf;
    $app = "*MicrosoftOfficeHub*"; appf;
    $app = "*MicrosoftSolitaireCollection*"; appf;
    $app = "*Office.OneNote*"; appf;
    $app = "*OfficeHub*"; appf;
    $app = "*People*"; appf;
    $app = "*SolitaireCollection*"; appf;
    $app = "*SkypeApp*"; appf;
    $app = "*Windows.Photos*"; appf;
    $app = "*WindowsAlarms*"; appf;
    $app = "*WindowsCamera*"; appf;
    $app = "*windowscommunicationsapps*"; appf;
    $app = "*WindowsMaps*"; appf;
    $app = "*WindowsPhone*"; appf;
    $app = "*WindowsSoundRecorder*"; appf;
    $app = "*WindowsStore*"; appf;
    $app = "*XboxApp*"; appf;
    $app = "*ZuneMusic*"; appf;
    $app = "*ZuneVideo*"; appf;
    $app = "*3DBuilder*"; appf;
    #$app = "*WindowsCalculator*"; appf;
    $app = "Microsoft.549981C3F5F10"; appf; #Cortana

    $app = 0 #stop
}
#END Remove Apps


#Stop Services (important note in README):
Stop-Service wuauserv ,  #Windows Update
    WSearch , #Windows Search
    Themes , #Themes
    SENS , #Events Notification
    WpnService , #System Notification
    *WpnUserService* , #User Notification (your 'Name' changes)
    PrintNotify -Force; #Printer Notification. All in Force.
#END Stop Services


#View Status Services:
function svcf{
    Get-Service | Where-Object {$_.Name -like $svc}
}

$svc = 1

while ($svc -ne 0){
    $svc = "wuauserv"; svcf;
    $svc = "WSearch"; svcf;
    $svc = "Themes"; svcf;
    $svc = "SENS"; svcf;
    $svc = "WpnService"; svcf;
    $svc = "*WpnUserService*"; svcf;
    $svc = "PrintNotify"; svcf;

    $svc = 0 #stop
}
#END View Status Services