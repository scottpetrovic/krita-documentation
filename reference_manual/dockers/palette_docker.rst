.. meta::
   :description:
        Overview of the palette docker.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Raghavendra Kamath <raghavendr.raghu@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. index:: Palettes, Color
.. _palette_docker:

==============
Palette Docker
==============

The palette docker displays various color swatches for quick use. Since 4.0, it also supports editing palettes and organizing colors into groups.

.. image:: /images/en/Palette-docker.png

You can choose from various default palette or you can add your own colors to the palette.

To choose from the default palettes click on the icon in the bottom left corner of the docker, it will show a list of pre-loaded color palettes.
You can click on one and to load it into the docker, or click on import resources (folder icon) to load your own color palette. Creating a new palette can be done by filling out the :guilabel:`name` input, pressing :guilabel:`Save` and selecting your new palette from the list.

* Selecting colors is done by |mouseleft| on a swatch.
* Pressing the delete icon will remove the selected swatch or group. When removing a group, Krita will always ask whether you'd like to keep the swatches. If so, they will be added to the default group above.

.. versionadded:: 4.0

    * Double |mouseleft| a swatch will call up the edit window where you can change the color, the name, the id and whether it's a spot color. On a group this will allow you to set the group name. 
    * |mouseleft| drag will allow you to drag and drop swatches and groups to order them.
    * Pressing the :guilabel:`+` icon will allow you to add a new swatch.
    * Pressing the Folder icon will allow you to add a new group.

The edit and new color dialogs ask for the following:

Color
    The color of the swatch.
Name
    The Name of the color in a human readable format.
ID
    The ID is a number that can be used to index colors. Where Name can be something like "Pastel Peach", ID will probably be something like "RY75".
Spot color
    Currently not used for anything within Krita itself, but spot colors are a toggle to keep track of colors that represent a real world paint that a printer can match. Keeping track of such colors is useful in a printing workflow, and it can also be used with python to recognise spot colors.

If you find the size of color swatches too small, you can increase the size by hovering your mouse over the palette and scrolling while holding :kbd:`Ctrl`.

Krita's native palette format is since 4.0 :ref:`file_kpl`. It also supports importing...

* Gimp Palettes(.gpl)
* Microsoft RIFF palette(.riff)
* Photoshop Binary Palettes(.act)
* PaintShop Pro palettes(.psp)
* Photoshop Swatches (.aco)
* Scribus XML (.xml)
* Swatchbooker (.sbz).
