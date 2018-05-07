.. _resource_gradients:

=========
Gradients
=========

Accessing a Gradient
--------------------

The Gradients configuration panel is accessed by clicking the Gradients icon (usually the icon next to the disk).  

.. image:: /images/en/Gradient_Toolbar_Panel.png

Gradients are configurations of blending between colors.  Krita provides over a dozen preset dynamic gradients for you to choose from.  In addition, you can design and save your own.

Some typical uses of gradients are:

* Fill for vector shapes.
* Gradient tool
* As a source of color for the pixel brush.

There is no gradients docker. They can only be accessed through the gradient "quick-menu" in the toolbar.

Editing a Gradient
------------------

Krita has two gradient types:

#. Segmented Gradients, which are compatible with GIMP, have many different features but are also a bit complicated to make.
#. Stop Gradients, which are saved as SVG files and similar to how most applications do their gradients, but has less features than the segmented gradient.

Initially we could only make segmented gradients in Krita, but in 3.0.2 we can also make stop gradients.

.. image:: /images/en/Krita_new_gradient.png
   :align: center

You can make a new gradient by going into the drop-down and selecting the gradient type you wish to have. By default Krita will make a stop-gradient.

Stop Gradients
~~~~~~~~~~~~~~

.. image:: /images/en/Krita_stop_gradient.png
   :align: center

Stop gradients are very straight forward:

* |mouseleft| on the gradient to add a stop.
* |mouseleft| on the stops to select them, and drag to move them.
* |mouseright| on the stops to remove them. A stop gradient will not allow you to remove stops if there's only two left.

.. image:: /images/en/Krita_move_stop.png
   :align: center

A selected stop can have it's color and transparency changed using the color button and the opacity slider below.

.. image:: /images/en/Krita_stop_sudden_change.png
   :align: center

As per SVG spec, you can make a sudden change between stops by moving them close together. The stops will overlap, but you can still drag them around.

Segmented Gradients
~~~~~~~~~~~~~~~~~~~~

.. image:: /images/en/Krita_Editing_Custom_Gradient.png

Segmented gradients are a bit more tricky. Instead of going from color to color, it allows you to define segments, which each can have a begin and end color.

|mouseright| the gradient to call up this menu:

.. image:: /images/en/Krita_segment_gradient_options.png
   :align: center

Split Segment
    This splits the current segment in two, using the white arrow, the segment middle as the place to split. It will also use the color at the white arrow to define the new colors in place in the new segments.
Duplicate segment
    Similar to split, but instead the two new segments are copies of the old one.
Mirror segment.
    Mirrors the segment colors.
Remove segment
    Removes the segment.

|mouseleft| + dragging the black arrows will resize the segments attaching to those arrows. |mouseleft| + dragging the white arrows will change the mid point of that segment, changing the way how the mixture is made.

At the bottom, you can set the color and transparency of either part of the segment.

You can also set the blending. The first is the interpolation mode:

.. image:: /images/en/Krita_gradient_segment_blending.png
   :align: center

#. Linear - Does a linear blending between both segments.
#. Curved - This causes the mix to ease-in and out faster. 
#. Sine - Uses a sine function. This causes the mix to ease in and out slower.
#. Sphere, increasing - This puts emphasis on the later color during the mix.
#. Sphere, descreasing - This puts emphasis on the first color during the mix.

Finally, there's the model:

.. image:: /images/en/Krita_gradient_hsv_cw.png
   :align: center

RGB
    Does the blending in RGB model.
HSV clockwise
    Blends the two colors using the HSV model, and follows the hue clockwise(red-yellow-green-cyan-blue-purple). The above screenshot is an example of this.
HSV counter-clock wise.
    Blends the color as the previous options, but then counter-clockwise.
