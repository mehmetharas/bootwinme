@ECHO OFF
path=c:\windows;c:\windows\command
\hibinv.exe
call \checksr.bat
IF "%config%"=="QUICK" GOTO QUICK
set EXPAND=YES
SET DIRCMD=/O:N
set LglDrv=27 * 26 Z 25 Y 24 X 23 W 22 V 21 U 20 T 19 S 18 R 17 Q 16 P 15
set LglDrv=%LglDrv% O 14 N 13 M 12 L 11 K 10 J 9 I 8 H 7 G 6 F 5 E 4 D 3 C
cls
call setramd.bat %LglDrv%
set temp=c:\
set tmp=c:\
path=%RAMD%:\;a:\;%path%;%CDROM%:\
copy command.com %RAMD%:\ > NUL
set comspec=%RAMD%:\command.com
copy extract.exe %RAMD%:\ > NUL
copy readme.txt %RAMD%:\ > NUL

:ERROR
IF EXIST ebd.cab GOTO EXT
echo LÅtfen Windows Millennium Edition Baülangçá Disk 2'yi yerleütirin
echo.
pause
GOTO ERROR

:EXT
%RAMD%:\extract /y /e /l %RAMD%: ebd.cab > NUL
echo Tançlama araálarç %RAMD%l sÅrÅcÅsÅne hatasçz yÅklendi.
echo.

IF "%config%"=="NOCD" GOTO QUIT
IF "%config%"=="HELP" GOTO HELP
LH %ramd%:\MSCDEX.EXE /D:mscd001 /L:%CDROM%
::If MSCDEX doesn't find a drive...
IF ERRORLEVEL 1 SET CDPROB=1
::
GOTO QUIT

:HELP
LH %ramd%:\MSCDEX.EXE /D:mscd001 /L:%CDROM%
::If MSCDEX doesn't find a drive...
IF ERRORLEVEL 1 SET CDPROB=1
cls
call help.bat
::
GOTO QUIT

:QUIT
call fixit.bat
rem clean up environment variables
set CDPROB=
set CDROM=
set LglDrv=
GOTO QUICK

:QUICK
