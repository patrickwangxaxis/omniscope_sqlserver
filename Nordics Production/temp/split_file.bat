@echo off
setLocal EnableDelayedExpansion

set limit=10
set file=opps.csv
set lineCounter=1
set filenameCounter=1

set name=
set extension=
for %%a in (%file%) do (
    set "name=%%~na"
    set "extension=%%~xa"
)

for /f "tokens=*" %%a in (%file%) do (
    set splitFile=!name!-part!filenameCounter!!extension!

		
	if !filenameCounter! EQU 1 (
		set /p headerLine=<!file!
		)

	if !lineCounter! EQU 2 (
		if !filenameCounter! GTR 1 (
		echo !headerLine!>> !splitFile!  
		)
	)


    if !lineCounter! gtr !limit! (
        set /a filenameCounter=!filenameCounter! + 1
        set lineCounter=1
        echo Created !splitFile!.
    )
	
    echo %%a>> !splitFile!

    set /a lineCounter=!lineCounter! + 1
)