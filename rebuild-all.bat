REM run this BAT file when your command line is in the same directory as this file

REM clear the contents inside the _build/html directory and dist folder
rmdir dist /s /q
rmdir _build\html /s /q


REM export out the German version and place it in the distribution folder
Set currentLanguage=de
Set SPHINXOPTS=-D language="%currentLanguage%"
call make.bat html
Robocopy ./_build/html ./dist/%currentLanguage%/ /E


REM export out the English version and place it in the distribution folder
Set currentLanguage=en
Set SPHINXOPTS=-D language="%currentLanguage%"
call make.bat html
Robocopy ./_build/html ./dist/%currentLanguage%/ /E