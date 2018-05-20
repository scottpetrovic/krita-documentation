.. meta::
   :description:
        The color management settings in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - David Revoy
   :license: GNU free documentation license 1.3 or later.

.. index:: Preferences, Settings, Color Management, Color, Softproofing
.. _color_management_settings:

=========================
Color Management Settings
=========================

.. image:: /images/en/Krita_Preferences_Color_Management.png

Krita offers extensive functionality for color management, utilising `Little CMS <http://www.littlecms.com/>`_
We describe Color Management in a more overal level here: :ref:`color_managed_workflow`.

General
-------

Default Color Model For New Images
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Choose the default model you prefer for all your images.

When Pasting Into Krita From Other Applications
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The user can define what kind of conversion, if any, Krita will do to an image that is copied from other applications i.e. Browser, GIMP, etc.

Assume sRGB 
    This option will show the pasted image in the default Krita ICC profile of sRGB.
Assume monitor profile 
    This option will show the pasted image in the monitor profile selected in system preferences.
Ask each time 
    Krita will ask the user each time an image is pasted, what to do with it. This is the default.

.. note::

    When copying and pasting in Krita color information is always preserved.

Use Blackpoint Compensation
~~~~~~~~~~~~~~~~~~~~~~~~~~~

This option will turn on Blackpoint Compensation for the conversion. BPC is explained by the maintainer of LCMS as following:

| BPC is a sort of "poor man's" gamut mapping. It basically adjust contrast of images in a way that darkest tone of source device gets mapped to darkest tone of destination device. If you have an image that is adjusted to be displayed on a monitor, and want to print it on a large format printer, you should realize printer can render black significantly darker that the screen. So BPC can do the adjustment for you. It only makes sense on Relative colorimetric intent. Perceptual and Saturation does have an implicit BPC.

Allow LittleCMS optimizations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Uncheck this option when using Linear Light RGB or XYZ.

Display
-------

Use System Monitor Profile
    This option when selected will tell Krita to use the ICC profile selected in your system preferences.
Screen Profiles
    There are as many of these as you have screens connected. The user can select an ICC profile which Krita will use independent of the monitor profile set in system preferences. The default is sRGB built-in. On Unix systems, profile stored in $/usr/share/color/icc (system location) or $~/.local/share/color/icc (local location) will be proposed. Profile stored in Krita preference folder, $~/.local/share/krita/profiles will be visible only in Krita.
Rendering Intent
    Your choice of rendering intents is a way of telling Littlecms how you want colors mapped from one color space to another. There are four options available, all are explained on the :ref:`icc_profiles` manual page.

Softproofing options
--------------------

These allow you to configure the *default* softproofing options. To configure the actual softproofing for the current image, go to :menuselection:`Image --> Image Properties --> Softproofing` .

For indepth details about how to use softproofing, check out :ref:`the page on softproofing <soft_proofing>`.
