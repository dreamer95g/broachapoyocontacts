@echo off
color F0

set MYSQL_BIN=C:\laragon\bin\mysql\mysql-5.7.24-win32\bin\mysql.exe

set USER=root
set PASSWORD=root
set BACKUP_SQL=%1%
set DATABASE=tracking

REM Execution
%MYSQL_BIN% --user=%USER% --password=%PASSWORD% %DATABASE% < %BACKUP_SQL%

REM Manejar errores
if  errorlevel 1 goto ERROR
REM echo SUCCESSFUL
:ERROR
REM echo FAILED

exit
