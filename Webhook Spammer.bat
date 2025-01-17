@echo off
chcp 65001
title Made By Wock
color 2
:menu
cls

echo ██╗    ██╗███████╗██████╗ ██╗  ██╗ ██████╗  ██████╗ ██╗  ██╗     ███████╗██████╗  █████╗ ███╗   ███╗███╗   ███╗███████╗██████╗          
echo ██║    ██║██╔════╝██╔══██╗██║  ██║██╔═══██╗██╔═══██╗██║ ██╔╝     ██╔════╝██╔══██╗██╔══██╗████╗ ████║████╗ ████║██╔════╝██╔══██╗         
echo ██║ █╗ ██║█████╗  ██████╔╝███████║██║   ██║██║   ██║█████╔╝█████╗███████╗██████╔╝███████║██╔████╔██║██╔████╔██║█████╗  ██████╔╝         
echo ██║███╗██║██╔══╝  ██╔══██╗██╔══██║██║   ██║██║   ██║██╔═██╗╚════╝╚════██║██╔═══╝ ██╔══██║██║╚██╔╝██║██║╚██╔╝██║██╔══╝  ██╔══██╗         
echo ╚███╔███╔╝███████╗██████╔╝██║  ██║╚██████╔╝╚██████╔╝██║  ██╗     ███████║██║     ██║  ██║██║ ╚═╝ ██║██║ ╚═╝ ██║███████╗██║  ██║██╗██╗██╗
echo  ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝     ╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝╚═╝         
echo                                            ________________________________________

echo                                                         q. = Exit 
                                         
echo                                                   !spam. = Webhook Spammer                                        
echo                                            ________________________________________

set /p choice=Enter Your Choice:

if "%choice%"=="q" goto :eof
if "%choice%"=="!spam" goto webhookspammer
goto menu

:webhookspammer
cls
echo ____________________________________
echo 0        WEBHOOK SPAMMER            0
echo 0___________________________________0
set /p "webhook=│ Enter Discord webhook URL for Webhook Spmmer: "
set /p "message=│ Enter the message to send: "
set /p "num_times=│ Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    :: Send message to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
)
echo Messages sent successfully.
pause
goto menu