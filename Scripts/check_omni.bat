@ECHO OFF
for /F "tokens=3 delims=: " %%H in ('sc query "Visokio Enterprise" ^| findstr "        STATE"') do (
  if /I "%%H" NEQ "RUNNING" (
   net start "Visokio Enterprise"
  )
)