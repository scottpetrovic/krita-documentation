.. meta::
   :description lang=en:
        Common workflows used in Krita

.. metadata-placeholder
   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. _flat_coloring:

=============
Flat Coloring
=============

So you've got a cool black on white drawing, and now you want to color it! The thing we’ll aim for in this tutorial is to get your lineart colored in with flat colors. So no shading just yet. We’ll be going through some techniques for preparing the lineart, and we’ll be using the layer docker to put each colour on a separate layer, so we can easily access each colour when we add shading.

.. note:: This tutorial is adapted from this `tutorial <http://theratutorial.tumblr.com/post/66584924501/flat-colouring-in-the-kingdom-of-2d-layers-are>`_ by it's original author.

Understanding Layers
--------------------

To fill lineart comfortably, it's best to take advantage of the layerstack. The layer stack is pretty awesome, and it's one of those features that make digital art super-convenient.

In traditional art, it is not uncommon to first draw the full background before drawing the subject. Or to first draw a line art and then colour it in. Computers have a similar way of working.

In programming, if you tell a computer to draw a red circle, and then afterwards tell it to draw a smaller yellow circle, you will see the small yellow circle overlap the red circle. Switch the commands around, and you will not see the yellow circle at all: it was drawn before the red circle and thus ‘behind’ it.

This is referred to as the “drawing order”. So like the traditional artist, the computer will first draw the images that are behind everything, and layer the subject and foreground on top of it. The layer docker is a way for you to control the drawing order of multiple images, so for example, you can have your lineart drawn later than your colors, meaning that the lines will be drawn over the colors, making it easier to make it neat!

Other things that a layer stack can do are blending the colors of different layers differently with blending modes, using a filter in the layer stack, or using a mask that allows you to make parts transparent.



To fill lineart comfortably, it's best to take advantage of the layerstack. The layer stack is pretty awesome, and it's one of those features that make digital art super-convenient.

In traditional art, it is not uncommon to first draw the full background before drawing the subject. Or to first draw a line art and then colour it in. Computers have a similar way of working.

In programming, if you tell a computer to draw a red circle, and then afterwards tell it to draw a smaller yellow circle, you will see the small yellow circle overlap the red circle. Switch the commands around, and you will not see the yellow circle at all: it was drawn before the red circle and thus ‘behind’ it.

This is referred to as the “drawing order”. So like the traditional artist, the computer will first draw the images that are behind everything, and layer the subject and foreground on top of it. The layer docker is a way for you to control the drawing order of multiple images, so for example, you can have your lineart drawn later than your colors, meaning that the lines will be drawn over the colors, making it easier to make it neat!

Other things that a layer stack can do are blending the colors of different layers differently with blending modes, using a filter in the layer stack, or using a mask that allows you to make parts transparent.

.. tip:: Programmers talk about transparency as ''Alpha'', which is because the 'a' symbol is used to present transparency in the algorithms for painting one color on top of another. Usually when you see the word ''Alpha'' in a graphics program, just think of it as affecting the transparency.

Preparing your line-art
-----------------------

Put the new layer underneath the layer containing the lineart(drag and drop or use the up/down arrows for that), and draw on it.

.. image:: /images/en/flat-coloring/Krita_filling_lineart14.png
    :alt: layer structure for flatting in krita

…And notice nothing happening. This is because the white isn’t transparent. You wouldn’t really want it to either, how else would you make convincing highlights? So what we first need to do to colour in our drawing is prepare our lineart. There’s several methods of doing so, each with varying qualities.

The Multiply Blending Mode
--------------------------

So, typically, to get a black and white lineart usable for colouring, you can set the blending mode of the lineart layer to Multiply. You do this by selecting the layer and going to the drop down that says **Normal** and setting that to **Multiply**.

.. image:: /images/en/flat-coloring/Krita_filling_lineart1.png
   :alt: blend mode setup of lineart flat coloring

And then you should be able to see your colors!

Multiply is not a perfect solution however. For example, if through some image editing magic I make the lineart blue, it results into this:

.. image:: /images/en/flat-coloring/Krita_filling_lineart2.png
    :alt: effects of multiply blend mode

This is because multiply literally multiplies the colors. So it uses maths!

