.. _color_smudge_brush_engine:

=========================
Color Smudge Brush Engine
=========================

.. image:: /images/icons/colorsmudge.svg


The Color Smudge Brush is a brush engine that allows you to mix colors by smearing or dulling. A very powerful brush engine to the painter.

Options
-------


* :ref:`option_brush_tip`
* :ref:`blending_modes`
* :ref:`option_opacity_n_flow`
* :ref:`option_size`
* :ref:`option_spacing`
* :ref:`option_mirror`
* :ref:`option_softness`
* :ref:`option_rotation`
* :ref:`option_scatter`
* :ref:`option_gradient`
* :ref:`option_airbrush`
* :ref:`option_texture`


Options Unique to the Color Smudge Brush
----------------------------------------

.. _option_color_rate:

Color Rate
~~~~~~~~~~

How much of the foreground color is added to the smudging mix. Works together with :ref:`option_smudge_length` and :ref:`option_smudge_radius`

.. image:: /images/en/Krita_2_9_brushengine_colorrate_04.png

.. _option_smudge_length:

Smudge Length
~~~~~~~~~~~~~

Affects smudging and allows you to set it to Sensors.

There's two major types:

.. image:: /images/en/Krita_2.9_brush_engine_smudge_length_03.png

Smearing
    Great for making brushes that have a very impasto oil feel to them.
Dulling
    Named so because it dulls strong colors.

Using an arithmetic blending type, Dulling is great for more smooth type of painting.

.. image:: /images/en/Krita_2.9_brushengine_smudge_length_01.png

Strength
    Affects how much the smudge length takes from the previous dab it's sampling. This means that smudge-length at 1.0 will never decrease, but smudge-lengths under that will decrease based on spacing and opacity/flow.

.. image:: /images/en/Krita_2.9_brushengine_smudge_length_02.png

.. _option_smudge_radius:

Smudge Radius
~~~~~~~~~~~~~

The Smudge Radius allows you to sample a larger radius when using smudge-length in Dulling mode.

The slider is percentage of the brush-size. You can have it modified with Sensors.

.. image:: /images/en/Krita_2.9_brushengine_smudge_radius_01.png

Overlay
~~~~~~~

Overlay is a toggle that determine whether or not the smudge brush will sample all layers(overlay on), or only the current one.

Tutorial: Color Smudge Brushes
------------------------------
 
I recommend at least skimming over the first part to get an idea of what does what.

Overview and settings
~~~~~~~~~~~~~~~~~~~~~

Overview: Smearing and Dulling
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Color Smudge Brush offers 2 modes, accessible from the Smudge Rate section:
* Smearing: This mode mixes colors by smudging ("smearing") the area underneath.
* Dulling: In his mode, the brush "picks up" the color underneath it, mixes it with its own color, then paints with it. 

.. image:: /images/en/Krita-tutorial5-I.1.png

Smudge Length
^^^^^^^^^^^^^

To better demonstrate the smudge function, I turned the color rate function off.

.. image:: /images/en/Krita-tutorial5-I.2.png

Common behaviors:
* Unchecking the smudge rate function sets smudge rate to 1.00 (not 0.00)
* Opacity: Below 0.50, there is practically no smudging left: keep opacity over 0.50.
 
Differences:
* Spacing with Smearing: the lower the spacing, the smoother the effect, so for smearing with a round brush you may prefer a value of 0.05 or less. Spacing affects the length of the smudge trail, but to a much lesser extent. The "strength" of the effect remains more or less the same however. 
* Spacing with Dulling: the lower the spacing, the stronger the effect: lowering the spacing too much can make the dulling effect too strong (it picks up a color and never lets go of it). The length of the effect is also affected.
* Both Smearing and Dulling have a "smudge trail", but in the case of Dulling, the brush shape is preserved. Instead the trail determines how fast the color it picked up is dropped off.


The other settings should be pretty obvious from the pictures, so I'll spare you some walls of text.

Color Rate, Gradient and Blending modes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. image:: /images/en/Krita-tutorial5-I.3.png

Again, most of the settings behaviors should be obvious from the pictures. Just remember to keep Opacity over 0.50.

Brush tips
^^^^^^^^^^

The Color Smudge Brush has all the same brush tip options as the Pixel Brush!

.. image:: /images/en/Krita-tutorial5-I.4.png

