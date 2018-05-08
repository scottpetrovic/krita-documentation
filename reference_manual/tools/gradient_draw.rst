.. meta::
   :description lang=en:
        Krita's gradient tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.
   
.. _gradient_tool:

=============
Gradient Tool
=============

|toolgradient|

The Gradient tool is found in the Tools Panel. Left-Click dragging this tool over the active portion of the canvas will draw out the current gradient.  If there is an active  selection then, similar to the :ref:`fill_tool`, the paint action will be confined to the selection's borders.

Tool Options
------------

Shape:

    Linear
        This will draw the gradient straight.
    Radial
        This will draw the gradient from a center, defined by where you start the stroke.
    Square
        This will draw the gradient from a center in a square shape, defined by where you start the stroke.
    Conical
        This will wrap the gradient around a center, defined by where you start the stroke.
    Conical-symmetric
        This will wrap the gradient around a center, defined by where you start the stroke, but will mirror the wrap once.
    Shaped
        This will shape the gradient depending on the selection or layer.

Repeat:

    None
        This will extend the gradient into infinity.
    Forward
        This will repeat the gradient into one direction.
    Alternating
        This will repeat the gradient, alternating the normal direction and the reversed.

Reverse
    Reverses the direction of the gradient.
Antialias threshold
    Doesn't do anything, original function must have gotten lost in a port.
