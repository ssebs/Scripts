java -jar pdfbox-app-2.0.3.jar PDFMerger *.pdf __Merged.pdf

MOVE __Merged.pdf ..

Mkdir Old

CD Old

set date="%date:~7,2%-%date:~4,2%-%date:~10,4%"
set HH=%TIME:~0,2%

mkdir %date%_%HH%

CD ..

MOVE *.pdf Old\%date%_%HH%