Just remember that the smudge effects are weaker when a brush tip's opacity is lower, so for low-opacity brush tips, increase the opacity and smudge/color rates.

Scatter and other shape dynamics
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Color Smudge Brush shares the following dynamics with the Pixel Brush: Opacity, Size, Spacing, Rotation, and Scatter.

However, because of the Smudge effects, the outcome will be different from the Pixel Brush. In particular, the Scatter option becomes much more significant.

.. image:: /images/en/Krita-tutorial5-I.5-1.png

A few things to note:

* Scattering is proportional to the brush size. It's fine to use a scattering of 5.00 for a tiny round brush, but for bigger brushes, you may want to get it down to 0.50 or less.
* You may notice the lines with the Smearing option. Those are caused by the fact that it picked up the hard lines of the rectangle.
* For scattering, the brush picks up colors within a certain distance, not the color directly under the paintbrush:

.. image:: /images/en/Krita-tutorial5-I.5-2.png

Other color behaviors: Gradient, Blending modes, Overlay mode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Gradient
""""""""

Gradient is equivalent to the Source -> Gradient and Color -> Mix for the Pixel brush: the color will vary between the colors of the gradient. 

.. image:: /images/en/Krita-tutorial5-I.6-1.png

You can either:

* Leave the default Foreground -> Background gradient setting, and just change the foreground and background colors
* Select a more specific gradient
* Or make custom gradients.

Blending Modes
""""""""""""""

Blending Modes work just like with the Pixel Brush. The color used though is the color from Color rate.

Color Blending modes with the smudge brush are even harder to predict than with the pixel brush, so I'll leave you to experiment on your own.

Overlay Mode
""""""""""""

By default, the Color Smudge Brush only takes information from the layer it is on. However, if you want it to take color information from All the layers, you can turn on the Overlay mode.

Be aware though, that it does so by "picking up" bits of the layer underneath, which may mess up your drawing if you later make changes to the layer underneath.

Use cases: Smudging and blending
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This part describes use cases with color rate off.

I won't explain the settings for dynamics in detail, as you can find the explanations in the Pixel Brush tutorial.

Smudging effects
^^^^^^^^^^^^^^^^

For simple smudging:

# Pick the Color Smudge Brush. You can use either Smearing or Dulling. 

# Turn off Color Rate

# Smudge away

.. image:: /images/en/Krita-tutorial5-II.2.png

When using lower opacity brush tips, remember to "compensate" for the less visible effects by increasing both Smudge Rate and Opacity, if necessary to maximum.

Some settings for Smearing
""""""""""""""""""""""""""

* For smoother smearing, decrease spacing. Remember that spacing is proportional to brush tip size. For a small round brush, 0.10 spacing is fine, but for mid-sized and large brushes, decrease spacing to 0.05 or less.

Some settings for Dulling
"""""""""""""""""""""""""

* Lowering the spacing will also make the smudging effect stronger, so find a right balance. 0.10 for most mid-sized round brushes should be fine.
* Unlike Smearing, Dulling preserves the brush shape and size, so it won't "fade off" in size like Smearing brushes do. You can mimic that effect though with a simple size fade dynamic.

Textured blending
^^^^^^^^^^^^^^^^^

In this case, what I refer to as "Blending" here is simply using one of the following two dynamics:
* Rotation set to Distance or Fuzzy

* And/or Scatter:
    * For most mid-sized brushes you will probably want to lower the scatter rate to 0.50 or lower. Higher settings are okay for tiny brushes.
    * Note that Scatter picks colors within a certain distance, not the color directly under the brush (see [[Special:myLanguage/Krita/Tutorial_5|Brush tips]])
 
* Optional: Pile on size and other dynamics and vary brush tips In fact, the Color Smudge brush is not a blur brush, so smudging is not a very good method of "smooth" blending. To blend smoothly, you'll have better luck with:
* Building up the transition by painting with intermediate values, described later
* Or using the "blur with feathered selection" method that I'll briefly mention at the end of this tutorial.

I've tried to achieve smooth blending with Color Smudge brush by adding rotation and scatter dynamics, but honestly they looked like crap.

However, the Color Smudge brush is very good at "textured blending":

.. image:: /images/en/Krita-tutorial5-II.3.png

Basically you can paint first and add textured transitions after.

Use cases: Coloring
~~~~~~~~~~~~~~~~~~~

For this last section, Color Rate is on.

Layer options
^^^^^^^^^^^^^

