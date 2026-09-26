@echo off 

:menu
echo -------------------------
echo CALCULATOR
echo -------------------------

echo 1.ADD
echo 2.SUBSTRACT
echo 3.MULTIPLY
echo 4.DIVIDE
echo 4.EXIT

set /p choice = Choose:

if "%choice%" == "1" call:add
if "%choice%" == "2" call:substract
if "%choice%" == "3" call:multiply
if "%choice%" == "4" call:divide
if "%choice%" == "5" exit

goto menu

rem -----------------------

:add 
set /p a = Enter First Number 
set /p b = Enter Second Number 

set /a result = a+b

echo Result = %result%
pause
exit /b
rem --------------------

:substract 
set /p a = Enter First Number 
set /p b = Enter Second Number 

set /a result = a-b

echo Result = %result%
pause
exit /b

rem --------------------

:multiply 
set /p a = Enter First Number 
set /p b = Enter Second Number 

set /a result = a*b

echo Result = %result%
pause
exit /b
rem -----------------------

:divide 
set /p a = Enter First Number 
set /p b = Enter Second Number 

set /a result = a/b

echo Result = %result%
pause
exit /b

