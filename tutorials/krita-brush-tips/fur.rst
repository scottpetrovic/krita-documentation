.. meta::
   :description lang=en:
        A tutorial about creating fur in Krita

.. metadata-placeholder
   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. _Fur:

==============
Brush-tips:Fur
==============

Question
--------

What brushes are best for fur textures?

.. image:: /images/en/brush-tips/Krita-brushtips-fur_01.png
    :alt: Some example of furs and hair

So typically, you see the same logic applied on fur as on regular :ref:`hair`.

`However, you can make a brush a little easier by using the Gradient, Mix and HSV options in the pixel and color smudge brushes <https://docs.krita.org/Pixel>`_. Basically, what we want to do is have a stroke start dark and then become lighter as we draw with it, to simulate how hair-tips catch more light and look lighter due to being thinner at the ends, while at the base they are frequently more dark.

.. image:: /images/en/brush-tips/Krita-brushtips-fur_02.png
    :alt: brush setting dialog for fur brush

Take the ink_brush_25 and choose under Brush-tip->predefined “A-2 dirty brush”. Set the spacing to ‘auto’ and rightclick the spacing bar to type in a value between 0.25 and 0.8. Also turn on the ‘enable pen-settings’ on flow. Replicate the pressure curve above on the size option. We don’t want the hairs to collapse to a point, hence why the curve starts so high.

.. image:: /images/en/brush-tips/Krita-brushtips-fur_03.png
    :alt: brush setting dialog for fur

Then activate value and reproduct this curve with the ‘distance’ or ‘fade’ sensor. Like how the pressure sensor changes a value(like size) with the amount of pressure you put on the stylus, the distance sensor measures how many pixels your stroke is, and can change an option depending on that. For the HSV sensors: If the curve goes beneath the middle, it’ll become remove from that adjustment, and above the vertical middle it’ll add to that adjustment. So in this case, for the first 100px the brush dab will go from a darkened version of the active paint color, to the active paint color, and then for 100px+ it’ll go from the active color to a lightened version. The curve is an inverse S-curve, because we want to give a lot of room to the mid-tones.

.. image:: /images/en/brush-tips/Krita-brushtips-fur_04.png
    :alt: brush setting dialog showing color gradation

We do the same thing for saturation, so that the darkened color is also slightly desaturated. Notice how the curve is close to the middle: This means it’s effect is much less strong than the value adjustment. The result should look somewhat like the fifth one from the left on the first row of this:

.. image:: /images/en/brush-tips/Krita-brushtips-fur_05.png
    :alt: result of the brush that we made

The others are done with the smudge brush engine, but   a similar setup, though using color rate on distance instead. Do note that it’s very hard to shade realistic fur, so keep a good eye on your form shadow. You can also use this with grass, feathers and other vegetation:

.. image:: /images/en/brush-tips/Krita-brushtips-fur_06.png
    :alt: using the fur brush to make grass and hair

For example, if you use the mix option in the pxiel brush, it’ll mix between the fore and background color. You can even attach a gradient to the color smudge brush and the pixel brush. for color smudge this is just the ‘gradient’ option, and it’ll use the active gradient. For the pixel brush, set the color-source to ‘gradient’ and use the mix option.

.. image:: /images/en/brush-tips/Krita-brushtips-fur_07.png
    :alt: fur brush with the color source to gradient and mix option

On tumblr it was suggested this could be used to do `this tutorial <https://vimeo.com/78183651>`_. Basically, you can also combine this with the lighter color blending mode and wraparound mode to make making grass-textures really easy!