What it first does is take the values of the RGB channels, then divides them by the max(because we're in 8bit, this is 255), a process we call normalising. Then it multiplies the normalised values. Finally, it takes the result and multiplies it with 255 again to get the result values.

.. list-table::
    :header-rows: 1

    * -
      - Pink
      - Pink(normalised)
      - Blue
      - Blue(normalised)
      - Normalised, multiplied
      - Result
    * - Red
      - 222
      - 0.8705
      - 92
      - 0.3607
      - 0.3139
      - 80
    * - Green
      - 144
      - 0.5647
      - 176
      - 0.6902
      - 0.3897
      - 99
    * - Blue
      - 123
      - 0.4823
      - 215
      - 0.8431
      - 0.4066
      - 103

This isn't completely undesirable, and a lot of artists use this effect to add a little richness to their colors.

Advantages
""""""""""

Easy, can work to your benefit even with coloured lines by softening the look of the lines while keeping nice contrast.

Disadvantages
"""""""""""""

Not actually transparent. Is a little funny with coloured lines.

Fill Tool
---------

.. image:: /images/icons/fill_tool.svg
    :alt: fill-tool icon

In most cases the fill-tool can’t deal with the anti-aliasing(the soft edge in your lineart to make it more smooth when zoomed out) In Krita you have the grow-shrink option. Setting that to say… 2 expands the colour two pixels.

Threshold decides when the fill-tool should consider a different colour pixel to be a border. And the feathering adds a extra soft border to the fill.

Now, if you click on a gapless-part of the image with your preferred colour…(Remember to set the opacity to 1.0!)

Depending on your lineart, you can do flats pretty quickly. But setting the threshold low can result in little artifacts around where lines meet:

.. image:: /images/en/flat-coloring/Krita_filling_lineart7.png
    :alt: colors filled with fill tool

However, setting the threshold high can end with the fill not recognising some of the lighter lines. Besides these little artifacts can be removed with the brush easily.

Advantages
""""""""""

Pretty darn quick depending on the available settings.

Disadvantages
"""""""""""""

Again, not great with gaps or details. And it works best with aliased line-art.

Selections
----------

Selections work using the selection tools.

.. image:: /images/en/flat-coloring/Krita_filling_lineart15.png
    :alt: selecting with selection tools for filling color

For example with the :ref:`bezier_curve_selection_tool` you can easily select a curved area, and the with :kbd:`Shift` + |mouseleft| (not |mouseleft| + :kbd:`Shift`, there's a difference!) you can easily add to an existing selection.

.. image:: /images/en/flat-coloring/Krita_filling_lineart16.png
    :alt: selection mask in Krita

You can also edit the selection if you have :menuselection:`Select --> Show Global Selection Mask` turned on. Then you can select the global selection mask, and paint on it. (Above with the alternative selection mode, activated in the lower-left corner of the stats bar)

When done, select the color you want to fill it with and press :kbd:`shift` + `backspace`.

.. image:: /images/en/flat-coloring/Krita_filling_lineart17.png
    :alt: filling color in selection

You can save selections in selection masks by |mouseright| a layer, and then going to :menuselection:`Add --> Local Selection`. You first need to deactivate a selection by pressing the circle before adding a new selection.

This can serve as an alternative way to split out different parts of the image, which is good for more painterly pieces:

.. image:: /images/en/flat-coloring/Krita_filling_lineart18.png
    :alt: result of coloring made with the help of selection tools

Advantages
""""""""""

A bit more precise than filling.

Disadvantages
"""""""""""""

Previewing your color isn't as easy.

Geometric tools
---------------

So you have a tool for making rectangles or circles. And in the case of Krita, a tool for bezier curves.
Select the path tool (|path tool|), and set the tool options to fill=foreground and outline=none. Make sure that your opacity is set to 1.00(fully opaque).

.. |path tool| image:: /images/icons/bezier_curve.svg

By clicking and holding, you can influence how curvy a line draw with the path tool is going to be. Letting go of the mouse button confirms the action, and then you’re free to draw the next point.

.. image:: /images/en/flat-coloring/Krita_filling_lineart8.png
    :alt: filling color in lineart using path tool

You can also erase with a geometric tool. Just press :kbd:`E` or the eraser button.

.. image:: /images/en/flat-coloring/Krita_filling_lineart9.png
    :alt: erasing with path tool

Advantages
""""""""""

Quicker than using the brush or selections. Also decent with lineart that contains gaps.

Disadvantages
"""""""""""""

Fiddly details aren’t easy to fill in with this. So I recommend skipping those and filling them in later with a brush.

Colorize Mask
-------------

So, this is a bit of an odd one. In the original tutorial, you'll see I'm suggesting using G'Mic, but that was a few years ago, and g'mic is a little unstable on windows. Therefore, the Krita developers have been attempting to make an internal tool doing the same.

It is disabled in 3.1, but if you use 4.0 or later, it is in the toolbox. Check the Colorize Mask for more information.

So it works like this:

1. Select the colorize mask tool.
2. Tick the layer you're using.
3. Paint the colors your want to use on the colorize mask
4. Click update to see the results:

.. image:: /images/en/flat-coloring/Krita_filling_lineart10.png
    :alt: coloring with colorise mask

When you are satisfied, |mouseright| the colorize mask, and go to :menuselection:`Convert --> Paint Layer`. This will turn the colorize mask to a generic paint layer. Then, you can fix the last issues by aking the lineart semi-transparent and painting the flaws away with a pixel art brush.

.. image:: /images/en/flat-coloring/Krita_filling_lineart11.png
    :alt: result from the colorise mask

Then, when you are done, split the layers via :menuselection:`Layers --> Split --> Split Layer`. There's a few options you can choose, but the following should be fine:

.. image:: /images/en/flat-coloring/Krita_filling_lineart12.png
    :alt: slitting colors into islands

Finally, press **Ok** and you should get the following. Each color patch it on a different layer, named by the palette in the menu and alpha locked, so you can start painting right away!

.. image:: /images/en/flat-coloring/Krita_filling_lineart13.png
    :alt: resulting color islands from split layers

Advantages
""""""""""

Works with anti aliased lineart. Really quick to get the base work done. Can auto-close gaps.

Disadvantages
"""""""""""""

No anti aliasing of it’s own. You have to choose between getting details right or the gaps auto-closed.

Conclusion
----------

I hope this has given you a good idea of how to fill in flats using the various techniques, as well as getting a hand of different Krita features. Remember that a good flat filled lineart is better than a badly shaded one, so keep practising to get the best out of these techniques!
