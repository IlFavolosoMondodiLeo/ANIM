@ ECHO OFF
TITLE Reboot
COLOR 02
CLS

CD C:\ANIM

CALL Configuration.cmd

shutdown /r /t 300 /d p:5:19 /c "YOUR COMPUTER WILL RESTART IN 5 MINUTES"