@echo off

:: Replace 'WEBHOOK_URL' with your actual webhook URL
set "webhookURL=https://discord.com/api/webhooks/1140481320913469520/CyUswAfj2t3IIwU9xvHNkMoKXP2redQx2Lz7XtQjKTKcSaY0gIvudfHa2m6HBgh285Kz"

:: Create and write content to batch files
(
    echo @echo off
    echo echo Sending data to webhook...
    echo curl -X POST -H "Content-Type: application/json" -d "{^"content^": ^"This is batch file 1^"}" %webhookURL%
) > batch1.bat

(
    echo @echo off
    echo echo Sending data to webhook...
    echo curl -X POST -H "Content-Type: application/json" -d "{^"content^": ^"This is batch file 2^"}" %webhookURL%
) > batch2.bat

:: Provide instructions to the user
echo Batch files created. Run batch1.bat or batch2.bat.
pause
