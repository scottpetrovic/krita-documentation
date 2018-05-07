.. _bm_cat_lighten:

Lighten
-------

Blending modes that lighten the image.

.. _bm_color_dodge:

Color Dodge
~~~~~~~~~~~

Similar to Divide.
Inverts the top layer, and divides the lower layer by the inverted top layer.
This results in a image with emphasized highlights, like Dodging would do in traditional darkroom photography.

.. figure:: /images/blending_modes/Blending_modes_Color_Dodge_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Color Dodge**.

.. _bm_gamma_light:

Gamma Light
~~~~~~~~~~~

Outputs the upper layer as power of the lower layer.

.. figure:: /images/blending_modes/Blending_modes_Gamma_Light_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Gamma Light**.

.. _bm_hard_light:

Hard Light
~~~~~~~~~~

Similar to Overlay.
A combination of the Multiply and Screen blending modes, switching between both at a middle-lightness.

Hard light checks if the colour on the upperlayer has a lightness above 0.5. Unlike overlay, if the pixel is lighter than 0.5,it is blended like in Multiply mode, if not the pixel is blended like in Screen mode.

Effectively, this decreases contrast.

.. figure:: /images/blending_modes/Blending_modes_Hard_Light_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Hard Light**.

.. _bm_lighten:

Lighten
~~~~~~~

With the darken, the upper layer's colors are checked for their lightness. Only if they are Lighter than the underlying color on the lower layer, will they be visible.

.. figure:: /images/blending_modes/Blending_modes_Lighten_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Lighten**.

.. _bm_lighter_color:

Lighter Color
~~~~~~~~~~~~~

.. figure:: /images/blending_modes/Blending_modes_Lighter_Color_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Lighter Color**.


.. _bm_linear_dodge:

Linear Dodge
~~~~~~~~~~~~

Exactly the same as :ref:`bm_addition`.

Put in for compatibility purposes.

.. figure:: /images/blending_modes/Blending_modes_Linear_Dodge_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Linear Dodge** (exactly the same as Addition).

.. _bm_linear_light:

Linear Light
~~~~~~~~~~~~

Similar to :ref:`bm_overlay`.

Combines :ref:`bm_linear_dodge` and :ref:`bm_linear_burn`. When the lightness of the upper-pixel is higher than 0.5, it uses Linear dodge, if not, Linear burn to blend the pixels.

.. figure:: /images/blending_modes/Blending_modes_Linear_Light_Gray_0.4_and_Gray_0.5.png
   :align: center

   Left: **Normal**. Right: **Linear Light**.

.. figure:: /images/blending_modes/Blending_modes_Linear_Light_Light_blue_and_Orange.png
   :align: center

   Left: **Normal**. Right: **Linear Light**.

.. figure:: /images/blending_modes/Blending_modes_Linear_Light_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Linear Light**.

.. _bm_pin_light:

Pin Light
~~~~~~~~~

Checks which is darker the lower layer's pixel or the upper layer's double so bright.
Then checks which is brighter of that result or the inversion of the doubled lower layer.

.. figure:: /images/blending_modes/Blending_modes_Pin_Light_Gray_0.4_and_Gray_0.5.png
   :align: center

   Left: **Normal**. Right: **Pin Light**.

.. figure:: /images/blending_modes/Blending_modes_Pin_Light_Light_blue_and_Orange.png
   :align: center

   Left: **Normal**. Right: **Pin Light**.

.. figure:: /images/blending_modes/Blending_modes_Pin_Light_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Pin Light**.

.. _bm_screen:

Screen
~~~~~~

Perceptually the opposite of :ref:`bm_multiply`.

Mathematically, Screen takes both layers, inverts them, then multiplies them, and finally inverts them again.

This results in light tones being more opaque and dark tones transparent.

.. figure:: /images/blending_modes/Blending_modes_Screen_Gray_0.4_and_Gray_0.5.png
   :align: center

   Left: **Normal**. Right: **Screen**.

.. figure:: /images/blending_modes/Blending_modes_Screen_Light_blue_and_Orange.png
   :align: center

   Left: **Normal**. Right: **Screen**.

.. figure:: /images/blending_modes/Blending_modes_Screen_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Screen**.

.. _bm_soft_light:

Soft Light(Photoshop) & Soft Light SVG
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These are less harsh versions of Hard Light, not resulting in full black or full white.

The SVG version is slightly different to the Photoshop version in that it uses a slightly different bit of formula when the lightness of the lower pixel is lower than 25%, this prevents the strength of the brightness increase.

.. figure:: /images/blending_modes/Blending_modes_Soft_Light_Photoshop_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Soft Light (Photoshop)**.


.. figure:: /images/blending_modes/Blending_modes_Soft_Light_SVG_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Soft Light (SVG)**.

.. _bm_vivid_light:

Vivid Light
~~~~~~~~~~~

Similar to Overlay.

Mixes both Color Dodge and Burn blending modes. If the color of the upper layer is darker than 50%, the blending mode will be Burn, if not the blending mode will be Color Dodge.

.. warning::

    This algorithm doesn't use color dodge and burn, we don't know WHAT it does do but for Color Dodge and Burn you need to use :ref:`bm_hard_mix`

.. figure:: /images/blending_modes/Blending_modes_Vivid_Light_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Vivid Light**.

