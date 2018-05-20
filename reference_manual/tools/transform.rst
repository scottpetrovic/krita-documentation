.. meta::
   :description:
        Krita's transform tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Micheal Abrahams
             - Raghavendra Kamath
   :license: GNU free documentation license 1.3 or later.

.. index:: Tools, Transform
.. _transform_tool:

==============
Transform Tool
==============

|tooltransform|

The Transform tool lets you quickly transform the current selection or layer. Basic transformation options include resize, rotate and skew. In addition, you have the option to apply advanced transforms such as Perspective, Warp, Cage and Liquid. These are all powerful options and will give you complete control over your selections/layers.  

When you first invoke the tool,  handles will appear at the corners and sides, which you can use to resize your selection or layer. You can perform rotations by moving the mouse above or to the left of the handles and dragging it. You can also click anywhere inside the selection or layer and move it by dragging the mouse.

You can fine-tune the transform tool parameters using tool options docker. The parameters are split between five tabs: Free Transform, Warp, Perspective, Cage and Liquefy.

.. figure:: /images/en/Transform_Tool_Options.png

   Free Transform docker 

Free transform
--------------

This allows you to do basic rotation, resizing, flipping, and even perspective skewing if you hold :kbd:`Ctrl`.Holding the :kbd:`Shift` key will maintain your aspect ratio throughout the transform.

.. figure:: /images/en/Krita_transforms_free.png 

   Free transform in action. 

If you look at the bottom, there's quick buttons for flipping horizontally, vertically and rotating 90 degrees left and right. Furthermore, the button to the left of the anchor point widget allows you to choose whether to always transform using the anchor point, or not.

`Video of how to use the anchor point for resizing. <https://www.youtube.com/watch?v=grzccBVd0O8>`_

Perspective
-----------

While free transform has some perspective options, the perspective transform allows for maximum control. You can drag the corner points, or even the designated vanishing point.

You can also change the size, shear and position transform while remaining in perspective with the tool-options.

.. figure:: /images/en/Krita_transforms_perspective.png 

   Perspective transform

Warp
----

Warp allows you to deform the image by dragging from a grid or choosing the dragging points yourself.

.. figure:: /images/en/Transform_Tool_Options_Warp.png

   Warp Option

.. figure:: /images/en/Krita_transforms_warp.png 

   Free transform in action.

There's warp options: Rigid, Afine and Similtude. These change the algorithm used to determine the strength of the deformation. The flexibility determines, how strong the effect of moving these point are.

Anchor Points
~~~~~~~~~~~~~

You can divide these either by subdivision or drawing custom points.

Subdivision
    This allows you to subdivide the selected area into a grid.
Draw
    Draw the anchor points yourself. Locking the points will put you in transform mode. Unlocking the points back into edit mode.

Cage
----

Create a cage around an image, and when it's closed, you can use it to deform the image. If you have at the least 3 points on the canvas, you can choose to switch between deforming and editing the existing points. 

.. figure:: /images/en/Krita_transforms_cage.png 

    Transforming a straight banana to be curved with the cage tool

Hotkeys
~~~~~~~

Both Cage and Warp use little nodes. These nodes can be selected and deselected together by pressing :kbd:`Ctrl` before clicking nodes.

Then you can move them by pressing the cursor inside the bounding box. Rotating is done by pressing and dragging the cursor outside the bounding box and scaling the same, only one presses :kbd:`Ctrl` before doing the motion.

Liquify
-------

.. image:: /images/en/Transform_Tool_Options_Liquify.png

Like our deform brush, the liquefy brush allows you to draw the deformations straight on the canvas.

Move
    Drag the image along the brush stroke.
Scale
    Grow/Shrink the image under the cursor.
Rotate
    Twirl the image under the cursor
Offset
    Shift the image under the cursor.
Undo
    Erases the actions of other tools.

.. figure:: /images/en/Krita_transforms_liquefy.png 

   Liquefy used to turn an apple into a pear

In the options for each brush there's:

Mode
    This is either wash or build up. :guilabel:`Wash` will normalize the effect to be between none, and the amount parameter as maximum. :guilabel:`Build-up` will just add on until it's impossible..
Size
    The brush size. The button to the right allow you to let it scale with pressure.
Amount
    The strength of the brush. The button to the right let's it scale with tablet-pressure.
Flow
    Only applicable with build-up.
Spacing
    The spacing of the liquefy dabs.
Reverse
    Reverses the action, so grow becomes shrink, rotate results in clockwise becoming counter-clockwise.

.. figure:: /images/en/Krita_transforms_deformvsliquefy.png 

   liquefy on the left and deform brush on the right.

Krita also has a :ref:`deform_brush_engine` which is much faster than liquefy, but has less quality. If you are attempting to make liquefy a little faster, note that it speeds up with the less information it needs to process, so working with liquefy within a selection or using liquefy on a separate layer with little on it will greatly enhance the speed.

Recursive Transform
-------------------
The little spider icon on the lower-left of the transform tool options is the ''Recursive Transform''.

.. figure:: /images/en/Krita_transforms_recursive.png

    Recursive transform transforms all the layers in the group, so with this apple, both the line-art as the fill will be transformed.

Recursive transform, when toggled, allows you to mass-transform all the layers in a group when only transforming the group.

Continuous Transform
--------------------

If you apply a transformation, and try to start a new one directly afterwards, Krita will attempt to recall the previous transform, so you can continue it. This is the *continuous transform*. You can press :kbd:`Esc` to cancel this and start a new transform, or presset :guilabel:`reset` in the tool options while no transform is active.

Transformation Masks
--------------------

These allow you make non-destructive transforms, check :ref:`here <transformation_masks>` for more info.


[[Category:Toolbox]]
