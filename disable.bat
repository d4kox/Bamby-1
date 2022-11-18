@ECHO OFF
C:
cd "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
del ejecuter.bat
cd "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu"
rd Bambi
cd "%UserProfile%\AppData"
del payload.bat
del cleaner.bat
echo "[*] Bambi se ha desinstalado correctamente"
timeout /nobreak 5
