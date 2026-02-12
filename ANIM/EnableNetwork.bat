@ ECHO OFF
TITLE EnableNetwork
COLOR 02
CLS

ECHO LOADING

SET TIMEOUT=1

CD C:\ANIM

IF EXIST Configuration.cmd ( CALL Configuration.cmd ) ELSE GOTO ERROR

IF NOT "%INTERFACE01%"=="" ( netsh interface show interface name="%INTERFACE01%" > NUL || GOTO ERROR )
IF NOT "%INTERFACE02%"=="" ( netsh interface show interface name="%INTERFACE02%" > NUL || GOTO ERROR )
IF NOT "%INTERFACE03%"=="" ( netsh interface show interface name="%INTERFACE03%" > NUL || GOTO ERROR )
IF NOT "%INTERFACE04%"=="" ( netsh interface show interface name="%INTERFACE04%" > NUL || GOTO ERROR )
IF NOT "%INTERFACE05%"=="" ( netsh interface show interface name="%INTERFACE05%" > NUL || GOTO ERROR )
IF NOT "%INTERFACE06%"=="" ( netsh interface show interface name="%INTERFACE06%" > NUL || GOTO ERROR )
IF NOT "%INTERFACE07%"=="" ( netsh interface show interface name="%INTERFACE07%" > NUL || GOTO ERROR )
IF NOT "%INTERFACE08%"=="" ( netsh interface show interface name="%INTERFACE08%" > NUL || GOTO ERROR )
IF NOT "%INTERFACE09%"=="" ( netsh interface show interface name="%INTERFACE09%" > NUL || GOTO ERROR )
IF NOT "%INTERFACE10%"=="" ( netsh interface show interface name="%INTERFACE10%" > NUL || GOTO ERROR )

IF EXIST LogGenerator.cmd CALL LogGenerator.cmd START EnableNetwork

IF NOT "%INTERFACE01%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE01%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE01%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE01%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF NOT "%INTERFACE02%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE02%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE02%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE02%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF NOT "%INTERFACE03%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE03%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE03%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE03%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF NOT "%INTERFACE04%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE04%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE04%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE04%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF NOT "%INTERFACE05%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE05%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE05%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE05%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF NOT "%INTERFACE06%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE06%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE06%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE06%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF NOT "%INTERFACE07%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE07%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE07%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE07%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF NOT "%INTERFACE08%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE08%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE08%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE08%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF NOT "%INTERFACE09%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE09%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE09%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE09%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF NOT "%INTERFACE10%"=="" (

	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE10%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL
	netsh interface set interface name="%INTERFACE10%" admin=ENABLED > NUL
	CLS
	ECHO WAIT FOR THE PROGRAM TO CLOSE
	ECHO.
	ECHO ENABLING %INTERFACE10%
	netsh interface show interface
	TIMEOUT /T %TIMEOUT% /NOBREAK > NUL

)

IF EXIST LogGenerator.cmd CALL LogGenerator.cmd STOP EnableNetwork

EXIT

: ERROR

CLS

ECHO ERROR
ECHO.

IF NOT EXIST Configuration.cmd ECHO Configuration.cmd NOT FOUND

IF EXIST Configuration.cmd (

ECHO SOME NETWORK INTERFACES WERE NOT FOUND
ECHO.

IF NOT "%INTERFACE01%"=="" netsh interface show interface name="%INTERFACE01%" > NUL || ECHO 	%INTERFACE01%
IF NOT "%INTERFACE02%"=="" netsh interface show interface name="%INTERFACE02%" > NUL || ECHO 	%INTERFACE02%
IF NOT "%INTERFACE03%"=="" netsh interface show interface name="%INTERFACE03%" > NUL || ECHO 	%INTERFACE03%
IF NOT "%INTERFACE04%"=="" netsh interface show interface name="%INTERFACE04%" > NUL || ECHO 	%INTERFACE04%
IF NOT "%INTERFACE05%"=="" netsh interface show interface name="%INTERFACE05%" > NUL || ECHO 	%INTERFACE05%
IF NOT "%INTERFACE06%"=="" netsh interface show interface name="%INTERFACE06%" > NUL || ECHO 	%INTERFACE06%
IF NOT "%INTERFACE07%"=="" netsh interface show interface name="%INTERFACE07%" > NUL || ECHO 	%INTERFACE07%
IF NOT "%INTERFACE08%"=="" netsh interface show interface name="%INTERFACE08%" > NUL || ECHO 	%INTERFACE08%
IF NOT "%INTERFACE09%"=="" netsh interface show interface name="%INTERFACE09%" > NUL || ECHO 	%INTERFACE09%
IF NOT "%INTERFACE10%"=="" netsh interface show interface name="%INTERFACE10%" > NUL || ECHO 	%INTERFACE10%

ECHO.
ECHO PLEASE CONTACT YOUR NETWORK ADMINISTRATOR
ECHO.
ECHO Il Favoloso Mondo di Leo
ECHO LEONARDO PUMO
ECHO https://ilfavolosomondodileo.wordpress.com/contattami/

)

TIMEOUT /T 30 /NOBREAK > NUL
EXIT