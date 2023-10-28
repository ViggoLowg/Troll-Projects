@echo off
setlocal enabledelayedexpansion

color a

echo Welcome to Russian Roulette. Guess a number between 1 and 5.

:menu
echo Do you want to play or test the game?
set /p playOrTest="Enter 'play', 'test', or 'exit': "

if /i "%playOrTest%"=="play" (
    goto askGuessPlay
) else if /i "%playOrTest%"=="test" (
    goto askGuess
) else if /i "%playOrTest%"=="exit" (
    goto showSocialMedia
) else (
    echo Invalid choice. Please enter 'play', 'test', or 'exit'.
    goto menu
)

:askGuess
cls
set /a "randomNumber=!random! %% 5 + 1"
echo Guess a number between 1 and 5.
set /p userGuess="Your guess: "

if "%userGuess%"=="%randomNumber%" (
    echo Congratulations! You guessed correctly. The computer will not restart this time.
    goto showSocialMedia
) else (
    echo Sorry, you guessed wrong. A new random number has been generated. Try again.
    timeout /t 2 > nul
    goto askGuess
)

:askGuessPlay
cls
set /a "randomNumber=!random! %% 5 + 1"
echo Guess a number between 1 and 5.
set /p userGuess="Your guess: "

if "%userGuess%"=="%randomNumber%" (
    echo Congratulations! You guessed correctly. The computer will restart in 15 seconds.
    shutdown /r /t 15 /f
) else (
    echo Sorry, you guessed wrong. A new random number has been generated. Try again.
    timeout /t 2 > nul
    goto askGuessPlay
)

:showSocialMedia
echo Thank you for playing @viggolowgren
echo You can also find me on Discord @viggolowgren
echo You can also find me on Instagram: @viggolowgren

:menuEnd
echo.
echo What would you like to do now?
echo 1. Play again
echo 2. Test again
echo 3. Exit
set /p choice="Enter the number of your choice: "
if "%choice%"=="1" (
    goto askGuessPlay
) else if "%choice%"=="2" (
    goto askGuess
) else if "%choice%"=="3" (
    exit
) else (
    echo Invalid choice. Please enter 1, 2, or 3.
    goto menuEnd
)
