Projection: Orthographic and Oblique
====================================

So let's start with the basics...

Orthographic
------------

Despite the fancy name, you probably know what orthographic is. It is a
schematic representation of an object, draw undeformed. Like the
following example:

.. figure:: images/projection_orthographic_and_oblique/Projection-cube_01.png
   :alt: images/projection_orthographic_and_oblique/Projection-cube_01.png
   :align: center

This is a rectangle. We have a front, top and side view. Put into
perspective it should look somewhat like this:

.. figure:: images/projection_orthographic_and_oblique/Projection-cube_02.png
   :alt: images/projection_orthographic_and_oblique/Projection-cube_02.png
   :align: center

While orthographic representations are kinda boring, they're also a good
basis to start with when you find yourself in trouble with a pose. But
we'll get to that in a bit.

Oblique
-------

So, if we can say that the front view is the viewer looking at the
front, and the side view is the viewer directly looking at the side.
(The perpendicular line being the view plane it is projected on)

.. figure:: images/projection_orthographic_and_oblique/Projection-cube_03.png
   :alt: images/projection_orthographic_and_oblique/Projection-cube_03.png
   :align: center

Then we can get a half-way view from looking from an angle, no? 

.. figure:: images/projection_orthographic_and_oblique/Projection-cube_04.png
   :alt: images/projection_orthographic_and_oblique/Projection-cube_04.png
   :align: center
   
If we do that for a lot of different sides… 

.. figure:: images/projection_orthographic_and_oblique/Projection-cube_05.png
   :alt: images/projection_orthographic_and_oblique/Projection-cube_05.png
   :align: center
   
And we line up the sides we get a… 

.. figure:: images/projection_orthographic_and_oblique/Projection-cube_06.png
   :alt: images/projection_orthographic_and_oblique/Projection-cube_06.png
   :align: center

But cubes are boring. I am suspecting
that projection is so ignored because no tutorial applies it to an
object where you actually might NEED projection. Like a face.

First, let's prepare our front and side views:

.. figure:: images/projection_orthographic_and_oblique/Projection_image_01.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_01.png
   :align: center

I always start with the side, and then extrapolate the front view from
it. Because you are using Krita, set up two parallel rulers, one
vertical and the other horizontal. To snap them perfectly, drag one of
the nodes after you have made the ruler, and press <kbd>Shift</kbd> to
snap it horizontal or vertical. In 3.0, you can also snap them to the
image borders if you have :menuselection:`snap to image borders` active via :kbd:`Shift + S`

Then, by moving the mirror to the left, you can design a front-view from
the sideview, while the parallel preview line helps you with aligning
the eyes(which in the above screenshot are too low).

Eventually, you should have something like this:

.. figure:: images/projection_orthographic_and_oblique/Projection_image_02.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_02.png
   :align: center

And of course, let us not forget the top, it's pretty important:

.. figure:: images/projection_orthographic_and_oblique/Projection_image_03.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_03.png
   :align: center

Tip: When you are using Krita, you can just use transform masks to
rotate the side view for drawing the top-view.

The top view works as a method for debugging your orthos as well. If we
take the red line to figure out the orthographics from, we see that our
eyes are obviously too inset. Let's move them a bit more forward, to
around the nose.

.. figure:: images/projection_orthographic_and_oblique/Projection_image_04.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_04.png
   :align: center

If you want to do precision position moving in the tool options docker,
just select 'position' and the input box for the X. Pressing down then
moves the transformed selection left. With Krita 3.0 you can just use
the move tool for this and the arrow keys. Using transform here can be
more convenient if you also have to squash and stretch an eye.

.. figure:: images/projection_orthographic_and_oblique/Projection_image_05.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_05.png
   :align: center

We fix the top view now. Much better.

For faces, the multiple slices are actually pretty important. So
important even, that I have decided we should have these slices on
separate layers. Thankfully, I chose to colour them, so all we need to
do is go to :menuselection:`Layers --> split layer`.

.. figure:: images/projection_orthographic_and_oblique/Projection_image_06.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_06.png
   :align: center

This'll give you a few awkwardly named layers… rename them by selecting
all and mass changing the name in the properties editor:

.. figure:: images/projection_orthographic_and_oblique/Projection_image_07.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_07.png
   :align: center

So, after some cleanup, we should have the following:

.. figure:: images/projection_orthographic_and_oblique/Projection_image_08.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_08.png
   :align: center

Okay, now we're gonna use animation for the next bit.

Set it up as following:

.. figure:: images/projection_orthographic_and_oblique/Projection_image_09.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_09.png
   :align: center

-  Both frontview and sideview are set up as 'visible in timeline' so we
   can always see them.
-  Frontview has it's visible frame on frame 0 and an empty-frame on
   frame 23.
-  Side view has it's visible frame on frame 23 and an empty view on
   frame 0.
-  The end of the animation is set to 23.

.. figure:: images/projection_orthographic_and_oblique/Projection_image_10.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_10.png
   :align: center

Krita can't animate a transformation on multiple layers on multiple
frames yet, so let's just only transform the top layer. Add a
semi-transparent layer where we draw the guide-lines.

Now, select frame 11(halfway), add new frames from frontview, sideview
and the guide-lines. And turn on the onion skin by toggling the lamp
symbols. We copy the frame for the top-view and use the transform tool
to rotate it 45°.

.. figure:: images/projection_orthographic_and_oblique/Projection_image_11.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_11.png
   :align: center

So, we draw our vertical guides again and determine a in-between...

.. figure:: images/projection_orthographic_and_oblique/Projection_image_12.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_12.png
   :align: center

This is about how far you can get with only the main slice, so rotate
the rest as well.

.. figure:: images/projection_orthographic_and_oblique/Projection_image_13.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_13.png
   :align: center

And just like with the cube, we do this for all slices…

.. figure:: images/projection_orthographic_and_oblique/Projection_image_14.png
   :alt: images/projection_orthographic_and_oblique/Projection_image_14.png
   :align: center

Eventually, if you have the top slices rotate every frame with 15°, you
should be able to make a turn table, like this:

.. figure:: images/projection_orthographic_and_oblique/Projection_animation_01.gif
   :alt: images/projection_orthographic_and_oblique/Projection_animation_01.gif
   :align: center

(Because our boy here is fully symmetrical, you can just animate one
side and flip the frames for the other half) (While it is not necessary
to follow all the steps in the theory section to understand the
tutorial, I do recommend making a turn table sometime. It teaches you a
lot about drawing 3/4th faces.

How about… we introduce the top view into the drawing itself?


