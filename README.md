# Documentation Site for Krita
A Sphinx based documentation system with a custom Krita theme. The instructions and batch files were originally written from a Windows 10 machine, but it should be able to work with any operating system. 


Setting up Development Environment
----------------------------------
You will need Python. I have version 3.6.3. Make sure to install PIP along with the installation. PIP is a manager that is used to install external packages. We will use PIP to install Sphinx. Sphinx is static site generation tool used for documentation purposes. 

After you install Python bring up a command prompt and type: `python --version`

It should tell you the version and verify that Python is installed. Mine says 3.6.3

Next you will need to install Sphinx so you can use it in projects. Type this from the command line: `pip install -U sphinx`

After it is done you can make sure it is installed. Type this in the command line: `sphinx-build --version`

You should get a message telling you what version you have installed. Mine is 1.7.2



Running Sphinx
-------
Now in your command prompt change your location to where this readme.md file is at. This is your project root. All of the commands we will be using will be done in the command prompt.

For a normal HTML build you can just type this in the command line: `make html`

This will generate the HTML files from all the source files (located where we are now) and place everything in the _build directory.



# Creating and Updating New Languages
Sphinx can only generate one language at a time. Having multiple languages needs a bit of extra work. This section discussed adding more languages and configuring it.


Updating POT files from English version
---------------------------------------
To take your base English files (in RST files) and generate POT files for other languages,  type this in the command prompt: `make gettext`

The POT files will be generated in your _build directory under a new "gettext" folder. POT files are the base files that other translations will use. You will need to run this again if you make changes to your English (RST) files to have an up to date POT file. 


Updating PO files with new translations
---------------------------------------
From the POT files we can generate/update PO files for the translators to use: `sphinx-intl update --pot-dir _build/gettext -l de -l ja`

This will take the information from the POT files and output the PO files in a locale folder. The above example creates a german and japanese PO files at the same time. You can add as many languages as needed


Send translation to editor
--------------------------
You can use a free translation tool like https://localise.biz/free/poeditor to edit PO files.
Watch out. This program might add a 'zxx' as the language to the outputted PO file. That will need to be corrected if that happens. Translators can send you back the PO files when they are done. We have a command that can turn them into MO files later, so translators don't have to worry about that.

Images can be translated if a language wants to provide their own images. All the images are stored in the images folder on the project root. The images are separated out by language. For the finished PO file, the translator will need to provide an image file, and a translation for the image that references the correct location in the PO file. Many images won't need a translation, so images can be left untranslated or just the alternate text can be translated.



Turning the PO files to MO Files
--------------------------------
Websites read MO files, not PO files. We need to convert the translated PO files when we are ready. To do this we need to run the make command like normal, but specify a language option: `sphinx-intl build`

This will take everything inside the locale directory and create MO files from them.


Build out changes to language  (en and de)
-------------------------------
To build out a specific language we need to specify which language to output and then build. This can be done with the following commands: 

`set currentLanguage=de`
`set SPHINXOPTS=-D language="%currentLanguage%"`
`make.bat html`

In this example we changed the language to German and built out HTML files. Everything in the _build directory should be using the German translations.



Using multiple languages at once
--------------------------------
To be able to have multiple langauges at once, we will start to use a "dist" folder. The basic ideas is that after Sphinx builds out the documentation for a language, it will copy the files out to a new location that is in its language code. 

To copy the files to the dist folder use the following command: `robocopy ./_build/html ./dist/%currentLanguage%/ /E`

You should see all the documentation files in the dist folder inside its language folder. We only need the stuff inside the html folder as the other folder are for helping with translation. Change the language like in the above step and do the same process for all languages.


Switching languages for the site
--------------------------------
The theme has a built-in language switcher. It works by looking at the URL for the existing language, and then looking at the HTML select tag with the language drop down. It just swaps out the language code in the URL if it finds out they are different.

You will need to update the theme file to include all the languages you support. This is in the Theme > layout.html file. If you do a search for `language-selector-container` you should find out how this list is populated. Themes cannot be translated, so whatever text is used will appear for all languages.

You will need to output all the languages again to see the updated langauge selector


# Theme notes
The theme is a customized version of the rtd theme. You can change out the logo image from the Theme > static > images folder. The custom language switcher logic is also custom. That is found in the Theme > static > js > theme.js file at the bottom.


# Re-building faster
It can be tedious making tweaks and having to run a bunch of steps over and over. There is an included `rebuild-all.bat` script that you can run from your project root directory. It is pretty stupid right now, but it just clear out the build and dist directories, then rebuilds the different languages. You will probably have to modify this to output whatever languages you want.

Once you have set up the languages you can just run this command: `rebuild-all.bat`

After a few seconds all the languages should be updated in the dist folder for you to test. 




Todo: how to add/manage images in page
Todo: top branding to get back to normal site








