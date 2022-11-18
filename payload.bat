@ECHO OFF
C:
goto :question_exploit

:charge_exploit
set /p git_url="Git URL >>> "
cd "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\exploits"
set comando=git clone %git_url%
%comando%
exit

:execute_exploit
set /p interprete="Python or Bat File?[p/b] > "
set /p name_folder="Folder Name >>> "
set /p name_file="File Name >>> "
if "%interprete%" == "p" (
    cd "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\exploits"
    cd %name_folder%
    python %name_file%.py
) else if "%interprete%" == "b" (
    cd "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\exploits"
    cd %name_folder%
    start %name_file%.bat
) else (
    echo [-] Err: Interprete not found
)
exit

:question_exploit
set /p exp_action= "Exploit or Charge?[e/c] >>>"
if "%exp_action%" == "c" (
    goto :charge_exploit
) else if "%exp_action%" == "e" (
    goto :execute_exploit
) else (
    echo [-] Err: Option not found...
    pause
    goto :question_exploit
)