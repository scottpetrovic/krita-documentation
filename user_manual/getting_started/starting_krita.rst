.. meta::
   :description lang=en:
        A simple guide to the first basic steps of using Krita: creating and saving an image.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Raghavendra Kamath <raghavendr.raghu@gmail.com>
             - Scott Petrovic
             - DMarquant
             - Vancemoss
   :license: GNU free documentation license 1.3 or later.

.. _starting_with_krita:

Starting Krita
==============

There will be no canvas or new document open by default. To create a new canvas you have to create a new document from the :guilabel:`File` menu. If you want to open an existing image, either use :menuselection:`File --> Open` or drag the image from your computer into Krita's window.

.. image:: /images/en/Starting-krita.png
   :width: 800

Creating a New Document
-----------------------

A new document can be created as follows.

# Click on :guilabel:`File` from the application menu at the top.
# Then click on :guilabel:`New`. Or you can do this by pressing :kbd:`Ctrl + N`.
# Now you will get a New Document dialog box as shown below:

.. image:: /images/en/Krita_newfile.png

Krita is a pretty complex program that can handle a lot of different files, so let's go through this step by step:

Custom Document
~~~~~~~~~~~~~~~~

From this section you can create a document according to your requirements: you can specify the dimensions, color model, depth, resolution, etc.

In the top-most field of the :guilabel:`Dimensions` tab, you can define a name for your new document. This name will appear in the metadata of the file, and Krita will use it for the auto-save functionality as well. If you leave it empty, the document will be referred to as 'Unnamed' by default.

From the Predefined drop-down you can select predefined pixel sizes and PPI (pixels per inch).

You can set custom dimensions and the orientation of the document from the input fields below the predefined drop-down. This can also be saved as a new predefined preset for your future use by giving a name in the Save As field and clicking on the Save button.

Below we find the Color section of the new document dialog box, where you can select the color model and the bit-depth. Check :ref:`color_management_settings` for more info.

On the :guilabel:`Content` tab, you can select the background color and the amount of layers you want in the new document. Krita remembers the amount of layers you picked last time, so be careful.

Finally, there's a description box, useful to note down what you are going to do.

Create From Clipboard
---------------------

This section allows you to create a document from an image that is in your clipboard, like a screenshot. It will have all the fields set to match the clipboard image.

Templates:
~~~~~~~~~~

These are separate categories where we deliver special defaults. Templates are just .kra files which are saved in a special location so they can be pulled up by Krita quickly.

You can make your own template file from any .kra file, by using :menuselection:` File --> Create Template From Image` in the top menu. This will add your current document as a new template, including all its properties along with the layers and layer contents.

Once you have created a new document according to your preference, you should now have a white canvas in front of you (or whichever background color you chose in the dialog).

How to use brushes
~~~~~~~~~~~~~~~~~~

Now, just press on the canvas part. If everything's correct, you should be able to draw on the canvas!
The brush tool should be selected by default when you start Krita, but if for some reason it is not, you can click on this |toolfreehandbrush| icon from the toolbar and activate the brush tool.

Of course, you'd want to use different brushes. On your right, there's a docker named Brush Presets (or on top, press :kbd:`f6` to find this one) with all these cute squares with pens and crayons.

If you want to tweak the presets, check the Brush Editor in the toolbar. You can also access the Brush Editor with :kbd:`F5`.

.. image:: /images/en/Krita_Brush_Preset_Docker.png

Tick any of the squares to choose a brush, and then draw on the canvas. To change color, click the triangle in the Advanced Color Selector docker.

Erasing
~~~~~~~

There are brush presets for erasing, but it is often faster to use the eraser toggle. By toggling the :kbd:`E` key, your current brush switches between erasing and painting. 

This erasing method works with most of the tools. You can erase using the line tool, rectangle tool, and even the gradient tool.

Saving and opening files
------------------------

Now, once you have figured out how to draw something in Krita, you may want to save it. The save option is in the same place as it is in all other computer programs: the top-menu of :guilabel:`File`, and then :guilabel:`Save`.

Select the folder you want to have your drawing, and select the file format you want to use ('.kra' is Krita's default format, and will save everything). And then hit :guilabel:`Save`. Some older versions of Krita have a bug and require you to manually type the extension.

If you want to show off your image on the internet, check out the :ref:`saving_for_the_web` tutorial. 

Check out :ref:`navigation` for further basic information, :ref:`basic_concepts` for an introduction as Krita as a medium, or just go out and explore Krita!
