@echo off

SetLocal EnableDelayedExpansion

cls

for /R %%f in (*.mp4) do (

	if exist "%%f.sha256" (

		echo Checking %%f...

		certutil -hashfile "%%f" sha256 | find /v /i "hash" > TEMPHASH.txt

		set /p "DISKHASH="<%%f.sha256
		set /p "TEMPHASH="<TEMPHASH.txt
		
		if not "!DISKHASH!" == "!TEMPHASH!" (echo **** MISMATCH **** %%f  )

		echo y | del TEMPHASH.txt

	) else (
		echo !!! Warning: !!! %%f - no hash signature available.
	)

)
