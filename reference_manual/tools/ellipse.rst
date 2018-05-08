.. _ellipse_tool:

.. meta::
   :description lang=en:
        Krita's ellipse tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - TPaulssen
   :license: GNU free documentation license 1.3 or later.
   
============
Ellipse Tool
============

|toolellipse|

Use this tool to paint an ellipse. The currently selected brush is used for drawing the ellipse outline. Click and hold the left mouse button to indicate one corner of the ‘bounding rectangle’ of the ellipse, then move your mouse to the opposite corner. :program:`Krita` will show a preview of the ellipse using a thin line. Release the button to draw the ellipse.

While dragging the ellipse, you can use different modifiers to control the size and position of your ellipse:

In order to make a circle instead of an ellipse, hold :kbd:`Shift` while dragging. After releasing :kbd:`Shift` any movement of the mouse will give you an ellipse again:

.. image:: /images/en/Krita_ellipse_circle.gif
   :align: center

In order to keep the center of the ellipse fixed and only growing and shrinking the ellipse around it, hold :kbd:`Ctrl` while dragging:

.. image:: /images/en/Krita_ellipse_from_center.gif
   :align: center

In order to move the ellipse around, hold :kbd:`Alt`:

.. image:: /images/en/Krita_ellipse_reposition.gif
   :align: center

You can change between the corner/corner and center/corner dragging methods as often as you want by holding down or releasing :kbd:`Ctrl`, provided you keep the left mouse button pressed. With :kbd:`Ctrl` pressed, mouse movements will affect all four corners of the bounding rectangle (relative to the center), without :kbd:`Ctrl`, the corner opposite to the one you are moving remains still. With :kbd:`Alt` pressed, all four corners will be affected, but the size stays the same.

Tool Options
------------
