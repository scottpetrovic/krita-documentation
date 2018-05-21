.. meta::
   :description:
        Krita's path tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. index:: Tools, Vector, Path, Bezier Curve, Pen
.. _path_tool:
.. _bezier_curve_tool:

=================
Bezier Curve Tool
=================

|toolbeziercurve|

You can draw curves by using this tool. Click the |mouseleft| to indicate the starting point of the curve, then click again for consecutive control points of the curve.

:program:`Krita` will show a blue line with two handles when you add a control point. You can drag these handles to change the direction of the curve in that point.

On a vector layer, you can click on a previously inserted control point to modify it. With an intermediate control point (i.e. a point that is not the starting point and not the ending point), you can move the direction handles separately to have the curve enter and leave the point in different directions. After editing a point, you can just click on the canvas to continue adding points to the curve.

Pressing :kbd:`Del` will remove the currently selected control point from the curve. Double-click the |mouseleft| on any point of the curve or press :kbd:`Enter` to finish drawing, or press :kbd:`Esc` to cancel the entire curve. You can use :kbd:`Ctrl` while keeping the left mouse button pressed to move the entire curve to a different position.

While drawing :kbd:`Ctrl` while dragging will push the handles both way. :kbd:`Alt` will create a sharp corner, and :kbd:`shift` will allow you to make a handle while at the end of the curve. |mouseright| will undo the last added point.

Tool Options
------------
