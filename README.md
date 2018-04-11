# krita-documentation
A Sphinx based documentation system with a custom Krita theme

Todo: how to add/manage images in page
Todo: top branding to get back to normal site



Sphinx documentation on running and setting it up for Windows
-----------------------------------------------------------

Setup
-----
You will need Python first if you don't have it. I have version 3.6.3. Make sure to install PIP along with the installation. PIP is a manager that is used to install external packages. We will use PIP to install Sphinx. These instructions were written from a Windows 10 machine, but it shouldn't be too difficult to change things around for other Operating Systems.


After you install Python bring up a command prompt and type: python --version
It should tell you the version and verify that Python is installed. Mine says 3.6.3

From here you will need to install Sphinx so you can use it in projects. Type this from the command line: pip install -U sphinx

After it is done you can make sure it is installed. Type this in the command line: sphinx-build --version
You should get a message telling you what version you have installed. Mine is 1.7.2



Running 
-------
Now in your command prompt change your location to where this readme.txt file is at. This is your project root. Most of the commands we will be using will be done in the command prompt.

For a normal HTML build you can just type this in the command line: make html
This will generate the HTML files from the source (located where we are now) and place everything in the _build directory.


Updating languages
------------------
The documentation is available in multiple languages. You can add languages or update existing languages.

Updating POT files from English version
---
To take your base English files and generate POT files for other languages to use run this: make gettext
The POT files will be generated in your _build directory under the "gettext" folder. POT files are the base files that other translations will use to figure out what needs to be translated. You will need to run this again if you make changes to the English. 

Updating PO files with new translations
---
From the POT files we can generate/update PO files for the translators to use: sphinx-intl update --pot-dir _build/gettext -l de -l ja
This will take the information from the POT files and output the PO files in the ./locale folder.
This example creates or updates the german and japanese PO files at the same time


Send translation to editor
--
https://localise.biz/free/poeditor
-- watch out. It might add a 'zxx' as the language. that might need to be changed in the PO file. They can just send back the PO files. We have a command that can turn them into MO files later.



Turning the PO files to MO Files
--------------------------------
Websites need MO files, so we need to convert the translated PO files when we are ready. To do this we need to actually run the make command like normal, but specify a language option: 

command: sphinx-intl build




Build out changes to language  (en and de)
-------------------------------
set currentLanguage=de
set SPHINXOPTS=-D language="%currentLanguage%"
make.bat html


Copy the output to a distribution folder that puts the output in its own language
--------------
robocopy ./_build/html ./dist/%currentLanguage%/ /E








Technology Notes
----------------

Theme
--
The theme is all under the krita-theme folder. The theme file is based on the rtf theme from (list URL). There is some added logic in the theme.js file that adds support for a language switcher. There is also additional HTML in the layout.html file that has the language switcher and options. Text in themes are not translatable, so words like "language" cannot be translated. This also includes paging options like "Next" and "Previous". 


Language switching
--
Sphinx can only export one language at a time, so the build script needs to loop through every available language when building out the HTML. Sphinx always builds to the same "_build" folder no matter the language. The way the script will work, it builds out a language, then copies the files from the "_build/html" folder to the "dist" folder. Each language is a complete site this way. There are duplicate javascript and css files with this approach, but it is simpler to see each language as its own self contained site.















