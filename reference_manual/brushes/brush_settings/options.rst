.. meta::
   :description lang=en:
        Krita's Brush Engine options overview.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Raghavendra Kamath <raghavendr.raghu@gmail.com>
             - Scott Petrovic
             - Hulmanen
             - Nmaghrufusman
   :license: GNU free documentation license 1.3 or later.

.. _brush_options:

=======
Options
=======

.. _option_airbrush:

Airbrush
--------

.. image:: /images/en/Krita_2_9_brushengine_airbrush.png

If you hold the brush still, but are still pressing down, this will keep adding colour onto the canvas. The lower the rate, the quicker the colour gets added.

.. _option_mirror:

Mirror
------

.. image:: /images/en/Krita_Pixel_Brush_Settings_Mirror.png

This allows you to mirror the Brush-tip with Sensors.

Horizontal
    Mirrors the mask horizontally.
Vertical
    Mirrors the mask vertically.

.. image:: /images/en/Krita_2_9_brushengine_mirror.jpg

Some examples of mirroring and using it in combination with :ref:`option_rotation`.

.. _option_rotation:

Rotation
--------

This allows you to affect Angle of your brush-tip with Sensors.

.. image:: /images/en/Krita_2_9_brushengine_rotation.png

.. image:: /images/en/Krita_Pixel_Brush_Settings_Rotation.png

In the above example, several applications of the parameter.

#. Drawing Angle -- A common one, usually used in combination with rake-type brushes. Especially effect because it does not rely on tablet-specific sensors. Sometimes, Tilt-Direction or Rotation is used to achieve a similar-more tablet focussed effect, where with Tilt the 0° is at 12 o'clock, Drawing angle uses 3 o'clock as 0°.
#. Fuzzy -- Also very common, this gives a nice bit of randomness for texture.
#. Distance -- With careful editing of the Sensor curve, you can create nice patterns.
#. Fade -- This slowly fades the rotation from one into another.
#. Pressure -- An interesting one that can create an alternative looking line.

.. _option_scatter:

Scatter
-------

This parameter allows you to set the random placing of a brush-dab. You can affect them with Sensors.

X
    The scattering on the angle you are drawing from.
Y
    The scattering, perpendicular tot he drawing angle(has the most effect)

.. image:: /images/en/Krita_2_9_brushengine_scatter.png

.. _option_sharpness:

Sharpness
---------

.. image:: /images/en/Krita_Pixel_Brush_Settings_Sharpness.png

Puts a threshold filter over the brush mask.

.. _option_size:

Size
----

.. image:: /images/en/Krita_Pixel_Brush_Settings_Size.png

This parameter is not the diameter itself, but rather the curve for how it's affected.

So, if you want to lock the diameter of the brush, lock the Brush-tip. Locking the size parameter will only lock this curve. Allowing this curve to be affected by the Sensors can be very useful to get the right kind of brush. For example, if you have trouble drawing fine lines, try to use a concave curve set to pressure. That way you'll have to press hard for thick lines.

.. image:: /images/en/Krita_2_9_brushengine_size_01.png

Also popular are setting the size to the sensor fuzzy or perspective, with the later in combination with a :ref:`assistant_perspective`

.. image:: /images/en/Krita_2_9_brushengine_size_02.png

.. _option_softness:

Softness
--------

This allows you to affect Fade with Sensors.

.. image:: /images/en/Krita_2_9_brushengine_softness.png

Has a slight brush-decreasing effect, especially noticeable with soft-brush, and is overall more noticeable on large brushes.

.. _option_source:

Source
------

Picks the source-colour for the brush-dab.

Plain Color
    Current foreground color.
Gradient
    Picks active gradient
Uniform Random
    Gives a random colour to each brush dab.
Total Random
    Random noise pattern is now painted.
Pattern
    Uses active pattern, but alignment is different per stroke.
Locked Pattern
    Locks the pattern to the brushdab

.. _option_mix:

Mix
---

Allows you to affect the mix of the :ref:`option_source` color with Sensors. It will work with Plain Color and Gradient as source. If Plain Color is selected as source, it will mix between foreground and background colors selected in color picker. If Gradient is selected, it chooses a point on the gradient to use as painting color according to the sensors selected.

.. image:: /images/en/Krita_2_9_brushengine_mix_01.png

Uses
~~~

.. image:: /images/en/Krita_2_9_brushengine_mix_02.png

Flow map
    The above example uses a :program:`Krita` painted flowmap in the 3d program :program:`Blender`.
    a brush was set to source Gradient and Mix:Drawing angle. The gradient in question contained the 360° for normal map colours. Flow maps are used in several Shaders, such as brushed metal, hair and certain river-shaders.

.. _option_gradient:

Gradient
~~~~~~~~

Exactly the same as using Source:Gradient with Mix, but only available for the Color Smudge Brush.

.. _option_spacing:

Spacing
-------

.. image:: /images/en/Krita_Pixel_Brush_Settings_Spacing.png

This allows you to affect :ref:`option_brush_tip` with :ref:`sensors`.

.. image:: /images/en/Krita_2_9_brushengine_spacing_02.png

;Isotropic.
:Instead of the spacing being related to the ratio of the brush, it will be on diameter only.

.. image:: /images/en/Krita_2_9_brushengine_spacing_01.png

.. _option_ratio:

Ratio
-----

Allows you to change the ratio of the brush and bind it to parameters. This also works for predifined brushes.

.. image:: /images/en/Krita_3_0_1_Brush_engine_ratio.png

