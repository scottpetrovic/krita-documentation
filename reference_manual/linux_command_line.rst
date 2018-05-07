.. _linux_cmd:

==================
Linux Command Line
==================



As a native Linux program, Krita allows you to do operations on images without opening the program when using the Terminal. This option was disabled on Windows and OSX, but with 3.3 it is enabled for them!

This is primarily used in bash or shell scripts, for example, to mass convert kra files into pngs.

Export
------

This allows you to quickly convert files via the terminal:

``krita importfilename --export --export-filename exportfilename``

krita
    This tells the terminal to use the program Krita.
importfilename
    Replace this with the filename of the file you want to manipulate.
\--export
    This selects the export option.
\--exportfilename
    This says that the following word is the filename it should be exported to.
exportfilename
    Replace this with the name of the output file. Use a different extension to change the fileformat.

Example:

``krita final.png --export --export-filename final.jpg``

This piece of code takes the file ``file.png`` and saves it as ``file.jpg``.

PDF export
----------

Pdf export looks a bit different, using the ``--export-pdf`` option.

``krita final.png --export-pdf --export-filename final.pdf``

This exports the file ``file.png`` as a pdf file.

.. warning::
    
    This has been removed from 3.1 because the results were incorrect.

Open with Custom Screen DPI
---------------------------

Open Krita with specified Screen DPI.

``krita --dpi <dpiX,dpiY>``

For example:

``krita --dpi <72,72>``

Open template
-------------

Open krita and automatically open the given template(s). This allows you to, for example, create a shortcut to Krita that opens a given template, so you can get to work immidiately!

``krita --template templatename.desktop``

\--template
    Selects the template option
templatename.desktop
    All templates are saved with the .desktop extension. You can find templates in the .kde/share/apps/krita/template or in the install folder of Krita.

``krita --template BD-EuroTemplate.desktop``

This opens the European BD comic template with Krita.

``krita --template BD-EuroTemplate.desktop BD-EuroTemplate.desktop``

This opens the European BD template twice, in seperate documents.

Start up
--------

.. versionadded:: 3.3

    ``krita --nosplash``
        Start krita without showing the splash screen.
    ``krita --canvasonly``
        Start krita in canvasonly mode.
    ``krita --fullscreen``
        Start krita in fullscreen mode.
    ``krita --workspace Workspace``
        Start krita with the given workspace. So for example...
    ``krita --workspace Animation``
        Starts Krita in the Animation workspace.