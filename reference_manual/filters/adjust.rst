.. meta::
   :description lang=en:
        Overview of the adjust filters.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Raghavendra Kamath <raghavendr.raghu@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. _adjust_filters:

======
Adjust
======

The Adjustment filters are image-wide and are for manipulating colors and contrast.

Dodge
-----

An image-wide dodge-filter. Dodge is named after a trick in traditional dark-room photography that gave the same results.

.. image:: /images/en/Dodge-filter.png

Shadows
    The effect will mostly apply to dark tones.
Midtones
    The effect will apply to mostly midtones.
Highlights
    This will apply the effect on the highlights only.
Exposure
    The strength at which this filter is applied.

Burn
----

An image-wide burn-filter. Burn is named after a trick in traditional dark-room photography that gave similar results.

.. image:: /images/en/Burn-filter.png

Shadows
    The effect will mostly apply to dark tones.
Midtones
    The effect will apply to mostly midtones.
Highlights
    This will apply the effect on the highlights only.
Exposure
    The strength at which this filter is applied.

Levels
------

This filter allows you to directly modify the levels of the tone-values of an image, by manipulating sliders for highlights, midtones and shadows. you can even set an output and input range of tones for the image.A histogram is displayed to show you the tonal distribution.
The default shortcut for levels filter is :kbd:`Ctrl + L` .

.. image:: /images/en/Levels-filter.png

This is very useful to do an initial cleanup of scanned lineart or greyscale images. If the scanned lineart is light you can slide the black triangle to right to make it darker or if you want to remove the grey areas you can slide the white slider to left.

Auto levels is a quick way to adjust tone of an image.
If you want to change the settings later you can click on the create filter mask button to add the levels as a filter mask.

Color Adjustment Curves
-----------------------

This filter allows you to adjust each channel by manipulating the curves. You can even adjust the alpha channel and the lightness channel though this filter.
This is used very often by artists as a post processing filter to slightly heighten the mood of the painting by adjust the overall color. For example a scene with fire breathing dragon may be made more red and yellow by adjusting the curves to give it more warmer look, similarly a snowy mountain scene can be made to look cooler by adjusting the blues and greens. The default shortcut for this filter is :kbd:`Ctrl + M` .

.. image:: /images/en/Color-adjustment-curve.png

Brightness/Contrast curves
--------------------------

This filter allows you to adjust the brightness and contrast of the image by adjusting the curves.

.. note::
    These have been removed in Krita 4.0, because the Color Adjustment filter can do the same. Old files with brightness/contrast curves will be loaded as Color Adjustment curves

Color Balance
-------------

This filter allows you to control the color balance of the image by adjusting the sliders for Shadows, Midtones and Highlights.
The default shortcut for this filter is :kbd:`Ctrl + B` .

.. image:: /images/en/Color-balance.png

Desaturate
----------

Image-wide dasaturation filter. Will make any image Greyscale.
Has several choices by which logic the colors are turned to grey. The default shortcut for this filter is :kbd:`Ctrl + Shift + U` .

.. image:: /images/en/Desaturate-filter.png

Lightness
    This will turn colors to grey using the HSL model.
Luminosity(ITU-R BT.709)
    Will turn the color to grey by using the appropriate amount of weighting per channel according to ITU-R BT.709.
Luminosity(ITU-R BT.601)
    Will turn the color to grey by using the appropriate amount of weighting per channel according to ITU-R BT.601.
Avarage
    Will make an avarage of all channels.
Min
    Substracts all from one another to find the grey value.
Max
    Adds all channels together to get a grey-value

Invert
------

This filter like the name suggests inverts the color values in the image.So white (1,1,1) becomes black(0,0,0), yellow(1,1,0) becomes blue(0,1,1), etc.
The default shortcut for this filter is :kbd:`Ctrl + I` .

Auto Contrast
-------------

Tries to adjust the constrast the universally acceptable levels.

HSV/HSL Adjustment
------------------

With this filter, you can adjust the Hue, Saturation, Value or Lightness, through sliders. The default shortcut for this filter is :kbd:`Ctrl + U` .

.. image:: /images/en/Hue-saturation-filter.png

Threshold
---------

A simple black and white threshold filter that uses sRGB luminosity. It'll convert any image to a image with only black and white, with the input number indicating the threshold value at which black becomes white.

Slope, Offset, Power
--------------------

A different kind of color balance filter, with three color selectors, which will have the same shape as the one used in settings.

This filter is particular because it has been defined by the American Society for Cinema as "ASC_CDL", meaning that it is a standard way of describing a color balance method.

.. image:: /images/en/Krita_filters_asc_cdl.png
   :width: 800
   :align: center

Slope
    This represents a multiplication and determine the adjustment of the brighter colors in an image.
Offset
    This determines how much the bottom is offset from the top, and so determines the color of the darkest colors.
Power
    This represents a power function, and determines the adjustment of the mid-tone to dark colors of an image.
