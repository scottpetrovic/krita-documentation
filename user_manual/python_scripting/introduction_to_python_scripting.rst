.. meta::
   :description lang=en:
        Introduction to using Krita's python plugin API.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Alvin Wong
             - Scott Petrovic
             - Micheal Abrahams
   :license: GNU free documentation license 1.3 or later.

.. _introduction_to_python_scripting:

================================
Introduction to Python Scripting
================================

When we offered python scripting as one of Kickstarter Stretchgoals we could implement next to vectors and text, it won the backer vote by a landslide. Some people even only picked python and nothing else. So what exactly is python scripting?

What is Python Scripting
------------------------

Python is a scripting language, that can be used to automate tasks. What python scripting in Krita means is that we added an API to krita, which is a bit of programming that allows python to access to parts of Krita. With this we can make dockers, perform menial tasks on a lot of different files and even write our own exporters. People who work with computer graphics, like VFX and video game artists use python a lot to make things like sprite sheets, automate parts of export and more.

It is outside the scope of this manual to teach you python itself. However, as python is a programming language that is already over several decades old, there's tons of learning material around that can be quickly found with a simple 'learn python' internet search.

This manual will instead focus on how to use and make python plugins and for that we'll first start with the basics: How to enable the scripter plugin.

How to enable the scripter plugin
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The scripter plugin is not necessary to use python, but it is very useful for testing and playing around with python. It is a python console, written in python, which can be used to write small scripts and execute them on the fly.

To enable it, go to :menuselection:`Settings --> Configure Krita --> Python Plugin Manager` and toggle "Scripter" in the list.

Then go to :menuselection:`Tools --> Scripts --> Scripter` to open the Scripter. Input the following in the top edit window:

::

    import sys
    
    print("hello world")

and press the big play button at the top. Then, below, in the output area the following should show up:

::

    ==== Warning: Script not saved! ====
    hello world

Okay, so we have a little console that we can use to print messages in, but then, how do we actually talk to Krita? For that let's go to the second basic thing: How to use the API docs.

How to use the API docs
~~~~~~~~~~~~~~~~~~~~~~~

The above example was a simple print() function. If you want to see all the Krita functions you can do, check out our handy Krita API docs: `LibKis documentation <https://api.kde.org/extragear-api/graphics-apidocs/krita/libs/libkis/html/index.html>`_.


If you go to that page, there's a lot of jargon. To understand some of it, you will need to know how the API works. Our API is made up of two parts: LibKis, which is the actual API, and SIP, which makes it possible for python to talk to Krita.

SIP turns LibKis into a python module named 'krita', so to use the krita python API, we'll need to import this module.

``from krita import *``

Then, you can talk to Krita by getting the Krita.instance(). In the API docs, the word Krita.instance() links to the documentation of that class.

If we go there, we can see all the functions available to the Krita instance. You may notice that the functions return things like QStringLists, which is because LibKis is a C++ library. However, SIP turns those QStringLists into regular python lists filled with strings.

::

    import sys
    from krita import *
    
    print(Krita.instance().filters())

Outputs as

::

    ==== Warning: Script not saved! ====
    ['asc-cdl', 'autocontrast', 'blur', 'burn', 'colorbalance', 'colortoalpha', 'colortransfer',
     'desaturate', 'dodge', 'edge detection', 'emboss', 'emboss all directions', 'emboss horizontal and vertical',
     'emboss horizontal only', 'emboss laplascian', 'emboss vertical only', 'gaussian blur', 'gaussiannoisereducer',
     'gradientmap', 'halftone', 'height to normal', 'hsvadjustment', 'indexcolors', 'invert', 'lens blur', 'levels',
     'maximize', 'mean removal', 'minimize', 'motion blur', 'noise', 'normalize', 'oilpaint', 'perchannel', 'phongbumpmap',
     'pixelize', 'posterize', 'raindrops', 'randompick', 'roundcorners', 'sharpen', 'smalltiles', 'threshold', 'unsharp',
     'wave', 'waveletnoisereducer']

Other lists are considerably less coherent when output into the print function:

::

    import sys
    from krita import *

    print(Krita.instance().documents())

gives something like this:

::

    ==== Warning: Script not saved! ====
    [<PyKrita.krita.Document object at 0x7f7294630b88>,
     <PyKrita.krita.Document object at 0x7f72946309d8>,
     <PyKrita.krita.Document object at 0x7f7294630c18>]

It is a list of something, sure, but how to use it? If we go back to the Krita apidocs page, and click on 'Document' to get to the document class page, we can find things we can print. So we could create the following script:

::

    import sys
    from krita import *

    for doc in Krita.instance().documents():
        print(doc.name())
        print(" "+str(doc.width())+"x"+str(doc.height()))

we get an output like:

::

    ==== Warning: Script not saved! ====
    Unnamed
     2480x3508
    sketch21
     3508x2480
    Blue morning
     1600x900

Hopefully this will give you an idea of how to navigate the API docs now.

Krita's API has many more classes, you can get to them by going to the top-left class list, or just clicking their names to get to their API docs. Try using the print function on as many things as possible to see what you can access.

How to install python scripts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can install python scripts by putting them into the pykrita folder of the resources folder (:menuselection:`Settings --> Manage Resources --> Open Resource Folder`). Installing python scripts requires Krita to be able to find the ".desktop" file, so make sure that is directly in the pykrita folder, and not in the script folder itself.

.. warning::
    Only install python scripts from a trusted source, and always make sure that the code is safe. Python by itself is nothing more and nothing less than a programming language, and can thus be used to, say, delete all the files on your computer. If you do not have the skill to verify whether a script is safe, do not install python scripts by yourself.

Technical Details
-----------------

To get Python scripting working on Windows 7/8/8.1, you will need to install the `Universal C Runtime from Microsoft's website <https://www.microsoft.com/en-us/download/details.aspx?id=48234>`_. (Windows 10 already comes with it.)