Before we get started, notice that you have several possibilities for your set up:
* Shading on the same layer
* Shading on a separate layer, possibly making use of alpha-inheritance. The brush blends with the transparency of the layer it's on. This means:

    * If the area underneath is more of less uniform, the output is actually similar as if shading on the same layer

        * But if the area underneath is not uniform, then you'll get fewer color variations.

* Shading on a separate layer, using Overlay mode. Use this only if you're fairly sure you don't need to adjust the layer below, or the colors may become a mess.

.. image:: /images/en/Krita-tutorial5-III.1-1.png

Issue with transparency
"""""""""""""""""""""""

The Color Smudge Brush blends with transparency. What this means is that when you start a new, transparent layer and "paint" on this layer, you will nearly always get less than full opacity.

Basically:

* It may look great when you're coloring on a blank canvas
* But it won't look so great when you add something underneath

.. image:: /images/en/Krita-tutorial5-III.1-2.png

The solution is pretty simple though:

* Make sure you have the area underneath colored in first:
    * With tinting, you already have the color underneath colored, so that's done
    * For painting, roughly color in the background layer first
    * Or color in the shape on a new layer and make use of alpha-inheritance
* For the last solution, use colors that contrast highly with what you're using for best effect. For example, shade in the darkest shadow area first, or the lightest highlights, and use the color smudge brush for the contrasting color.

.. image:: /images/en/Krita-tutorial5-III.1-3.png

Soft-shading
~~~~~~~~~~~~

Suppose you want more or less smooth color transitions. You can either:
* Color Rate as low as 0.10 for round brushes, higher with non fully opaque brush tips.
* Or set the Smudge Rate as low as 0.10 instead. 
* Or a combination of the two. Please try yourself for the output you like best.
* Optional: turn on Rotation for smoother blending
* Optional: turn on Scatter for certain effects
* Optional: fiddle with Size and Opacity dynamics as necessary.

.. image:: /images/en/Krita-tutorial5-III.2-1.png

This remains, in fact, a so-so way of making smooth transitions. It's best to build up intermediate values instead. Here:
* I first passed over the blue area three times with a red color. I select 3 shades.
* I color picked each of these values with Ctrl+click, then used them in succession

.. image:: /images/en/Krita-tutorial5-III.2-2.png

Painting: thick oil style
~~~~~~~~~~~~~~~~~~~~~~~~~

Many of the included color smudge brush presets produce a thick oil paint-like effect.
This is mainly achieved with the Smearing mode on. Basically:
* Smearing mode with high smudge and color rates
** Both at 0.50 are fine for normal round brushes or fully opaque predefined brushes
** Up to 1.00 each for brushes with less density or non fully-opaque predefined brushes
   
* Add Size/Rotation/Scatter dynamics as needed. When you do this, increase smudge and color rates to compensate for increased color mixing.

.. image:: /images/en/Krita-tutorial5-III.3-1.png

One thing I really like to do is to set different foreground and background colors, then turn on Gradient -> Fuzzy. Alternatively, just paint with different colors in succession (bottom-right example).

.. image:: /images/en/Krita-tutorial5-III.3-2.png

Here's some final random stuff. With pixel brushes, you can get all sorts of frill designs by using elongated brushes and setting the dynamics to rotation. You won't get that with Color Smudge Brushes. Instead you'll get something that looks more like... yarn. Which is cool too. Here, I just used oval brushes and rotation -> distance.

.. image:: /images/en/Krita-tutorial5-III.3-3.png

Painting: Digital watercolor style
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When I say "digital watercolor", it refers to a style often seen online, i.e. a soft, smooth shading style rather than realistic watercolor. For this you mostly need the Dulling mode. A few things:
* Contrary to the Smearing mode, you may want to lower opacity for normal round brushes to get a smoother effect, to 0.70 for example.
* Vary the brush tip fade value as well.
* When using Scatter or other dynamics, you can choose to set smudge and color values to high or low values, for different outcomes.

.. image:: /images/en/Krita-tutorial5-III.4.png

Blurring
~~~~~~~~

You can:

* Paint then smudge, for mostly textury transitions
* Or build up transitions by using intermediate color values

If you want even smoother effects, well, just use Blur. Gaussian blur to be exact.

.. image:: /images/en/Krita-tutorial5-III.5.png

And there you go. That last little trick concludes this tutorial.

