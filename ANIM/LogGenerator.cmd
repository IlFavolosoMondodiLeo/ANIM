SET DAY=%DATE:~0,2%
SET MONTH=%DATE:~3,2%
SET YEAR=%DATE:~6,4%
SET HOURS=%TIME:~0,2%
SET MINUTES=%TIME:~3,2%
SET SECONDS=%TIME:~6,2%
IF "%HOURS:~0,1%"==" " SET HOURS=0%HOURS:~1,1%
SET CODE=%YEAR%%MONTH%%DAY%

SET SEPARATOR=----------------------------------------------------------------------------------------------------

SET CUSTOM=%*

IF "%CUSTOM%"=="" SET CUSTOM= 

IF NOT EXIST LOG MKDIR LOG

SET LOG=LOG\%CODE%.log

REM IF EXIST %LOG% DEL %LOG%

IF NOT EXIST %LOG% fsutil file createNew %LOG% 0 > NUL

>> %LOG% ECHO %SEPARATOR%
>> %LOG% ECHO %DAY%/%MONTH%/%YEAR% %HOURS%:%MINUTES%:%SECONDS%
>> %LOG% ECHO %SEPARATOR%

IF NOT "%CUSTOM%"==" " (

IF NOT "%CUSTOM:~0,1%"=="" >> %LOG% ECHO %CUSTOM:~0,100%
IF NOT "%CUSTOM:~100,1%"=="" >> %LOG% ECHO %CUSTOM:~100,100%
IF NOT "%CUSTOM:~200,1%"=="" >> %LOG% ECHO %CUSTOM:~200,100%
IF NOT "%CUSTOM:~300,1%"=="" >> %LOG% ECHO %CUSTOM:~300,100%
IF NOT "%CUSTOM:~400,1%"=="" >> %LOG% ECHO %CUSTOM:~400,100%
IF NOT "%CUSTOM:~500,1%"=="" >> %LOG% ECHO %CUSTOM:~500,100%
IF NOT "%CUSTOM:~600,1%"=="" >> %LOG% ECHO %CUSTOM:~600,100%
IF NOT "%CUSTOM:~700,1%"=="" >> %LOG% ECHO %CUSTOM:~700,100%
IF NOT "%CUSTOM:~800,1%"=="" >> %LOG% ECHO %CUSTOM:~800,100%
IF NOT "%CUSTOM:~900,1%"=="" >> %LOG% ECHO %CUSTOM:~900,100%
IF NOT "%CUSTOM:~1000,1%"=="" >> %LOG% ECHO %CUSTOM:~1000,100%

IF NOT "%CUSTOM%"==" " >> %LOG% ECHO %SEPARATOR%

)

>> %LOG% ECHO.
>> %LOG% ECHO TIMEOUT=%TIMEOUT%
>> %LOG% ECHO INTERFACE01=%INTERFACE01%
>> %LOG% ECHO INTERFACE02=%INTERFACE02%
>> %LOG% ECHO INTERFACE03=%INTERFACE03%
>> %LOG% ECHO INTERFACE04=%INTERFACE04%
>> %LOG% ECHO INTERFACE05=%INTERFACE05%
>> %LOG% ECHO INTERFACE06=%INTERFACE06%
>> %LOG% ECHO INTERFACE07=%INTERFACE07%
>> %LOG% ECHO INTERFACE08=%INTERFACE08%
>> %LOG% ECHO INTERFACE09=%INTERFACE09%
>> %LOG% ECHO INTERFACE10=%INTERFACE10%
>> %LOG% ECHO.
>> %LOG% ECHO %SEPARATOR%
>> %LOG% ECHO.
>> %LOG% SET
>> %LOG% ECHO.
>> %LOG% ECHO %SEPARATOR%

IF NOT "%INTERFACE01%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE01%" & >> %LOG% ECHO %SEPARATOR% )
IF NOT "%INTERFACE02%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE02%" & >> %LOG% ECHO %SEPARATOR% )
IF NOT "%INTERFACE03%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE03%" & >> %LOG% ECHO %SEPARATOR% )
IF NOT "%INTERFACE04%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE04%" & >> %LOG% ECHO %SEPARATOR% )
IF NOT "%INTERFACE05%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE05%" & >> %LOG% ECHO %SEPARATOR% )
IF NOT "%INTERFACE06%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE06%" & >> %LOG% ECHO %SEPARATOR% )
IF NOT "%INTERFACE07%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE07%" & >> %LOG% ECHO %SEPARATOR% )
IF NOT "%INTERFACE08%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE08%" & >> %LOG% ECHO %SEPARATOR% )
IF NOT "%INTERFACE09%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE09%" & >> %LOG% ECHO %SEPARATOR% )
IF NOT "%INTERFACE10%"=="" ( >> %LOG% netsh interface show interface name="%INTERFACE10%" & >> %LOG% ECHO %SEPARATOR% )

>> %LOG% ipconfig /all
>> %LOG% ECHO.
>> %LOG% ECHO %SEPARATOR%
>> %LOG% SCHTASKS /Query /TN "DisableNetwork" /FO LIST /V
>> %LOG% ECHO.
>> %LOG% ECHO %SEPARATOR%
>> %LOG% SCHTASKS /Query /TN "EnableNetwork" /FO LIST /V
>> %LOG% ECHO.
>> %LOG% ECHO %SEPARATOR%
>> %LOG% SCHTASKS /Query /TN "ForcedReboot" /FO LIST /V
>> %LOG% ECHO.
