@echo off

if "%1"=="-?" goto help
if "%1"=="/?" goto help
if "%1"=="-h" goto help
if "%1"=="/h" goto help
if "%1"=="-H" goto Help
if "%1"=="/H" goto Help

set drive=%1
if "%1" == "" set drive=a:
cls
cls
echo  ����������������������������������������������������������������������������ͻ
echo  �                                                                            �
echo  �                      InoculateIT AntiVirus AVBoot 1.1                      �
echo  �                                                                            �
echo  �  This will create a DOS boot diskette that contains the AVBoot utility.    �
echo  �       Please insert a 1.44 diskette and press any key to continue.         �
echo  �     NOTE: Any data on the diskette will be destroyed by this process.      �
echo  �                                                                            �
echo  �        Copyright 1998, 1999 Computer Associates International, Inc.        �
echo  �                          All Rights Reserved                               �
echo  ����������������������������������������������������������������������������ͼ
echo.
echo  Warning: Data will be destoyed on this diskette.
echo.
echo Press Ctrl-C to Cancel or
pause
fd144 %drive% avboot
if errorlevel 1 goto exit
goto done

:help

echo.
echo Makedisk will create a boot-able DOS diskette containing the Computer Associates
echo InoculateIT AntiVirus AVBoot utility.  
echo It will overwrite (destroy) any data currently on the diskette.
echo.
echo Usage: makedisk [driveletter:] (default is a:)
echo.

:done
echo.
echo To run this utility, please re-boot your machine with this diskette in Drive A.
:exit
