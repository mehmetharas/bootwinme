IF "%CDPROB%"=="1" GOTO CDGONE
if "%config%"=="HELP" GOTO HELP
if "%config%"=="NOCD" GOTO NOCDHLP
echo.
echo.
echo CD-ROM s�r�c�n�z %CDROM%
echo.
echo Yard�m'� g�r�nt�lemek i�in, YARDIM yaz�p ENTER'a bas�n.
GOTO END

:NOCDHLP
echo.
echo.
echo Yard�m'� g�r�nt�lemek i�in, YARDIM yaz�p ENTER'a bas�n.
GOTO END

:HELP
echo. 
echo. 
echo Bilgisayar�n�z� yeniden ba�latmak i�in, CTRL+ALT+DELETE'e bas�n.
echo. 
echo. 
echo CD-ROM s�r�c�n�z %CDROM%
echo. 
echo Windows'u ba�latam�yorsan�z ve Yard�m dosyas�nda s�ralanan
echo ad�mlar� denediyseniz l�tfen ScanDisk'i �al��t�r�p Windows
echo Kur'u yeniden yapmay� deneyin. ScanDisk'i �al��t�rmak i�in:

echo Windows'u ba�latam�yorsan�z ve Yard�m dosyas�nda �zetlenen
echo ad�mlar� denediyseniz l�tfen ScanDisk'i �al��t�r�p sonra da
echo Windows Kur'u yeniden �al��t�rmay� deneyin. ScanDisk i�in
echo.      
echo     scandisk /all
echo. 
echo yaz�p ENTER'a bas�n.
echo. 
echo ScanDisk tamamland�ktan sonra 
echo. 
echo     %CDROM%:\kur.exe
echo. 
echo yaz�p ENTER'a bas�n. Ekrandaki ad�mlar� izleyin.
echo.
echo Yard�m'� yeniden g�r�nt�lemek i�in YARDIM yaz�p ENTER'a bas�n.
GOTO END

:CDGONE
echo.
echo.
echo Bilgisayar�n�z� yeniden ba�latmak i�in, CTRL+ALT+DELETE'e bas�n.
echo.
echo CD-ROM'unuzda bir sorun olabilir. Do�ru ba�land���ndan
echo emin olun ve bilgisayar�n�z� yeniden ba�lat�n.
echo. 
echo Yard�m'� g�r�nt�lemek veya yeniden g�r�nt�lemek i�in
echo YARDIM yaz�p ENTER'a bas�n.

:ENFD
