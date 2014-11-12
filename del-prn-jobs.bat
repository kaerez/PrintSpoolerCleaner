@echo off
::https://github.com/kaerez/PrintSpoolerCleaner
echo Stopping print service
net stop spooler 1>nul 2>nul
ping -n 5 127.0.0.1 1>nul 2>nul
cd c:\windows\system32\spool\printers
echo Deleting print jobs
del /q *.spl 1>nul 2>nul
del /q *.shd 1>nul 2>nul
cd\
echo Starting print service
net start spooler 1>nul 2>nul
ping -n 5 127.0.0.1 1>nul 2>nul
echo All Print Jobs Deleted!
ping -n 6 127.0.0.1 1>nul 2>nul
