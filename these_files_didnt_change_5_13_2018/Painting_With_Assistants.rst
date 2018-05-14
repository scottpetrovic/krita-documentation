Painting With Assistants
========================

The assistant system allows you to have a little help while drawing
straight lines or circles.

They can function as a preview shape, or you can snap onto them with the
freehand brush tool. In the tool options of free hand brush, you can
toggle 'snap to assistant' to turn on snapping.

.. figure:: images/painting_with_assistants/Krita_basic_assistants.png
   :alt: images/painting_with_assistants/Krita_basic_assistants.png
   :align: center

   Krita's vanishing point assistants in action

The following assistants are available in Krita:

Types:
------

There's several types in Krita. You can select a type of assistant via
the tool options docker.

Ellipse
-------

An assistant for drawing ellipses and circles.

This assistant consists of three points: the first two are the axis of
the ellipse, and the last one is to determine it's width.

Concentric Ellipse
    The same an an ellipse, but allows for making ellipses that are
    concentric to each other.

If you press :kbd:`Shift` while holding the first two handles, they
will snap to perfectly horizontal or vertical lines. Press
:kbd:`Shift` while holding the third handle, and it'll snap to a
perfect circle.

Perspective
-----------

This ruler takes four points and creates a perspective grid.

This grid can be used with the 'perspective' sensor, which can influence
brushes.

If you press :kbd:`Shift` while holding any of the corner handles,
they'll snap to one of the other corner handles, in sets.

Ruler
-----

There are three assistants in this group:

Ruler
    Helps create a straight line between two points.
Infinite Ruler
    Extrapolates a straight line beyond the two visible points on the
    canvas.
Parallel Ruler
    This ruler allows you to draw a line parallel to the line between
    the two points anywhere on the canvas.

If you press :kbd:`Shift` while holding the first two handles, they
will snap to perfectly horizontal or vertical lines.

Spline
------

This assistant allows you to position and adjust four points to create a
cubic bezier curve. You can then draw along the curve, snapping your
brush stroke directly to the curve line. Perfect curves every time!

If you press :kbd:`Shift` while holding the first two handles, they
will snap to perfectly horizontal or vertical lines. Press
:kbd:`Shift` while holding the third or fourth handle, they will
snap relative to the handle they are attached to.

Vanishing Point
---------------

This assistant allows you to create a vanishing point, typically used
for a horizon line. A preview line is drawn and all your snapped lines
are drawn to this line.

It is one point, with four helper points to align it to previously
created perspective lines.

They are made and manipulated with the Ruler Assistant Tool.

If you press :kbd:`Shift` while holding the center handle, they will
snap to perfectly horizontal or vertical lines depending on the position
of where it previously was.

Fish Eye Point
--------------

Like the vanishing point assistant, this assistant is per a set of
parallel lines in a 3d space. So to use it effectively, use two, where
the second is at a 90 degree angle of the first, and add a vanishing
point to the center of both. Or combine one with a parallel ruler and a
vanishing point, or even one with two vanishing points. The
possibilities are quite large.

This assistant will not just give feedback/snapping between the
vanishing points, but also give feedback to the relative left and right
of the assistant. This is so you can use it in edge-cases like panoramas
with relative ease.

If you press :kbd:`Shift` while holding the first two handles, they
will snap to perfectly horizontal or vertical lines. Press
:kbd:`Shift` while holding the third handle, and it'll snap to a
perfect circle.

Tutorials
---------

Check out this in depth discussion and tutorial on
https://www.youtube.com/watch?v=OhEv2pw3EuI

Setting up Krita for technical drawing-like perspectives
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

So now that you've seen the wide range of drawing assistants that Krita
offers, here is an example of how using these assistants you can set up
Krita for technical drawing.

This tutorial below should give you an idea of how to set up the
assistants for specific types of technical views.

If you want to instead do true projection, check out `the projection
category <Special:MyLanguage/Category:Projection>`__.

Orthographic
------------

Orthographic is a mode where you try to look at something from the left
or the front. Typically, you try to keep everything in exact scale with
each other, unlike perspective deformation.

The key assistant you want to use here is the `Parallel Ruler <#Ruler>`__.
You can set these up horizontally or vertically, so you always have access to a Grid.

Axonometric
-----------

All of these are set up using three Parallel Rulers.

