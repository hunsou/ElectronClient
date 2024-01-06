@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F "skip=1 tokens=1-6" %%A IN ('WMIC ^Path Win32_LocalTime Get Day^,Hour^,Minute^,Month^,Second^,Year /Format:table') DO (
    IF %%A GTR 0 (
	SET Day=%%A
	SET Hour=%%B
	SET Min=%%C
	SET Month=%%D
	SET Sec=%%E
	SET Year=%%F
    )
)

if %Month% LSS 10 set Month=0%Month%
if %Day% LSS 10 set Day=0%Day%
if %Hour% LSS 10 set Hour=0%Hour%
if %Min% LSS 10 set Min=0%Min%
if %Sec% LSS 10 set Sec=0%Sec%

set now=%year%-%month%-%day% %hour%:%min%:%sec%
set now=%now%
::git rm -r --cached .
git pull
git add .
rem git commit -s -m "%date:~6,4%-%date:~0,2%-%date:~3,2% %time:~0,8%"
git commit -s -m "%now%"
::git tag -a v1.1.7 -m ""
rem git push origin master --tags
:gitpush
git push origin development
IF ERRORLEVEL 1 goto gitpush
if %errorlevel%==1 goto gitpush