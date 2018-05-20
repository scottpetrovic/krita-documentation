.. meta::
   :description:
        Krita's multibrush tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Nmaghrufusman
   :license: GNU free documentation license 1.3 or later.

.. index:: Tools, Multibrush, Mandala, Symmetry, Rotational Symmetry
.. _multibrush_tool:

===============
Multibrush Tool
===============

|toolmultibrush|

The Multibrush tool allows you to draw using multiple instances of a freehand brush stroke at once, it can be accessed from the Toolbox docker or with the default shortcut :kbd:`q`. Using the Multibrush is similar to toggling the :ref:`mirror_tools`, but the Multibrush is more sophisticated, for example it can mirror freehand brush strokes along a rotated axis.

The settings for the tool will be found in the tool options dock.

The multibrush tool has three modes and the settings for each can be found in the tool options dock. Symmetry and mirror reflect over an axis which can be set in the tool options dock. The default axis is the center of the canvas.

.. image:: /images/en/Krita-multibrush.png
   :align: center

The three modes are:

Symmetry
    Symmetry will reflect your brush around the axis at even intervals. The slider determines the number of instances which will be drawn on the canvas.
Mirror
    Mirror will reflect the brush across the X axis, the Y axis, or both.
Translate
    Translate will paint the set number of instances around the cursor at the radius distance.
Snowflake
    This works as a mirrored symmetry, but is a bit slower than symmetry+toolbar mirror mode.

The assistant and smoothing options work the same as in the :ref:`freehand_brush_tool`, though only on the real brush and not it's copies.
