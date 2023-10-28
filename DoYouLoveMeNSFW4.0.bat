@echo off

color a

:askAgain
echo Hello, do you love me? (Answer with yes/no/secret)
set /p input=

if /i "%input%"=="Yes" (
    start "" "https://www.youtube.com/watch?v=usKSp9yPM2Q&ab_channel=BendytheCommander"   // Open a YouTube link
) else if /i "%input%"=="No" (
    echo You said you don't love me. Opening a website. The computer will shut down in 40 seconds.
    start "" "https://meatspin.com/"   // Opens your secret website!
    shutdown /s /f /t 40   // Shutdown the computer after 40 seconds
) else if /i "%input%"=="Secret" (
    echo Ohh, you found the magic key! You will be redirected to the scary website.
    start "" "https://meatspin.com/"   // Opens your secret website!
) else (
    echo Invalid response. Please answer with yes, no, or secret.
    goto askAgain
)

:showSocialMedia
echo Thank you for playing! You can follow me on Twitter: @viggolowgren
echo You can also find me on Discord @viggolowgren
echo You can also find me on Instagram: @viggolowgren
echo You can also find me on Github: @ViggoLowg
pause
exit
