@echo off
set RAMD=
set CDROM=

echo.
echo Bilgisayar�n�z ba�lat�lmaya haz�rlan�yor.
echo Bu i�lem birka� dakika s�rebilir. L�tfen bekleyin...
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
echo Windows Millennium Edition, C s�r�c�s�n�n ge�erli bir FAT veya FAT32
echo b�l�mlemesi i�ermedi�ini alg�lad�. Bunun �e�itli nedenleri olabilir.
echo.
echo 1.  S�r�c�n�n b�l�mlenmesi gerekebilir. S�r�c�de b�l�m olu�turmak i�in
echo MS-DOS komut isteminden FDISK'i �al��t�r�n.
echo.
echo 2.  ���nc� parti disk b�l�mleme yaz�l�mlar� kullan�yor olabilirsiniz.
echo Bu t�r yaz�l�m kullan�yorsan�z Kurtarma disketini ��kar�p bilgisayar�n�z
echo yeniden ba�lat�n. Bilgisayar�n�z� disketten yeniden ba�latmak i�in ekrandaki
echo ad�mlar� izleyin.
echo .
echo 3.  Baz� vir�sler de C s�r�c�s�n�n kaydedilmemesine neden olabilir.
echo Bilgisayar�n�zda vir�s denetimi yapmak i�in bir vir�s tarama program�
echo kullanabilirsiniz.
echo.
goto success

:no_ramdrive
echo Windows Millennium Edition ba�lang�� disketi, tan� ara�lar� i�in ge�ici
echo bir s�r�c� olu�turamad�. Bunun nedeni bu bilgisayar�n gerekli en d���k
echo uzat�lm�� bellek miktar�ndan daha az�na sahip olmas� olabilir.
echo.
:success
