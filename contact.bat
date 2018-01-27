cls
@echo off
rem Without parameter, autoboot starts a standard installation using loadlin
rem For lnx4win, start as: autoboot lnx4win
rem WARNING: this doesn't work with Windows NT, ME or 2000. For these systems,
rem   you must boot from the CDROM or from a boot diskette.
md c:\mandrake > nul
copy \dosutils\autoboot\mdkinst\*.* c:\mandrake
copy \boot\*.* c:\mandrake
c:
cd \mandrake
rundos cdrom.bat %1 > rundos.log
find /c /i "windows" rundos.log 
if errorlevel 1 goto end
cdrom.bat %1
:end
