.. meta::
   :description:
        Krita's shape selection tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Raghavendra Kamath
   :license: GNU free documentation license 1.3 or later.

.. index:: Tools, Vector, Shape Selection
.. _shape_selection_tool:

====================
Shape Selection Tool
====================

|toolshapeselection|

The shape selection tool used to be called the "default" tool. This had to do with Krita being part of an office suit once upon a time. But this is no longer the case, so we renamed it to its purpose in Krita: Selecting shapes! This tool only works on vector layers, so trying to use it on a paint layer will give a notification.

After you create vector shapes, you can use this tool to select, transform, and access the shape's options in the tool options docker. There are a lot of different properties and things you can do with each vector shape. 

Selection
---------

Selecting shapes works as follows. You can click on a shape to select a single shape. You can select multiple shapes with click drag.

There's two types of drag action, a *blue* one and a *green* one. The blue one is created by dragging from left to right, and will only select shapes that are fully covered by it. The green selection is created from right to left and will select all shapes it touches.

Rotating, Moving, Scaling, Skewing
----------------------------------

Once an object is selected, a dashed box will appear around the object. There are handles that you can pull and stretch the box to scale it. If you move your cursor just outside the corner handles you can rotate the object. 

Tool Options
------------

.. image:: /images/en/Vector-tool-options.png

The tool options of this menu are quite involved, and separated over 3 tabs.

Geometry
~~~~~~~~

Geometry is the first section. It allows you to precisely set the x, y, width and height.

Anchor Lock
    This is not implemented at the moment.
Uniform scaling
    When enabled, it will scale the stroke width with the shape, when not enabled, the stroke with will stay the same.
Global coordinates
    Determines whether the width and height bars use the width and height of the object, while taking transforms into account.
Opacity
    The general opacity, or transparency, of the object.

Stroke
~~~~~~

The stroke tab determines how stroke around the object should look.

The first set of buttons to choose is the fill of the stroke. This has the same features as the fill of the shape, so scroll down a bit for details on that.

Then, there's the settings for the stroke style.

Thickness
    The width of the stroke is determined by this entry. When creating a shape, Krita will use the current brush size to determine the width of the stroke.
Cap and corner style
    If you press the button after the thickness entry, you will be able to set the stroke cap and the stroke corner style.
Line-style
    Determines whether the stroke is solid or uses dashes and dots.
Markers
    Which markers can be added to the stroke. Markers are little figures that will appear at the start, end or all the nodes in between depending on your configuration.

Fill
~~~~

The fill of the shape. As this has the same features as the fill of the stroke, this is explained here as well.

A fill can be a flat color, a gradient or a pattern. Or it can be nothing(transparent)

None
    No fill. It's transparent.
Color
    A flat color, you can select a new one by pressing the color button.
Gradient
    This one has a few more options.

    Type
        A linear or radial gradient.
    Repeat
        How the gradient repeats itself.
    Preset
        A quick menu for choosing a base gradient to edit.

    You can edit the gradient in two ways. The first one is the actual gradient in the docker that you can manipulate. Vectors always use stop-gradients.
    The other way to edit gradients is editing their position on canvas.

Patterns
    Patterns aren't implemented yet.

Rightclick menu
---------------

The shape selection tool has a nice right click menu that gives you several features. If you have an object selected, you can perform various functions like cutting, copying, or moving the object to the front or back.

.. image:: /images/en/Vector-right-click-menu.png

If you have multiple objects selected you can perform "Logical Operators" on them, or boolean operations as they are commonly called. It will be the last item on the right-click menu. You can combine, subtract, intersect, or split the objects.
