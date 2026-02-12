@ ECHO OFF
TITLE TemporaryFileRemove
COLOR 02
CLS

IF EXIST ShowInterface.txt DEL /Q ShowInterface.txt
IF EXIST LOG RMDIR /S /Q LOG