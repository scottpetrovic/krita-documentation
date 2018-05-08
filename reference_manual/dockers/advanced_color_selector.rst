.. meta::
   :description lang=en:
        Overview of the advanced color selector docker.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. _advanced_color_selector_docker:

=======================
Advanced Color Selector
=======================

.. image:: /images/en/Advancecolorselector.jpg


As compared to other color selectors in Krita, Advance color selector provides more control and options to the user. To open Advance color selector choose :menuselection:`Settings --> Docker --> Advance Color Selector`. You can configure this docker by clicking on the little wrench icon on the top left corner. Clicking on the wrench will open a popup window with following tabs and options :

Color Selector
--------------

Here you configure the main selector.

Type and Shape
~~~~~~~~~~~~~~

.. image:: /images/en/Krita_Color_Selector_Types.png

Here you can pick the hsx model you'll be using.
There's a small blurb explaining the characteristic of each model, but let's go into detail:

HSV
    Stands for Hue, Saturation, Value. Saturation determines the difference between white, grey, black and the most colorful color. Value in turn measures either the difference between black and white, or the difference between blakc and the most colorful color.
HSL
    Stands for Hue, Saturation, Lightness. All saturated colors are equal to 50% lightness. Saturation allows for shifting between grey and color.
HSI
    This stands for Hue, Saturation and Intensity. Unlike HSL, this one determine the intensity as the sum of total rgb components. Yellow(1,1,0) has higher intensity than blue(0,0,1) but is the same intensity as cyan(0,1,1).
HSY'
    Stands for Hue, Saturation, Luma, with Luma being an RGB approximation of true luminosity. (Luminosity being the measurement of relative lightness). HSY' uses the Luma Coefficients, like [http://en.wikipedia.org/wiki/Rec._709 Rec 709], to calculate the Luma. Due to this, HSY' can be the most intuitive selector to work with, or the most confusing. 

Then, under shape, you can select one of the shapes available within that colour model.

.. note::

    Triangle is in all colour models because to a certain extent, it is a wildcard shape: All colour models look the same in a equilateral triangle selector.

Luma Coefficients
~~~~~~~~~~~~~~~~~

This allows you to edit the Luma coefficients for the HSY model selectors to your leisure. Want to use [http://en.wikipedia.org/wiki/Rec._601 Rec 601] instead of Rec 709? These boxes allow you to do that!

By default, the Luma coefficients should add up to 1 at maximum.

Gamma
    The HSY selector is linearised, this setting allows you to choose how much gamma is applied to the Luminosity for the gui element. 1.0 is fully linear, 2.2 is default.

Color Space
~~~~~~~~~~~

This allows you to set the overall color space for the Advanced Color Selector.

.. warning::
    You can pick only sRGB colors in advanced color selector regardless of the color space of advanced color selector. This is a bug.

Behaviour
---------

When docker resizes
~~~~~~~~~~~~~~~~~~~

This determines the behavior of the widget as it become smaller.

Change to Horizontal
    This'll arrange the shade selector horizontal to the main selector. Only works with the MyPaint shade selector
Hide Shade Selector
    This hides the shade selector.
Do nothing
    Does nothing, just resizes.

Zoom selector UI
~~~~~~~~~~~~~~~~

If your have set the docker size considerably smaller to save space, this option might be helpful to you. This allows you to set whether or not the selector will give a zoomed view of the selector in a size specified by you, you have these options for the zoom selector:

* when pressing middle mouse button
* on mouse over
* never

The size given here, is also the size of the Main Color Selector and the MyPaint Shade Selector when they are called with :kbd:`shift + I` and :kbd:`shift`+:kbd:`M`, respectively.

Hide Pop-up on click
    This allows you to let the pop-up selectors called with the above hotkeys to dissapear upon clicking them instead of having to leave the pop-up boundary. This is useful for faster working.

Shade selector
--------------

Shade selector options.
The shade selectors are useful to decide upon new shades of color.

Update Selector
~~~~~~~~~~~~~~~

This allows you to determine when the shade selector updates.

MyPaint Shade Selector
~~~~~~~~~~~~~~~~~~~~~~

Ported from MyPaint, and extended with all color models.
Default hotkey is :kbd:`Shift+ M`

Simple Shade Selector
~~~~~~~~~~~~~~~~~~~~~

This allows you to configure the simple shade selector in detail.

Color Patches
-------------

This sets the options of the color patches.

Both Color History and Colors From the Image have similar options which will be explained below.

Show 
    This is a radio button to show or hide the section. It also determines whether or not the colors are visible with the advanced color selector docker.
Size 
    The size of the color boxes can be set here.
Patch Count 
    The number of patches to display.
Direction 
    The direction of the patches, Horizontal or Vertical.
Allow Scrolling 
    Whether to allow scrolling in the section or not when there are too many patches.
Number of Columns/Rows 
    The number of Columns or Rows to show in the section.
Update After Every Stroke 
    This is only available for Colors From the Image and tells the docker whether to update the section after every stroke or not, as after each stroke the colors will change in the image.

History patches
~~~~~~~~~~~~~~~

The history patches remember which colors you've drawn on canvas with. They can be quickly called with :kbd:`H`

Common Patches
~~~~~~~~~~~~~~

The common patches are generated from the image, and are the most common colour in the image. The hotkey for them on canvas is :kbd:`U`.

External Info
-------------

`HSI and HSY for Krita’s advanced colour selector. <http://wolthera.info/?p=726>`_
