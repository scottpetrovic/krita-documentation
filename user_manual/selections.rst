.. meta::
   :description:
        How selections work in Krita.

.. metadata-placeholder

   :authors: - Scott Petrovic
             - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Hulmanen
   :license: GNU free documentation license 1.3 or later.

.. index:: Selection
.. _selections_basics:

==========
Selections
==========

Selections allow you to pick a specific area of your artwork to change.
There are many selection tools available that select in different ways.
Once an area is selected most tools will stay inside that area. On that
area you can draw or use gradients to quickly get colored and/or shaded
shapes with hard edges.

Creating Selections
-------------------

The most common selection tools all exist at the bottom of the toolbox.
Each tool selects things slightly differently. The links for each tool
go into a more detailed description with how to use it.

.. csv-table::

    :ref:`rectangle_selection_tool` , |toolselectrect|, Select the shape of a square.
    :ref:`ellipse_selection_tool` , |toolselectellipse|, Select the shape of a circle.                                                                                                                                                  
    :ref:`polygonal_selection_tool` , |toolselectpolygon|, Click where you want each point of the Polygon to be. Double click to end your polygon and finalize your selection area. Use Shift + Z to undo last point.
    :ref:`outline_selection_tool` , |toolselectoutline|, Outline/Lasso tool is used for a rough selection by drawing the outline.                                                                                                       
    :ref:`similar_selection_tool` , |toolselectsimilar|, Similar Color Selection Tool                                                                                                                                                   
    :ref:`contiguous_selection_tool` , |toolselectcontiguous|, "Contiguous or “Magic Wand” selects a field of color, Adjust the fuzziness to allow more changes in the field of color, by default limited to the current layer."
    :ref:`path_selection_tool` , |toolselectpath|, "Path select an area based on a vector path, click to get sharp corners or drag to get flowing lines and close the path with enter or connecting back to the first point."

.. note::
    
    You can also use the transform tools on your selection, a great way to try different proportions on parts of your image.

Editing Selections
------------------

The tool options for each selection tool gives you the ability to modify
your selection.

+-------------+---------------+------------+
| Action      | Modifier      | Shortcut   |
+-------------+---------------+------------+
| Replace     | Ctrl          | --         |
+-------------+---------------+------------+
| Intersect   | Shift + Alt   | --         |
+-------------+---------------+------------+
| Add         | Shift         | A          |
+-------------+---------------+------------+
| Subtract    | Alt           | S          |
+-------------+---------------+------------+

Removing Selections
-------------------

If you want to delete the entire selection, the easiest way is de-select
everything. :menuselection:`Select --> Deselect`. Shortcut :kbd:`Ctrl + Shift + A`.

Display Modes
-------------

In the bottom left hand corner of the status bar there is a button to
toggle how the selection is displayed. The two display modes are the
following: (Marching) Ants and Mask. The red color with Mask can be
changed in the preferences. You can edit the color under :menuselection:`Settings --> Configure Krita --> Display --> Selection Overlay`. If there is no selection,
this button will not do anything.

.. image:: /images/en/Ants-displayMode.jpg

Ants display mode (default) is best if you want to see the un-selected
area.

.. image:: /images/en/Mask-displayMode.jpg

Mask display mode is good if you are interested in seeing the various
transparency levels for your selection. For example, you can create a
selection with a gradient.

Global Selection Mask (Painting a Selection)
--------------------------------------------

The global Selection Mask is your selection that appears on the layers
docker. By default this is hidden, so you will need to make it visible
:menuselection:`Select --> Show Global Selection Mask`.

.. image:: /images/en/Global-selection-mask.jpg

Once the global Selection Mask is shown, you will need to create a
selection. The benefit of using this is that you can paint your
selection using any of the normal painting tools. The information is
saved as greyscale. You might want to switch to the Mask display mode if
it is difficult to see the results.

Selection from layer transparency
---------------------------------

You can create a selection based on a layer's transparency by
right-clicking on the layer in the layer docker and selecting “Select
Opaque” from the context menu.

Pixel and Vector Selection Types
--------------------------------

Vector selections allow you to modify your selection with vector anchor
tools. Pixel selections allow you to modify selections with pixel
information. They both have their benefits and disadvantages. You can
convert one type of selection to another.

.. image:: /images/en/Vector-pixel-selections.jpg

When creating a selection, you can select what type of selection you
want from the Mode in the selection tool options: Pixel or Vector.

Vector selections can can modify as any other vector shape with the
“Shape Handle” tool, if you try to paint on a vector selection it will
be converted into a pixel selection. Pixel selections can be painted
with any tool. You can also convert vector shapes to selection. In turn,
vector selections can be made from vector shapes, and vector shapes can
be converted to vector selections using the options in the selections
menu. Krita will add a new vector layer for this shape.

One of
the most common reasons to use vector selections is that they give you
the ability to move and transform a selection. Moving the selection with
a pixel selection will move the content on the layer. Moving the
selection on a vector selection will only move the selection. You can
also use the path editing tool to change the anchor points in the
selection

If you started with a pixel selection, you can still convert it to a
vector selection to get these benefits. Go to Select > Convert to Vector
Selection.

.. note::
    If you have multiple levels of transparency when you convert a selection to vector, you will lose the grey values.

Common Shortcuts while Using Selections
---------------------------------------

-  Copy -- :kbd:`Ctrl + C` or :kbd:`Ctrl + Ins`
-  Paste -- :kbd:`Ctrl + V` or :kbd:`Shift + Ins`
-  Cut -- :kbd:`Ctrl + X`, :kbd:`Shift + Del`
-  Copy From All Layers -- :kbd:`Ctrl + Shift + C`
-  Copy Selection to New Layer -- :kbd:`Ctrl + Alt + J`
-  Cut Selection to New Layer -- :kbd:`Ctrl + Shift + J`
-  Display or hide selection with :kbd:`Ctrl + H`
