PowerShell.exe -ExecutionPolicy Bypass -File "WordToPDF.ps1"

if exist "*.pdf" (
	msg "%username%" Your files are converted, they will be in a folder called "PdfsFromWord"
	
) else (
	msg "%username%" There are no .docx files in the "WordToPDF" Folder
	exit
)



mkdir OldDocs

cd OldDocs

set date="%date:~7,2%-%date:~4,2%-%date:~10,4%"
set HH=%TIME:~0,2%

mkdir %date%

cd ..

MOVE *.docx OldDocs\%date%

cd ..

mkdir PdfsFromWord

move WordToPDF\*.pdf PdfsFromWord\