.. meta::
   :description:
        Detailed steps on how images work in Krita

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Raghavendra Kamath <raghavendr.raghu@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. index:: Image, Document, Raster, Vector, Metadata
.. _working_with_images:

===================
Working with Images
===================

Computers work with files and as a painting program, Krita works with
images as the type of file it creates and manipulates.

What do Images Contain?
-----------------------

If you have a text document, it of course contains letters, strung in
the right order, so the computer loads them as coherent sentences.

Raster Data
~~~~~~~~~~~

This is the main data on the paint layers you make. So these are the
strokes with the paint brush and look pixely up close. A multi-layer
file will contain several of such layers, that get overlaid on top of
each other so make the final image.

A single layer file will usually only contain raster data.

Vector Data
~~~~~~~~~~~

These are mathematical operations that tell the computer to draw pixels
on a spot. This makes them much more scalable, because you just tell the
operation to make the coordinates 4 times bigger to scale it up. Due to
this vector data is much more editable, lighter, but at the same time
it's also much more CPU intensive.

Operation Data
~~~~~~~~~~~~~~

Stuff like the filter layers, that tells Krita to change the colors of a
layer, but also transparency masks, group layer and transformation masks
are saved to multi-layer files. Being able to load these depend on the
software that initially made the file. So Krita can load and save
groups, transparency masks and layer effects from PSD, but not load or
save transform masks.

Meta Data
---------

Meta Data is information like the creation date, author, description and
also information like DPI.

Image size
----------

The image size is the dimension and resolution of the canvas. Image size
has direct effect file size of the Krita document. The more pixels that
need to be remembered and the higher the bit depth of the color, the
heavier the resulting file will be.

DPI/PPI
~~~~~~~

**DPI** stands for *Dots per Inch*, **PPI** stands for *Pixels per
Inch*. In printing industry, suppose if your printer prints at 300
**DPI** It means it is actually putting 300 dots of colors in an area
equal to an Inch. This means the number of pixels your artwork has in a
relative area of an Inch.

**DPI** is the concern of the printer, and artists while creating
artwork should keep **PPI** in mind. according to the **PPI** you have
set, the printers can decide how large your image should be on a piece
of paper.

Some standards:

72 PPI
    This is the default PPI of monitors as assumed by all programs. It
    is not fully correct, as most monitors these days have 125 PPI or
    even 300 PPI for the retina devices. None the less, when making an
    image for computer consumption, this is the default.
120 PPI
    This is often used as standard for low-quality posters.
300 PPI
    This is the minimum you should use for quality prints.
600 PPI
    The quality used for line-art for comics.

Color depth
~~~~~~~~~~~

We went over color depth in the Color Management page. What you need to
understand is that Krita has image color spaces, and layer color spaces,
the latter which can save memory if used right. For example, having a
lineart layer in greyscale can half the memory costs.

Image color space vs layer color space vs conversion.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Because there's a difference between image color space and layer color
space, you can change only the image colour space in :menuselection:`Image --> Properties`
which will leave the layers alone. But if you want to change the color
space of the file including all the layers you can do it by going to
Image > Convert Image Color Space this will will convert all the layers
Colorspace as well.

Author and Description
----------------------

.. image:: /images/en/document_information_screen.png

Krita will automatically save who created the image into your image's
metadata. Along with the other data such as time and date of creation
and modification, Krita also shows editing time of a document in the
document information dialog, useful for professional illustrators,
speed-painters to keep track of the time they worked on an artwork for
billing purposes. It detects when you haven’t performed actions for a
while, and has a precision of +- 60 seconds. You can empty it in the
document info dialog and of course by unzipping you .kra file and
editing the meta-data there.

You can edit these things in :menuselection:`File --> Document Information`, and for the
author's information :menuselection:`Settings --> Configure Krita --> Author Information`.
You can switch between profiles under :menuselection:`Settings --> Active Author Profile`.

Setting the canvas background color
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can set the canvas background color via :menuselection:`Image --> Image Background
color and Transparency`. This allows you to turn the background color
non-transparent and to change the color. Also useful for certain file
formats which force a background color instead of transparency. PNG and
JPG export use this color as the default color to fill in transparency
if you do not want to export transparency.

If you come in from a program like :program:`Paint Tool Sai`, then using this
option, or using :guilabel:`Set Canvas Background Color` in the new file options,
will allow you to work in a slightly more comfortable environment, where
transparency isn't depicted with checkered boxes.

Basic transforms
~~~~~~~~~~~~~~~~

