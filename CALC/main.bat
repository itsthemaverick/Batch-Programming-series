@echo off
setlocal

:menu
echo -------------------------
echo CALCULATOR
echo -------------------------
echo 1. ADD
echo 2. SUBTRACT
echo 3. MULTIPLY
echo 4. DIVIDE
echo 5. EXIT

set /p "choice=Choose: "

if "%choice%"=="1" call :add
if "%choice%"=="2" call :subtract
if "%choice%"=="3" call :multiply
if "%choice%"=="4" call :divide
if "%choice%"=="5" exit /b 0

if not "%choice%"=="1" if not "%choice%"=="2" if not "%choice%"=="3" if not "%choice%"=="4" if not "%choice%"=="5" echo Invalid choice.
goto menu

:add
set /p "a=Enter first integer: "
set /p "b=Enter second integer: "
set /a "result=a+b"
echo Result = %result%
pause
exit /b

:subtract
set /p "a=Enter first integer: "
set /p "b=Enter second integer: "
set /a "result=a-b"
echo Result = %result%
pause
exit /b

:multiply
set /p "a=Enter first integer: "
set /p "b=Enter second integer: "
set /a "result=a*b"
echo Result = %result%
pause
exit /b

:divide
set /p "a=Enter first integer: "
set /p "b=Enter second integer: "
if "%b%"=="0" (
	echo Cannot divide by zero.
	pause
	exit /b
)
set /a "result=a/b"
echo Result = %result%
pause
exit /b

