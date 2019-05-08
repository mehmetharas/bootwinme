IF "%CDPROB%"=="1" GOTO CDGONE
if "%config%"=="HELP" GOTO HELP
if "%config%"=="NOCD" GOTO NOCDHLP
echo.
echo.
echo CD-ROM sÅrÅcÅnÅz %CDROM%
echo.
echo Yardçm'ç gîrÅntÅlemek iáin, YARDIM yazçp ENTER'a basçn.
GOTO END

:NOCDHLP
echo.
echo.
echo Yardçm'ç gîrÅntÅlemek iáin, YARDIM yazçp ENTER'a basçn.
GOTO END

:HELP
echo. 
echo. 
echo Bilgisayarçnçzç yeniden baülatmak iáin, CTRL+ALT+DELETE'e basçn.
echo. 
echo. 
echo CD-ROM sÅrÅcÅnÅz %CDROM%
echo. 
echo Windows'u baülatamçyorsançz ve Yardçm dosyasçnda sçralanan
echo adçmlarç denediyseniz lÅtfen ScanDisk'i áalçütçrçp Windows
echo Kur'u yeniden yapmayç deneyin. ScanDisk'i áalçütçrmak iáin:

echo Windows'u baülatamçyorsançz ve Yardçm dosyasçnda îzetlenen
echo adçmlarç denediyseniz lÅtfen ScanDisk'i áalçütçrçp sonra da
echo Windows Kur'u yeniden áalçütçrmayç deneyin. ScanDisk iáin
echo.      
echo     scandisk /all
echo. 
echo yazçp ENTER'a basçn.
echo. 
echo ScanDisk tamamlandçktan sonra 
echo. 
echo     %CDROM%:\kur.exe
echo. 
echo yazçp ENTER'a basçn. Ekrandaki adçmlarç izleyin.
echo.
echo Yardçm'ç yeniden gîrÅntÅlemek iáin YARDIM yazçp ENTER'a basçn.
GOTO END

:CDGONE
echo.
echo.
echo Bilgisayarçnçzç yeniden baülatmak iáin, CTRL+ALT+DELETE'e basçn.
echo.
echo CD-ROM'unuzda bir sorun olabilir. Doßru baßlandçßçndan
echo emin olun ve bilgisayarçnçzç yeniden baülatçn.
echo. 
echo Yardçm'ç gîrÅntÅlemek veya yeniden gîrÅntÅlemek iáin
echo YARDIM yazçp ENTER'a basçn.

:ENFD
