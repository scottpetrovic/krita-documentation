Brush-tips:Fur
==============

Question
    What brushes are best for fur textures?

.. figure:: images/brush-tips_fur/Krita-brushtips-fur_01.png
   :alt: images/brush-tips_fur/Krita-brushtips-fur_01.png
   :align: center

So typically, you see the same logic
applied on fur as on regular
`hair <Special:MyLanguage/Brush-tips:Hair>`__.

`However, you can make a brush a little easier by using the Gradient,
Mix and HSV options in the pixel and color smudge
brushes <Special:MyLanguage/Pixel>`__. Basically, what we want to do is
have a stroke start dark and then become lighter as we draw with it, to
simulate how hair-tips catch more light and look lighter due to being
thinner at the ends, while at the base they are frequently more dark.

.. figure:: images/brush-tips_fur/Krita-brushtips-fur_02.png
   :alt: images/brush-tips_fur/Krita-brushtips-fur_02.png
   :align: center

Take the ink\_brush\_25 and choose under
Brush-tip->predefined “A-2 dirty brush”. Set the spacing to ‘auto’ and
rightclick the spacing bar to type in a value between 0.25 and 0.8. Also
turn on the ‘enable pen-settings’ on flow. Replicate the pressure curve
above on the size option. We don’t want the hairs to collapse to a
point, hence why the curve starts so high. 

.. figure:: images/brush-tips_fur/Krita-brushtips-fur_03.png
   :alt: images/brush-tips_fur/Krita-brushtips-fur_03.png
   :align: center

Then activate value and reproduct this curve with the ‘distance’ or
‘fade’ sensor. Like how the pressure sensor changes a value(like size)
with the amount of pressure you put on the stylus, the distance sensor
measures how many pixels your stroke is, and can change an option
depending on that. For the HSV sensors: If the curve goes beneath the
middle, it’ll become remove from that adjustment, and above the vertical
middle it’ll add to that adjustment. So in this case, for the first
100px the brush dab will go from a darkened version of the active paint
color, to the active paint color, and then for 100px+ it’ll go from the
active color to a lightened version. The curve is an inverse S-curve,
because we want to give a lot of room to the mid-tones.

.. figure:: images/brush-tips_fur/Krita-brushtips-fur_04.png
   :alt: images/brush-tips_fur/Krita-brushtips-fur_04.png
   :align: center

We do the same thing for saturation, so
that the darkened color is also slightly desaturated. Notice how the
curve is close to the middle: This means it’s effect is much less strong
than the value adjustment. The result should look somewhat like the
fifth one from the left on the first row of this:

.. figure:: images/brush-tips_fur/Krita-brushtips-fur_05.png
   :alt: images/brush-tips_fur/Krita-brushtips-fur_05.png
   :align: center

The others are done with the smudge brush
engine, but a similar setup, though using color rate on distance
instead. Do note that it’s very hard to shade realistic fur, so keep a
good eye on your form shadow. You can also use this with grass, feathers
and other vegetation: 

.. figure:: images/brush-tips_fur/Krita-brushtips-fur_06.png
   :alt: images/brush-tips_fur/Krita-brushtips-fur_06.png
   :align: center

For example, if you
use the mix option in the pxiel brush, it’ll mix between the fore and
background color. You can even attach a gradient to the color smudge
brush and the pixel brush. for color smudge this is just the ‘gradient’
option, and it’ll use the active gradient. For the pixel brush, set the
color-source to ‘gradient’ and use the mix option.

.. figure:: images/brush-tips_fur/Krita-brushtips-fur_07.png
   :alt: images/brush-tips_fur/Krita-brushtips-fur_07.png
   :align: center

On tumblr it was suggested this could be
used to do `this tutorial <https://vimeo.com/78183651>`__. Basically,
you can also combine this with the *lighter color* blending mode and
wraparound mode to make making grass-textures really easy!

