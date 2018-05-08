.. meta::
   :description lang=en:
        How to use brush tips in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - PMoonen
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. _option_brush_tip:


==========
Brush Tips
==========


.. image:: /images/en/Krita_Pixel_Brush_Settings_Popup.png 

.. _auto_brush_tip:

Auto Brush
----------

The generic circle or square. These brush-tips are generate by Krita through certain parameters.

Types
~~~~~

First, there's three mask-types, with each the circle and square shape:


Default
    This is the ultimate generic type. The fade parameter produces the below results. Of the three auto brushes, this is the fastest.

    .. image:: /images/en/Krita_29_brushengine_brushtips_default.png

Soft
    This one's fade is controled by a curve!

    .. image:: /images/en/Krita_2_9_brushengine_brushtips_soft.png
Gaussian
    This one uses the gaussian algorithm to determine the fade. Out of the three auto brushes, this is the slowest.

    .. image:: /images/en/Krita_2_9_brushengine_brushtips_gaussian.png

Parameters
~~~~~~~~~~

Diameter
    The pixel size of the brush.
Ratio
    Whether the brush is elongated or not.

    .. image:: /images/en/Krita_2_9_brushengine_brushtips_ratio.png

Fade
    this sets the softness of the brush. You can click the chain-symbol to lock and unlock these settings. Fade has a different effect per mask-type, so don't be alarmed if it looks strange, perhaps you have the wrong mask-type.

    .. image:: /images/en/Krita_2_9_brushengine_brushtips_default2b.png

    (With fade locked)

    .. image:: /images/en/Krita_2_9_brushengine_brushtips_default_3.png

(With fade seperately horizontal and vertical)

Angle
    This changes the angle a which the brush is at.

    .. image:: /images/en/Krita_2_9_brushengine_brushtips_angle.png
    
Spikes
    This gives the amount of tips related to the ratio.

    .. image:: /images/en/Krita_2_9_brushengine_brushtips_spikes.png

Density
    This decreases how much area the brush-covers over it's size: It makes it noisy. In the example below, the brush is set with density 0%, 50% and 100% respectively.
    
    .. image:: /images/en/Krita_2_9_brushengine_brushtips_density.png

Randomness
    This changes the randomness of the density. In the example below, the brush is set with randomness 0%, 50% and 100% respectively.
    
    .. image:: /images/en/Krita_2_9_brushengine_brushtips_randomness.png
Spacing
    This affects how far brushes are spaced apart. In the below picture, the three examples on the left are with spacing 0, 1 and 5.
Auto (spacing)
    Ticking this will set the brush-spacing to a different(quadratic) algorithm. The result is fine control over the spacing. In the below picture, the three examples on right are with auto spacing, 0, 1 and 5 respectively.
    
    .. image:: /images/en/Krita_2_9_brushengine_brushtips_spacing.png

Smooth lines.
    This toggles the super-smooth anti-aliasing. In the below example, both strokes are drawn with a default brush with fade set to 0. On the left without smooth lines, and the right with. Very useful for inking brushes. This option is best used in combination with Auto Spacing.

    .. image:: /images/en/Krita_2_9_brushengine_brushtips_default_2.png

Precision
    This changes how smooth the brush is rendered. The lower, the faster the brush, but the worse the rendering looks.
    You'd want an inking brush to have a precision of 5 at all times, but a big filling brush for painting doesn't require such precision, and can be easily sped up by setting precision to 1.
Auto (precision)
    This allows you to set the precision linked to the size. The first value is the brush size at which precision is last 5, and the second is the size-difference at which the precision will decrease.

    For example: A brush with ''starting brush size'' 10 and ''delta'' 4, will have...
    precision 5 at size 10
    precision 4 at size 14
    precision 3 at size 18
    precision 2 at size 22
    precision 1 at sizes above 26.

.. _predefined_brush_tip:

Predefined Brushes
~~~~~~~~~~~~~~~~~~

.. image:: /images/en/Krita_Predefined_Brushes.png

If you have used other applications like :program:`GIMP` or :program:`Photoshop`, you will have used this kind of brush. :program:`Krita` is (mostly) compatible with the brush tip definitions files of these applications:

abr
    GIMP autobrush tip definitions
:ref:`file_gbr`
    GIMP single bitmap brush tip. Can be black and white or colored.
:ref:`file_gih`
    GIMP Image Hose brush tip: contains a series of brush tips that are painted randomly or in order after each other. Can be black and white or colored. :program:`Krita` does not yet support all the parameters yet.
abr
    Photoshop brush tip collections. We support many of the features of these brush files, though some advanced features are not supported yet.

Note that the definition of ABR brushes has been reverse engineered since Adobe does not make the specification public. We strongly recommend every :program:`Krita` user to share brush tips in GBR and GIH format and more complex brushes as :program:`Krita` presets.

All predefined brush tips are shown in one selector. There are four more options that influence the initial bitmap brush tip you start painting with:

Scale
    scales the brush tip. 1.0 is the native size of the brush tip. This can be fairly large! When painting with variable size (for instance governed by pressure), this is the base for the calculations.
Rotation
    initial rotation of the brush tip.
Spacing
    distance between the brush tip impressions.
Use color as mask
    for colored brushes, don't paint the actual colors, but make a grayscale brush tip that will be colored by your selected foreground/background color.
