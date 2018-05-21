.. meta::
   :description:
        How to use clone layers.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Bugsbane
             - Boudewijn Rempt
             - Alan
             - Raghavendra Kamath
   :license: GNU free documentation license 1.3 or later.

.. index:: Layers, Linked Clone, Clone Layer
.. _clone_layers:

============
Clone Layers
============

A clone layer is a layer that keeps an up-to-date copy of another layer. You cannot draw or paint on it directly, but it can be used to create effects by applying different types of layers and masks (e.g. filter layers or masks).

Example uses of Clone Layers.
-----------------------------

For example, if you were painting a picture of some magic person and wanted to create a glow around them that was updated as you updated your charachter, you could:

#. Have a Paint Layer where you draw your character
#. Use the Clone Layer feature to create a clone of the layer that you drew your character on
#. Apply a HSV filter mask to the clone layer to make the shapes on it white (or blue, or green etc.)
#. Apply a blur filter mask to the clone layer so it looks like a "glow"

As you keep painting and adding details, erasing on the first layer, Krita will automatically update the clone layer, making your "glow" apply to every change you make.

