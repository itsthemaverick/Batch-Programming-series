@echo off 

:menu
echo -------------------------
echo CALCULATOR
echo -------------------------

echo 1.ADD
echo 1.SUBSTRACT
echo 1.MULTIPLY
echo 1.DIVIDE

set /p choice = Choose:

if "%choice%" == "1" call:add
if "%choice%" == "2" call:substract
if "%choice%" == "3" call:multiply
if "%choice%" == "4" call:divide
if "%choice%" == "5" exit

goto menu

