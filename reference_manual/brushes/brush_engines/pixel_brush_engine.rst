.. meta::
   :description:
        The Pixel Brush Engine manual page.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. index:: Brush Engine, Pixel Brush Engine
.. _pixel_brush_engine:

==================
Pixel Brush Engine
==================

.. image:: /images/icons/pixelbrush.svg 

Brushes are ordered alphabetically. The brush that is selected by default when you start with Krita is the '''Pixel Brush'''. The pixel brush is the traditional mainstay of digital art. This brush paints impressions of the brush tip along your stroke with a greater or smaller density. 


.. image:: /images/en/Krita_Pixel_Brush_Settings_Popup.png 

Let's first review these mechanics:

#. select a brush tip. This can be a generated brush tip (round, square, star-shaped), a predefined bitmap brush tip, a custom brush tip or a text.
#. select the spacing: this determines how many impressions of the tip will be made along your stroke
#. select the effects: the pressure of your stylus, your speed of painting or other inputs can change the size, the color, the opacity or other aspects of the currently painted brush tip instance -- some applications call that a "dab".
#. depending on the brush mode, the previously painted brush tip instance is mixed with the current one, causing a darker, more painterly stroke, or the complete stroke is computed and put on your layer. You will see the stroke grow while painting in both cases, of course!

Since 4.0, the Pixel Brush Engine has Multithreaded brush-tips, with the default brush being the fastest mask.

Available Options:

* :ref:`option_brush_tip`
* :ref:`blending_modes`
* :ref:`option_opacity_n_flow`
* :ref:`option_size`
* :ref:`option_ratio`
* :ref:`option_spacing`
* :ref:`option_mirror`
* :ref:`option_softness`
* :ref:`option_sharpness`
* :ref:`option_rotation`
* :ref:`option_scatter`
* :ref:`option_source`
* :ref:`option_mix`
* :ref:`option_airbrush`
* :ref:`option_texture`
* :ref:`option_masked_brush`

Specific Parameters to the Pixel Brush Engine
---------------------------------------------

Darken
~~~~~~

Allows you to Darken the source colour with Sensors.

.. image:: /images/en/Krita_2_9_brushengine_darken_01.png

The color will always become black in the end, and will work with Plain Color, Gradient and Uniform random as source.

Hue, Saturation, Value
~~~~~~~~~~~~~~~~~~~~~~

These parameters allow you to do a HSV adjustment filter on the :ref:`option_source` and control it with Sensors.

.. image:: /images/en/Krita_2_9_brushengine_HSV_01.png

Works with Plain Color, Gradient and Uniform random as source.

Uses
^^^^

.. image:: /images/en/Krita_2_9_brushengine_HSV_02.png

Having all three parameters on Fuzzy will help with rich color texture. In combination with :ref:`option_mix`, you can have even finer control.
