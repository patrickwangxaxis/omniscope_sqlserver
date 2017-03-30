@echo on

powershell -file "C:\Projects\Omni\Sessions\Session Temp\SendEmail.ps1"

ECHO d | xcopy /s/y "C:\Projects\Omni\Sessions\Session Temp" "C:\Projects\Omni\Sessions\Session Temp %date:/=-% %time::=-%"

DEL /q "C:\Projects\Omni\Sessions\Session Temp\*"
FOR /d %%x IN ("C:\Projects\Omni\Sessions\Session Temp\*") DO @rd /s /q "%%x"
