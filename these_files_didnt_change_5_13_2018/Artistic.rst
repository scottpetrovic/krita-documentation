Artistic
========

The artistic filter are characterised by taking an input, and doing a
deformation on them.

Halftone
~~~~~~~~

.. figure:: images/artistic/Krita_halftone_filter.png
   :alt: images/artistic/Krita_halftone_filter.png

The halftone filter is a filter that converts the colors to a halftone
dot pattern.

Colors
    The colors used to paint the pattern. The first is the color of the
    dots, the second the color of the background.
Size
    The size of the cell in pixels. The maximum dot size will be using
    the diagonal as the cell size to make sure you can have pure black.
Angle
    The angle of the dot pattern.
Invert
    This inverts the intensity calculated per dot. Thus, dark colors
    will give tiny dots, and light colors big dots. This is useful in
    combination with inverting the colors, and give a better pattern on
    glowy-effects.
Anti-aliasing
    This makes the dots smooth, which is good for webgraphics.
    Sometimes, for print graphics, we want there to be no grays, so we
    turn off the anti-aliasing.

Index Color
~~~~~~~~~~~

The index color filter maps specific user selected colors to the grey
scale value of the artwork. You can see the example below, the strip
below the black and white gradient has index color applied to it so that
the black and white gradient gets the color selected to different
values.

.. figure:: images/artistic/Gradient-pixelart.png
   :alt: images/artistic/Gradient-pixelart.png

You can choose the required colors and ramps in the index color filter
dialog as shown below

.. figure:: images/artistic/Index-color-filter.png
   :alt: images/artistic/Index-color-filter.png

You can create index painting such as one shown below with the help of
this filter

.. figure:: images/artistic/Kiki-pixel-art.png
   :alt: images/artistic/Kiki-pixel-art.png

Pixelize
~~~~~~~~

Makes the input-image pixely by creating small cells and inputting an
average color. 

.. figure:: images/artistic/Pixelize-filter.png
   :alt: images/artistic/Pixelize-filter.png

Raindrops
~~~~~~~~~

Adds random raindrop-deformations to the input-image.

Oilpaint
~~~~~~~~

Does semi-posterisation to the input-image, with the 'brush-size'
determining the size of the fields. 

.. figure:: images/artistic/Oilpaint-filter.png
   :alt: images/artistic/Oilpaint-filter.png

Brush-size
    Determines how large the individual patches are. The lower, the more
    detailed.
Smoothness
    Determines how much each patch's outline is smoothed out.

Posterize
~~~~~~~~~

This filter decreases the amount of colors in an image. It does this per
component(channel). 

.. figure:: images/artistic/Posterize-filter.png
   :alt: images/artistic/Posterize-filter.png

The **steps** parameter determines how many colors are allowed per
component.

