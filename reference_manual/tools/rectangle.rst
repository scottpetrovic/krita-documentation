.. meta::
   :description lang=en:
        Krita's rectangle tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.
   
.. _rectangle_tool:

==============
Rectangle Tool
==============

|toolrectangle|

This tool can be used to paint rectangles, or create rectangle shapes on a vector layer. Click and hold the left mouse button to indicate one corner of the rectangle, drag to the opposite corner, and release the button.

Hotkeys and Sticky-keys
-----------------------

There's no default hotkey for switching to rectangle.

If you hold :kbd:`Shift` while drawing, a square will be drawn instead of a rectangle. Holding :kbd:`Ctrl` will change the way the rectangle is constructed. Normally, the first mouse click indicates one corner and the second click the opposite. With :kbd:`Ctrl`, the initial mouse position indicates the center of the rectangle, and the final mouse position indicates a corner. You can press :kbd:`Alt` while still keeping the left mouse button down to move the rectangle to a different location.

You can change between the corner/corner and center/corner drawing methods as often
as you want by pressing or releasing :kbd:`Ctrl`, provided that you keep the left mouse button pressed. With :kbd:`Ctrl` pressed, mouse movements will affect all four corners of the rectangle (relative to the center), without :kbd:`Ctrl`, one of the corners is unaffected.

Tool Options
------------

Fill
~~~~

Not filled.
    The rectangle will be transparent from the inside.
Foreground color
    The rectangle will use the foreground color as fill.
Background color.
    The rectangle will use the background color as fill.
Pattern
    The rectangle will use the active pattern as fill.

Outline
~~~~~~~

No Outline
    The Rectangle will render without outline.
Brush
    The Rectangle will use the current selected brush to outline.

.. note::
    On vector layers, the rectangle will not render with a brush outline, but rather a vector outline.
