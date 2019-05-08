@echo off
set RAMD=
set CDROM=

echo.
echo Bilgisayarnz baŸlatlmaya hazrlanyor.
echo Bu iŸlem birka‡ dakika srebilir. Ltfen bekleyin...
echo.

a:\findramd

if errorlevel 255 goto no_ramdrive

if not errorlevel 3 goto no_ramdrive

goto do_shift

:loop
if errorlevel %1 goto no_shift

:do_shift
set cdrom=%2
shift
shift
if not %1*==* goto loop
goto no_ramdrive

:no_shift
set ramd=%2

if "%RAMD%"=="C" goto c_drive

goto success

:c_drive
echo Windows Millennium Edition, C srcsnn ge‡erli bir FAT veya FAT32
echo b”lmlemesi i‡ermedi§ini alglad. Bunun ‡eŸitli nedenleri olabilir.
echo.
echo 1.  Srcnn b”lmlenmesi gerekebilir. Srcde b”lm oluŸturmak i‡in
echo MS-DOS komut isteminden FDISK'i ‡alŸtrn.
echo.
echo 2.  š‡nc parti disk b”lmleme yazlmlar kullanyor olabilirsiniz.
echo Bu tr yazlm kullanyorsanz Kurtarma disketini ‡karp bilgisayarnz
echo yeniden baŸlatn. Bilgisayarnz disketten yeniden baŸlatmak i‡in ekrandaki
echo admlar izleyin.
echo .
echo 3.  Baz virsler de C srcsnn kaydedilmemesine neden olabilir.
echo Bilgisayarnzda virs denetimi yapmak i‡in bir virs tarama program
echo kullanabilirsiniz.
echo.
goto success

:no_ramdrive
echo Windows Millennium Edition baŸlang‡ disketi, tan ara‡lar i‡in ge‡ici
echo bir src oluŸturamad. Bunun nedeni bu bilgisayarn gerekli en dŸk
echo uzatlmŸ bellek miktarndan daha azna sahip olmas olabilir.
echo.
:success
