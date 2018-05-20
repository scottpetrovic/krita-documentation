.. meta::
   :description:
        Page about the miscellaneous blending modes in Krita: Bumpmap, Combine Normal Map, Copy Red, Copy Green, Copy Blue, Copy and Dissolve.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Maria Luisac
   :license: GNU free documentation license 1.3 or later.


.. _bm_cat_misc:

Misc
----

.. index:: ! Bumpmap (Blending Mode)
.. _bm_bumpmap:

Bumpmap
~~~~~~~

This filter seems to both multiply and respect the alpha of the input.

.. index:: ! Combine Normal Map, Normal Map
.. _bm_combine_normal_map:


Combine Normal Map
~~~~~~~~~~~~~~~~~~

Mathematically robust blending mode for normal maps, using `Reoriented Normal Map Blending <http://blog.selfshadow.com/publications/blending-in-detail/>`_.

.. index:: ! Copy (Blending Mode)
.. _bm_copy:

Copy
~~~~

Copies the previous layer exactly.
Useful for when using filters and filter-masks.

.. figure:: /images/blending_modes/Blending_modes_Copy_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Copy**.

.. index:: ! Copy Red, ! Copy Green, ! Copy Blue
.. _bm_copy_red:
.. _bm_copy_green:
.. _bm_copy_blue:

Copy Red, Green, Blue
~~~~~~~~~~~~~~~~~~~~~

This is a blending mode that will just copy/blend a source channel to a destination channel.
Specifically, it will take the specific channel from the upper layer and copy that over to the lower layers.

So, if you want the brush to only affect the red channel, set the blending mode to 'copy red'.

.. figure:: /images/blending_modes/Krita_Filter_layer_invert_greenchannel.png
   :align: center
   :figwidth: 500

   The copy red, green and blue blending modes also work on filter-layers.

This can also be done with filter layers. So if you quickly want to flip a layer's green channel, make an invert filter layer with 'copy green' above it.

.. figure:: /images/blending_modes/Blending_modes_Copy_Red_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Copy Red**.


.. figure:: /images/blending_modes/Blending_modes_Copy_Green_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Copy Green**.


.. figure:: /images/blending_modes/Blending_modes_Copy_Blue_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Copy Blue**.

.. index:: ! Dissolve
.. _bm_dissolve:

Dissolve
~~~~~~~~

Instead of using transparency, this blending mode will use a random dithering pattern to make the transparent areas look sort of transparent.

.. figure:: /images/blending_modes/Blending_modes_Dissolve_Sample_image_with_dots.png
   :align: center

   Left: **Normal**. Right: **Dissolve**.

