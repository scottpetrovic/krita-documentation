.. meta::
   :description lang=en:
        The Gimp Image Hose file format in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. _file_gih:

======
\*.gih
======

The GIMP image hose format. Krita can open and save these, as well as import via the :ref:`predefined brush tab <predefined_brush_tip>`.

Image Hose means that this fileformat allows you to store multiple images and then set some options to make it specify how to output the multiple images.

.. figure:: /images/en/Gih-examples.png
   :figwidth: 640px
   :align: center

   From top to bottom: Incremental, Pressure and Random

Gimp image hose format options:

Constant
    This'll use the first image, no matter what.
Incremental
    This'll paint the image layers in sequence. This is good for images that can be strung together to create a pattern.
Pressure
    This'll paint the images depending on pressure. This is good for brushes imitating the hairs of a natural brush.
Random
    This'll draw the images randomly. This is good for image-collections used in speedpainting as well as images that generate texture. Or perhaps more graphical symbols.
Angle
    This'll use the draging angle to determine with image to draw.

When exporting a krita file as a .gih, you will also get the option to set the default spacing, the option to set the name(very important for looking it up in the UI) and the ability to choose whether or not to generate the mask from the colors.

Use Color as Mask
    This'll turn the darkest values of the image as the ones that paint, and the whitest as transparent. Untick this if you are using colored images for the brush.

We have a :ref:`Krita Brush tip page <brush_tip_animated_brush>` on how to create your own gih brush.
