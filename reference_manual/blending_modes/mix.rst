.. meta::
   :description:
        Page about the mix blending modes in Krita: Allanon, Alpha Darken, Behind, Erase, Geometric Mean, Grain Extract, Grain Merge, Greater, Hard Mix, Hard Overlay, Normal, Overlay and Parallel.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Maria Luisac
   :license: GNU free documentation license 1.3 or later.


.. _bm_cat_mix:

Mix
---

.. index:: ! Allanon
.. _bm_allanon:

Allanon
~~~~~~~

Blends the upper layer as half-transparent with the lower.
(It add the two layers together and then halves the value)

.. figure:: /images/blending_modes/Blending_modes_Allanon_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Allanon**.

.. index:: ! Alpha Darken
.. _bm_alpha_darken:

Alpha Darken
~~~~~~~~~~~~

As far as I can tell this seems to premultiply the alpha, as is common in some file-formats.

.. figure:: /images/blending_modes/Blending_modes_Alpha_Darken_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Alpha Darken**.

.. index:: ! Behind
.. _bm_behind:

Behind
~~~~~~

Does the opposite of normal, and tries to have the upper layer rendered below the lower layer.

.. figure:: /images/blending_modes/Blending_modes_Behind_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Behind**.

.. index:: ! Erase (Blending Mode)
.. _bm_erase:

Erase
~~~~~

This subtracts the opaque pixels of the upper layer from the lower layer, effectively erasing.

.. figure:: /images/blending_modes/Blending_modes_Erase_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Erase**.

.. index:: ! Geometric Mean
.. _bm_geometric_mean:

Geometric Mean
~~~~~~~~~~~~~~

This blending mode multiplies the top layer with the bottom, and then outputs the square root of that.

.. figure:: /images/blending_modes/Blending_modes_Geometric_Mean_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Geometric Mean**.

.. index:: ! Grain Extract
.. _bm_grain_extract:

Grain Extract
~~~~~~~~~~~~~

Similar to subtract, the colors of the upper layer are subtracted from the colors of the lower layer, and then 50% grey is added.

.. figure:: /images/blending_modes/Blending_modes_Grain_Extract_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Grain Extract**.

.. index:: ! Grain Merge
.. _bm_grain_merge:

Grain Merge
~~~~~~~~~~~

Similar to addition, the colors of the upper layer are added to the colors, and then 50% grey is subtracted.

.. figure:: /images/blending_modes/Blending_modes_Grain_Merge_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Grain Merge**.

.. index:: ! Greater (Blending Mode)
.. _bm_greater:

Greater
~~~~~~~

A blending mode which checks whether the painted color is painted with a higher opacity than the existing colors. If so, it paints over them, if not, it doesn't paint at all.

.. image:: /images/blending_modes/Greaterblendmode.gif
   :align: center

.. index:: ! Hard Mix
.. _bm_hard_mix:
   
Hard Mix
~~~~~~~~

Similar to Overlay.

Mixes both Color Dodge and Burn blending modes. If the color of the upper layer is darker than 50%, the blending mode will be Burn, if not the blending mode will be Color Dodge.

.. figure:: /images/blending_modes/Blending_modes_Hard_Mix_Sample_image_with_dots.png
   :figwidth: 800
   :align: center
   
   Left: **Normal**. Right: **Hard Mix**.

.. _bm_hard_mix_photoshop:

Hard Mix (Photoshop)
~~~~~~~~~~~~~~~~~~~~

This is the hard mix blending mode as it is implemented in photoshop.

.. figure:: /images/blending_modes/Krita_4_0_hard_mix_ps.png
   :figwidth: 800
   :align: center
   
   **Left**: Dots are mixed in with the normal blending mode, on the **Right**: Dots are mixed in with hardmix.
   
This add the two values, and then checks if the value is above the maximum. If so it will output the maximum, otherwise the minimum.

.. index:: ! Hard OVerlay
.. _bm_hard_overlay:

Hard Overlay
~~~~~~~~~~~~

.. versionadded:: 4.0

Similar to Hard light but hard light use Screen when the value is above 50%. Divide gives better results than Screen, especially on floating point images..

.. figure:: /images/blending_modes/Blending_modes_Hard_Overlay_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Hard Overlay**.

.. index:: ! Normal (Blending Mode), Source Over
.. _bm_normal:

Normal
~~~~~~

As you may have guessed this is the default Blending mode for all layers.

In this mode, the computer checks on the upper layer how transparent a pixel is, which colour it is, and then mixes the colour of the upper layer with the lower layer proportional to the transparency.

.. figure:: /images/blending_modes/Blending_modes_Normal_50_Opacity_Sample_image_with_dots.png
   :align: center

   Left: **Normal** 100% Opacity. Right: **Normal** 50% Opacity.

.. index:: ! Overlay (Blending Mode)
.. _bm_overlay:

Overlay
~~~~~~~

A combination of the Multiply and Screen blending modes, switching between both at a middle-lightness.

Overlay checks if the colour on the upperlayer has a lightness above 0.5. If so, the pixel is blended like in Screen mode, if not the pixel is blended like in Multiply mode.

This is useful for deepening shadows and highlights.

.. figure:: /images/blending_modes/Blending_modes_Overlay_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Overlay**.

.. index:: ! Parallel
.. _bm_parallel:

Parallel
~~~~~~~~

This one first takes the percentage in two decimal behind the comma for both layers.
It then adds the two values.
Divides 2 by the sum.

.. figure:: /images/blending_modes/Blending_modes_Parallel_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Parallel**.

