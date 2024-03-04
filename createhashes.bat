@echo off

for /R %%f in (*.mp4) do (

	if exist "%%f.sha256" (
		echo %%f already exists.
	) else (
		echo Hashing file %%f...
		certutil -hashfile "%%f" sha256 | find /v /i "hash" > "%%f.sha256"
	)

)

