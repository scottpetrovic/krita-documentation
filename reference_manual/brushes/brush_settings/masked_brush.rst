.. _option_masked_brush:

============
Masked Brush
============

.. versionadded:: 4.0


Masked brush is new feature that is only available in the :ref:`pixel_brush_engine`. They are additional settings you will see in the brush editor. Masked brushes allow you to combine two brush tips in one stroke. One brush tip will be a mask for your primary brush tip. A masked brush is a good alternative to texture for creating expressive and textured brushes.

.. image:: /images/en/Masking-brush1.jpg
   :align: center

.. note::
    due to technological constraints, the masked brush only works in the wash painting mode. However, do remember that flow works as opacity does in the build-up painting mode.

:ref:`option_brush_tips`
    Like with normal brush tip you can choose any brush tip and change it size, spacing, and rotation. Masking brush size is relative to main brush size. This means when you change your brush size masking tip will be changed to keep the ratio.

    :ref:`Blending mode (dropdown inside Brush tip)<blending_modes>`:
        Blending modes changes how tips are combined.
    
    .. image:: /images/en/Masking-brush2.jpg
       :align: center

:ref:`option_size`
    The size sensor option of the second tip.
:ref:`option_opacity_n_flow`
    The opacity and flow of the second tip. This is mapped to a sensor by default. Flow can be quite agressive on subtract mode, so it might be an idea to turn it off there.
:ref:`option_ratio`
    This affects the brush ratio on a given brush.
:ref:`option_mirror`
    The Mirror option of the second tip.
:ref:`option_rotation`
    The rotation option of the second tip. Best set to "fuzzy dab".
:ref:`option_scatter`
    The scatter option. The default is quite high, so don't forget to turn it lower.

.. topic:: Difference from :ref:`option_texture`

    You don’t need seamless texture to make cool looking brush
    Stroke generates on the fly, it always different
    Brush strokes looks same on any brush size
    Easier to fill some areas with solid color but harder to make it hard textured
 
