@ECHO OFF

ebdundo /check
if errorlevel 1 goto Exit

echo.
echo.
echo Sistem Geri Y�kleme, tamamlanan son i�lemin bir geri y�kleme oldu�unu
echo alg�lad�.Bu noktada, devam etmeden �nce Sistem Geri Y�kleme'nin
echo sisteminizde yapt��� de�i�iklikleri geri al�p makineyi yeniden ba�latman�z
echo �nerilir
echo.
echo.
echo  1. Geri Y�kleme'nin sistemimde yapt��� de�i�iklikleri geri al.
echo  2. Geri Y�kleme'nin sistemimde yapt��� de�i�iklikleri geri alma.
echo.
echo Se�enek girin:

ebdundo /askandrun
if not errorlevel 8 goto Done

echo.
echo Sistem Geri Y�kleme, en son geri y�kleme i�leminin yapt��� de�i�iklikleri
echo geri almad�.
echo.
goto Exit

:Done
echo.
echo Sistem Geri Y�kleme, en son geri y�kleme i�leminin yapt��� de�i�iklikleri
echo geri ald�.
echo.
echo Disket s�r�c�lerindeki disketleri ��kar�n ve bilgisayar�n�z� yeniden
echo ba�latmak i�in CTRL+AL+DELETE tu� bile�imine bas�n.
echo.
pause >nul

:Exit
