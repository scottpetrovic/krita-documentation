.. meta::
   :description lang=en:
        A brief explaination about animated brushes and how to use them

.. metadata-placeholder
   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Hulmanen
   :license: GNU free documentation license 1.3 or later.

.. _animated_brush_tips:

===========================
Brush-tips:Animated Brushes
===========================

Question
--------

I was messing with the brushes and noticed there is like an option for it being "animated". What does it mean and how do I use it?

Basically, they’re what is officially called an ‘image hose’, and they’re quite fun. They are basically a brush-tip with multiple image files.

The typical way to make them is to first draw the ‘frames’ on a small canvas, per layer:

.. image:: /images/en/brush-tips/Krita-animtedbrush.png
    :alt: krita Animated brush tip layer setup
    :width: 800

You can use :kbd:`Alt` + |mouseleft| on the layer thumbnails to isolate layers without hiding them.

.. image:: /images/en/brush-tips/Krita-animtedbrush1.png
    :alt: Animated brush tips isolated layers

When done you should have a mess like this.

Go into the brush settings(:kbd:`f5`), and go to predefined brush-tips, and click stamp. You will get this window.

.. image:: /images/en/brush-tips/Krita-animtedbrush2.png
    :alt: Predefined brush tips dialog

And then use style **animated** and selection mode set to **random**.

Krita uses Gimp’s image hose format which allows for random selection of the images, angle based selection, pressure based selection, and incremental selection(I have no idea what constant does).

.. image:: /images/en/brush-tips/Krita-animtedbrush3.png
    :alt: Animated brush image dialog

Then select the above brush and your new leafy-brush tip.

.. image:: /images/en/brush-tips/Krita-animtedbrush4.png
    :alt: Result of an animated brush

And use it to paint trees! (for example)

You can also use animated brush tips to emulate, for example, bristle brush tips that go from very fine bristles to a fully opaque stamp based on pressure, like a dry paintbrush might do. To do this, you would follow the above instructions, but for each layer, create a different cross-section of the brush to correspond with the amount of pressure applied.
