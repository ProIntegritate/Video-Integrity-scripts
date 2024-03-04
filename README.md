# Video Integrity scripts

Batch scripts to create and check sha256 signatures of .MP4 files.

createhashes.bat - creates .sha256 files of each file in the current folder and all subdirectories
checkhashes.bat - validates all .sha256 files in the current and all subfolders and warns if there are discrepancies. Warns if there is no .sha256 file.
