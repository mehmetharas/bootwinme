@ECHO OFF

ebdundo /check
if errorlevel 1 goto Exit

echo.
echo.
echo Sistem Geri Ykleme, tamamlanan son iŸlemin bir geri ykleme oldu§unu
echo alglad.Bu noktada, devam etmeden ”nce Sistem Geri Ykleme'nin
echo sisteminizde yapt§ de§iŸiklikleri geri alp makineyi yeniden baŸlatmanz
echo ”nerilir
echo.
echo.
echo  1. Geri Ykleme'nin sistemimde yapt§ de§iŸiklikleri geri al.
echo  2. Geri Ykleme'nin sistemimde yapt§ de§iŸiklikleri geri alma.
echo.
echo Se‡enek girin:

ebdundo /askandrun
if not errorlevel 8 goto Done

echo.
echo Sistem Geri Ykleme, en son geri ykleme iŸleminin yapt§ de§iŸiklikleri
echo geri almad.
echo.
goto Exit

:Done
echo.
echo Sistem Geri Ykleme, en son geri ykleme iŸleminin yapt§ de§iŸiklikleri
echo geri ald.
echo.
echo Disket srclerindeki disketleri ‡karn ve bilgisayarnz yeniden
echo baŸlatmak i‡in CTRL+AL+DELETE tuŸ bileŸimine basn.
echo.
pause >nul

:Exit