.. figure:: images/painting_with_assistants/Assistants_oblique.png
   :alt: images/painting_with_assistants/Assistants_oblique.png
   :align: center

Oblique
    For oblique, set two parallel rulers to horizontal and vertical, and
    one to an angle, representing depth.

.. figure:: images/painting_with_assistants/Assistants_dimetric.png
   :alt: images/painting_with_assistants/Assistants_dimetric.png
   :align: center

Dimetric & Isometric
    Isometric perspective has technically all three rulers set up at
    120° from each other. Except when it's game isometric, then it's a
    type of dimetric projection where the diagonal values are a 116.565°
    from the main. The latter can be easily set up by snapping the
    assistants to a grid.

.. figure:: images/painting_with_assistants/Assistants_trimetric.png
   :alt: images/painting_with_assistants/Assistants_trimetric.png
   :align: center

Trimetric
    Is when all the angles are slightly different. Often looks like a
    slightly angled isometric.

Linear Perspective
------------------

.. figure:: images/painting_with_assistants/Assistants_1_point_perspective.png
   :alt: images/painting_with_assistants/Assistants_1_point_perspective.png
   :align: center

1 Point Perspective
    A 1 point perspective is set up using 1 vanishing point, and two
    crossing perpendicular parallel rulers.

.. figure:: images/painting_with_assistants/Assistants_2_point_perspective.png
   :alt: images/painting_with_assistants/Assistants_2_point_perspective.png
   :align: center

2 Point Perspective
    A 2 point perspective is set up using 2 vanishing point and 1
    vertical parallel ruler. Often, putting the vanishing points outside
    the frame a little can decrease the strength of it.

.. figure:: images/painting_with_assistants/Assistants_2_pointperspective_02.png
   :alt: images/painting_with_assistants/Assistants_2_pointperspective_02.png
   :align: center

.. figure:: images/painting_with_assistants/Assistants_3_point_perspective.png
   :alt: images/painting_with_assistants/Assistants_3_point_perspective.png
   :align: center

3 Point Perspective
    A 3 point perspective is set up using 3 vanishing point rulers.

Logic of the vanishing point
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There's a little secret that perspective tutorials don't always tell
you, and that's that a vanishing point is the point where any two
parallel lines meet. This means that a 1 point perspective and 2 point
perspective are virtually the same.

We can prove this via a little experiment. That good old problem:
drawing a rail-road.

.. figure:: images/painting_with_assistants/Assistants_vanishing_point_logic_01.png
   :alt: images/painting_with_assistants/Assistants_vanishing_point_logic_01.png
   :align: center

You are probably familiar
with the problem: How to determine where the next beam is going to be,
as perspective projection will make them look closer together.

Typically, the solution is to draw a line in the middle and then draw
lines diagonally across. After all, those lines are parallel, meaning
that the exact same distance is used.

.. figure:: images/painting_with_assistants/Assistants_vanishing_point_logic_02.png
   :alt: images/painting_with_assistants/Assistants_vanishing_point_logic_02.png
   :align: center

But because they are
parallel, we can use a vanishing point assistant instead, and we use the
alignedment handles to align it to the diagonal of the beam, and to the
horizontal (here marked with red).

That diagonal can then in turn be used to determine the position of the
beams:

.. figure:: images/painting_with_assistants/Assistants_vanishing_point_logic_03.png
   :alt: images/painting_with_assistants/Assistants_vanishing_point_logic_03.png
   :align: center

Because any given set of lines has a vanishing point(outside of the ones
flat on the view-plane), there can be an infinite amount of vanishing
points in a linear perspective. Therefore Krita allows you to set
vanishing points yourself instead of forcing you to only use a few.

Fish Eye perspective
--------------------

Fish eye perspective works much the same as the linear perspective, the
big difference being that in a fish-eye perspective, any parallel set of
lines has two vanishing points, each for one side.

So, to set them up, the easiest way is one horizontal, one vertical, on
the same spot, and one vanishing point assistant in the middle.

.. figure:: images/painting_with_assistants/Fish-eye.gif
   :alt: images/painting_with_assistants/Fish-eye.gif
   :align: center

But, you can also make one horizontal one that is just as big as the
other horizontal one, and put it halfway:

.. figure:: images/painting_with_assistants/Assistants_fish-eye_2_02.png
   :alt: images/painting_with_assistants/Assistants_fish-eye_2_02.png
   :align: center



