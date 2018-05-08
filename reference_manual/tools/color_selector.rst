.. meta::
   :description lang=en:
        Krita's color selector tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Emmet O'Neill
   :license: GNU free documentation license 1.3 or later.
   
.. _color_picker_tool:

===================
Color Selector Tool
===================


This tool allows you to choose a point from the canvas and make the color of that point the active foreground color. When a painting or drawing tool is selected the Color Picker tool can also be quickly accessed by pressing :kbd:`Ctrl`.

.. image:: /images/en/Color_Dropper_Tool_Options.png

There are several options shown in the Tool Options docker when the Color Picker tool is active:

The first drop down box allows you to select whether you want to sample from all visible layers or only the active layer. You can choose to have your selection update the current foreground color, to be added into a color palette, or to do both.

.. versionadded:: 4.1

    The middle section contains a few properties that change how the Color Picker picks up color; you can set a :guilabel:`radius`, which will average the colors in the area around the cursor, and you can now also set a :guilabel:`blend` percentage, which controls how much color is "soaked up" and mixed in with your current color. Read :ref:`mixing_colors` for information about how the Color Picker's blend option can be used as a tool for off-canvas color mixing.

At the very bottom is the Info Box, which displays per-channel data about your most recently picked color. Color data can be shown as 8-bit numbers or percentages.
