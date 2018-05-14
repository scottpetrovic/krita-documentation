Brush-tips:Animated Brush
=========================

Question
    I was messing with the brushes and noticed there is like an option
    for it being “animated”. What does it mean and how do I use it?

Basically, they’re what is officially called an ‘image hose’, and
they’re quite fun. They are basically a brush-tip with multiple image
files.

The typical way to make them is to first draw the ‘frames’ on a small
canvas, per layer:

.. figure:: images/brush-tips_animated_brush/Krita-animtedbrush.png
   :alt: images/brush-tips_animated_brush/Krita-animtedbrush.png
   :align: center

You can use :kbd:`Alt` + on the layer
thumbnails to isolate layers without hiding them.

.. figure:: images/brush-tips_animated_brush/Krita-animtedbrush1.png
   :alt: images/brush-tips_animated_brush/Krita-animtedbrush1.png
   :align: center

When done you should have a mess like this.

Go into the brush settings(:kbd:`F5`), and go to
:menuselection:`predefined brush-tips`, and click 
:menuselection:`stamp`. You will get this window.

.. figure:: images/brush-tips_animated_brush/Krita-animtedbrush2.png
   :alt: images/brush-tips_animated_brush/Krita-animtedbrush2.png
   :align: center

And then use style
:menuselection:`animated` and selection mode set to
:menuselection:`random`.

Krita uses Gimp’s image hose format which allows for random selection of
the images, angle based selection, pressure based selection, and
incremental selection(I have no idea what constant does).

.. figure:: images/brush-tips_animated_brush/Krita-animtedbrush3.png
   :alt: images/brush-tips_animated_brush/Krita-animtedbrush3.png
   :align: center

Then select the above brush and your new
leafy-brush tip. 

.. figure:: images/brush-tips_animated_brush/Krita-animtedbrush4.png
   :alt: images/brush-tips_animated_brush/Krita-animtedbrush4.png
   :align: center

And use it to paint trees! (for example)

You can also use animated brush tips to emulate, for example, bristle
brush tips that go from very fine bristles to a fully opaque stamp based
on pressure, like a dry paintbrush might do. To do this, you would
follow the above instructions, but for each layer, create a different
cross-section of the brush to correspond with the amount of pressure
applied.

