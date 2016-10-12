# Bring all of the word docs in this folder
# Run this command

#C:\Users\tmpsafas\Desktop\batch\

$Files=GET-CHILDITEM ‘*.DOCX’
$Word=NEW-OBJECT –COMOBJECT WORD.APPLICATION
 
Foreach ($File in $Files) {
    $Doc=$Word.Documents.Open($File.fullname)
 
    $Name=($Doc.Fullname).replace(“docx”,”pdf”)

    $Doc.saveas([ref] $Name, [ref] 17)
    $Doc.close()
 
}