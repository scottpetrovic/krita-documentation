.. meta::
   :description:
        Overview of the artistic color selector docker.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. index:: Color, Color Selector, ! Artistic Color Selector
.. _artistic_color_selector_docker:

============================
Artist Color Selector Docker
============================

.. image:: /images/en/Krita_Artistic_Color_Selector_Docker.png

A round selector that tries to give you the tools to select colors ramps efficiently.

Preference
----------

Set the color model used by the selector, as well as the amount of segments.

Reset
-----

Reset the selector to a default stage.

Absolute
--------

This changes the algorithm around so it gives proper values for the grey. Without absolute, it'll use HSV values for grey to the corresponding hue and lightness.

Usage
-----

|mouseleft| the swatches to change the foreground color.
Use |mouseright| + Drag to shift the alignment of the selector swatches within a specific saturation ring. Use |mouseleft| + Drag to shift the alignment of all swatches.

This selector does not update on change of foreground color.
