@ ECHO OFF
TITLE ShowInterface
COLOR 02
CLS

netsh interface show interface
netsh interface show interface > ShowInterface.txt

PAUSE
EXIT