There's some basic transforms available in the image menu.

Shear Image
    This will allow you to skew the whole image and it's layers.
Rotate
    This will allow you to rotate the image and all it's layers quickly.
Mirror Horizontal/Vertical
    This will allow you to mirror the whole image with all it's layers.

But there's more options than that...

Cropping and resizing the canvas
--------------------------------

You can crop and image with the
:ref:`crop_tool`, to cut away extra space and improve the composition.

Trimming
~~~~~~~~

Using :menuselection:`Image --> Trim to Layer`, Krita resizes the image to the dimensions
of the layer selected. Useful for when you paste a too large image into
the layer and want to resize the canvas to the extent of this layer.

:menuselection:`Image --> Trim to Selection` is a faster cousin to the crop tool, This helps
us to resize the canvas to the dimension of any active selection. This
is especially useful with right clicking the layer on the layer stack
and choosing Select Opaque. :menuselection:`Image --> Trim to Selection` will then crop the
canvas to the selection bounding box.

:menuselection:`Image --> Trim to Image Size` is actually for layers, and will trim all
layers to the size of the image, making your files lighter by getting
rid of invisible data.

Resizing the canvas
-------------------

You can also resize the canvas via :menuselection:`Image --> Resize Canvas`(or :kbd:`Ctrl + Alt +
C`). The dialog box is shown below.

.. image:: /images/en/Resize_Canvas.png

In this, constraint proportions will make sure the height and width stay
in proportion to each other as you change them. Offset makes indicates
where the new canvas space is added around the current image. You
basically decide where the current image goes(if you press the
left-button, it'll go to the center left, and the new canvas space will
be added to the right of the image).

Another way to resize the canvas according to the need while drawing is
when you scroll away from the end of the canvas, you can see an arrow
appear. Clicking this will extend the canvas in that direction. You can
see the arrow marked in red in the example below

.. image:: /images/en/Infinite-canvas.png
   :width: 700px


Resizing the image
~~~~~~~~~~~~~~~~~~

:guilabel:`Scale Image to New Size` allows you to resize the whole image. Also,
importantly, this is where you can change the resolution or *upres* your
image. So for instance, if you were initially working at 72 PPI to block
in large shapes and colors, images, etc.. and now you want to really get
in a do some detail work at 300 or 400 PPI this is where you would make
the change.

Like all other dialogs where a chain link appears, when the chain is
linked the aspect ration is maintained. To unlink the chain, just click
on the links and the two halves will separate.

.. image:: /images/en/Scale_Image_to_New_Size.png


Separating Images.
~~~~~~~~~~~~~~~~~~

.. image:: /images/en/Separate_Image.png

This powerful image manipulation feature lets you separate an image into
its different components or channels.

This is useful for people working in print, or people manipulating game
textures. There's no combine functionality, but what you can do, if
using colored output, is to set two of the channels to the addition
:ref:`blending_modes`.

For greyscale images in the RGB space, you can use the copy red, copy
green and copy blue blending modes, with using the red one for the red
channel image, etc.

Saving, Exporting and Opening Files
-----------------------------------

when Krita creates or opens a file, it has a copy of the file in memory,
that it edits. This is part of the way how computers work: They make a
copy of their file in the ram. Thus, when saving, Krita takes it's copy
and copies it over the existing file. There's a couple of tricks you can
do with saving.

Save
    Krita saves the current image in it's memory to a defined place on
    the hard-drive. If the image hadn't been saved before, Krita will
    ask you where to save it.
Save As
    Make a copy of your current file by saving it with a different name.
    Krita will switch to the newly made file as it's active document.
Open
    Open a saved file. Fairly straightforward.
Export
    Save a file to a new location without actively opening it. Useful
    for when you are working on a layered file, but only need to save a
    flattened version of it to a certain location.
Open Existing Document As Untitled Document
    This is a bit of an odd one, but it opens a file, and forgets where
    you saved it to, so that when pressing 'save' it asks you where to
    save it. Also called 'import' in other programs.
Create Copy from Current Image
    Makes a new copy of the current image. Similar to Open Existing
    Document As Untitled Document, but then with already opened files.
Save Incremental Version
    Saves the current image as 'filename'\_XXX.kra and switches the
    current document to it.
Save Incremental Backup.
    Exports the current image as 'filename'\_XXX.kra.

.. note::
    Since Krita's file format is compressed data file, in case of corrupt or broken file you can open it with archive managers and extract the contents of the layers. This will help you to recover as much as possible data from the file. On windows you need to rename it to filename.zip to open it.
