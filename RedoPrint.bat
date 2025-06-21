@echo off
TITLE Restart Print Spooler
echo.
echo ================================================
echo      Restarting Windows Print Spooler Service
echo ================================================
echo.

:: Stop the Print Spooler
echo Stopping Print Spooler...
net stop spooler
if %ERRORLEVEL% NEQ 0 (
  echo Failed to stop Print Spooler or it wasn’t running.
) else (
  echo Print Spooler stopped.
)

echo.

:: Start the Print Spooler
echo Starting Print Spooler...
net start spooler
if %ERRORLEVEL% NEQ 0 (
  echo Failed to start Print Spooler.
) else (
  echo Print Spooler started.
)

echo.
echo Done.
pause
