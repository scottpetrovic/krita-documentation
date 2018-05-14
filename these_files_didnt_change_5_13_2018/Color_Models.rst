Color Models
============

Krita has many different color spaces and models. Following here is a
brief explanation of each, and their use-cases.

RGB
---

Red, Green, Blue.

These are the most efficient primaries for light-based color mixing,
like computer screens. Adding Red, Green and Blue light together results
in White, and is thus named the additive color wheel.

RGB is used for two purposes:

Images that are meant for viewing on a screen: So that could be images
for the web, buttons, avatars, or just portfolio images. Or for Video
games, both sprites and textures are best in RGB there. Or for 3d
rendering, visual effects and cg animation.

And for the working space. A working space is a RGB gamut that is really
large and predictable, meaning it's good for image manipulation. You use
this next to a profiled monitor. This way you can have precise colours
while also being able to view them correctly on multiple screens.

Blending modes in RGB
~~~~~~~~~~~~~~~~~~~~~

+---------+-----------+-----------+----------+------------+----------+-------+-------+-------+-------+--------+--------+--------+--------+--------+--------+
|         | Color 1   | Color 2   | Normal   | Multiply   | Screen   |       |       |       |       |        |        |        |        |        |        |
+=========+===========+===========+==========+============+==========+=======+=======+=======+=======+========+========+========+========+========+========+
|         | R         | G         | B        | R          | G        | B     | R     | G     | B     | R      | G      | B      | R      | G      | B      |
+---------+-----------+-----------+----------+------------+----------+-------+-------+-------+-------+--------+--------+--------+--------+--------+--------+
| R & G   | 1.0       | 0.0       | 0.0      | 0.0        | 1.0      | 0.0   | 0.5   | 0.5   | 0.5   | 0.0    | 0.0    | 0.0    | 1.0    | 1.0    | 0.0    |
+---------+-----------+-----------+----------+------------+----------+-------+-------+-------+-------+--------+--------+--------+--------+--------+--------+
| Gray    | 0.5       | 0.5       | 0.5      | 0.5        | 0.5      | 0.5   | 0.5   | 0.5   | 0.5   | 0.25   | 0.25   | 0.25   | 0.75   | 0.75   | 0.75   |
+---------+-----------+-----------+----------+------------+----------+-------+-------+-------+-------+--------+--------+--------+--------+--------+--------+

RGB models: HSV, HSL, HSI and HSY
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These are not included as their own color spaces in Krita. However, they
do show up in the blending modes and color selectors, so a brief
overview:

--Images of relationship rgb-hsv etc.

Hue
    The tint of a color, or, whether it's red, yellow, green, etc.
    Krita's Hue is measured in 360 degrees, with 0 being red, 120 being
    green and 240 being blue.
Saturation
    How vibrant a color is. Saturation is slightly different between HSV
    and the others. In HSV it's a measurement of the difference between
    two base colors being used and three base colors being used. In the
    others it's a measurement of how close a color is to grey, and
    sometimes this value is called **Chroma**. Saturation ranges from
    0(grey) to 100(pure color).
Value
    Sometimes known as Brightness. Measurement of how much the pixel
    needs to light up. Also measured from 0 to 100.
Lightness
    Where a color aligns between white and black. This value is
    non-linear, and puts all the most saturated possible colors at 50.
    Ranges from 0 to 100.
Intensity
    Similar to lightness, except it acknowledges that yellow (1,1,0) is
    lighter than blue (0,0,1). Ranges from 0 to 100.
Luma(Y')
    Similar to lightness and Intensity, except it weights the red, green
    and blue components based real-life measurements of how much light a
    color reflects to determine it's lightness. Ranges from 0 to 100.
    Luma is well known for being used in film-colour spaces.

Grayscale
---------

This color space only registers grey-values. This is useful, because by
only registering grey values, it only needs one channel of information,
which in turn means the image becomes much lighter in memory
consumption!

This is useful for textures, but also anything else that needs to stay
grayscale, like Black and White comics.

+--------+-----------+-----------+----------+------------+----------+
|        | Color 1   | Color 2   | Normal   | Multiply   | Screen   |
+========+===========+===========+==========+============+==========+
|        | G         | G         | G        | G          | G        |
+--------+-----------+-----------+----------+------------+----------+
| Gray   | 0.5       | 0.5       | 0.5      | 0.25       | 0.75     |
+--------+-----------+-----------+----------+------------+----------+

CMYK
----

Cyan, Magenta, Yellow, Key

This is the color space of printers. Unlike computers, printers have
these four colors, and adding them all adds up to black instead of
white. This is thus also called a 'subtractive' color space.

+---------+-----------+-----------+----------+------------+----------+-------+-------+-------+-------+-------+-------+-------+--------+--------+-------+--------+--------+--------+-------+--------+
|         | Color 1   | Color 2   | Normal   | Multiply   | Screen   |       |       |       |       |       |       |       |        |        |       |        |        |        |       |        |
+=========+===========+===========+==========+============+==========+=======+=======+=======+=======+=======+=======+=======+========+========+=======+========+========+========+=======+========+
|         | C         | M         | Y        | K          | C        | M     | Y     | K     | C     | M     | Y     | K     | C      | M      | Y     | K      | C      | M      | Y     | K      |
+---------+-----------+-----------+----------+------------+----------+-------+-------+-------+-------+-------+-------+-------+--------+--------+-------+--------+--------+--------+-------+--------+
| R & G   | 0.0       | 1.0       | 1.0      | 0.0        | 1.0      | 0.0   | 1.0   | 0.0   | 0.5   | 0.5   | 1.0   | 0.0   | 0.25   | 0.25   | 1.0   | 0.0    | 0.75   | 0.75   | 1.0   | 0.0    |
+---------+-----------+-----------+----------+------------+----------+-------+-------+-------+-------+-------+-------+-------+--------+--------+-------+--------+--------+--------+-------+--------+
| Gray    | 0.0       | 0.0       | 0.0      | 0.5        | 0.0      | 0.0   | 0.0   | 0.5   | 0.0   | 0.0   | 0.0   | 0.5   | 0.0    | 0.0    | 0.0   | 0.25   | 0.0    | 0.0    | 0.0   | 0.75   |
+---------+-----------+-----------+----------+------------+----------+-------+-------+-------+-------+-------+-------+-------+--------+--------+-------+--------+--------+--------+-------+--------+

There's also a difference between 'colored gray' and 'neutral gray'
depending on the profile.

+----------------+--------+--------+--------+--------+-------+-------+-------+-------+--------+--------+--------+--------+
|                | 25%    | 50%    | 75%    |        |       |       |       |       |        |        |        |        |
+================+========+========+========+========+=======+=======+=======+=======+========+========+========+========+
|                | C      | M      | Y      | K      | C     | M     | Y     | K     | C      | M      | Y      | K      |
+----------------+--------+--------+--------+--------+-------+-------+-------+-------+--------+--------+--------+--------+
| Colored Gray   | 0.25   | 0.25   | 0.25   | 0.25   | 0.5   | 0.5   | 0.5   | 0.5   | 0.75   | 0.75   | 0.75   | 0.75   |
+----------------+--------+--------+--------+--------+-------+-------+-------+-------+--------+--------+--------+--------+
| Neutral Gray   | 0.0    | 0.0    | 0.0    | 0.25   | 0.0   | 0.0   | 0.0   | 0.5   | 0.0    | 0.0    | 0.0    | 0.75   |
+----------------+--------+--------+--------+--------+-------+-------+-------+-------+--------+--------+--------+--------+

.. figure:: images/color_models/Cmyk_black_differences.png
   :alt: images/color_models/Cmyk_black_differences.png
   :align: center

   In Krita, there's also the fact that the default
   color is a perfect black in RGB, which then gets converted to our
   default CMYK in a funny manner, giving a yellow look to the strokes.
   Again, another good reason to work in RGB and let the conversion be done
   by the printing house.

While CMYK has a smaller 'gamut' than RGB, however, it's still recommended to use a
RGB working space profile to do your editing in. Afterwards, you can
convert it to your printer's CMYK profile using either perceptual or
relative colorimetric intend. Or you can just give the workspace rgb
image to your printer and let them handle the work.

YCrCb
-----

Luminosity, Red-chroma, Blue-chroma

YCrCb stands for

Y'/Y
    Luma/Luminosity, thus, the amount of light a color reflects.
Cr
    Red Chroma. This value measures how red a color is versus how green
    it is.
Cb
    Blue Chroma. This value measures how blue a color is versus how
    yellow it is.

This color space is often used in photography and in (correct)
implementations of JPEG. As humans you're much more sensitive to the
lightness of colors, and thus JPEG tries to compress the Cr and Cb
channels, and leave the Y channel in full quality.

.. Warning::

   Krita doesn't bundle a ICC profile for YCrCb on the basis of there being no open source
   ICC profiles for this color space. It's unusable without one, and also probably very untested.

XYZ
---

Back in 1931, the CIE(Institute of Color and Light), was studying human
color perception. In doing so, they made the first color spaces, with
XYZ being the one best at approximating human vision.

It's almost impossible to really explain what XYZ is.

Y
    is equal to green.
Z
    akin to blue.
X
    is supposed to be red.

XYZ is used as a baseline reference for all other profiles and models.
All color conversions are done in XYZ, and all profiles coordinates
match XYZ.

L\*a\*b\*
---------

Stands for:

L\*
    Lightness, similar to luminosity in this case.
a\*
    a\* in this case is the measurement of how magenta a color is versus
    how green it is.
b\*
    b\* in this case is a measurement of how yellow a color is versus
    how blue a color is.

L\*a\*b\* is supossed to be a more comprehensible variety of XYZ and the
most 'complete' of all color spaces. It's often used as an in between
colour space in conversion, but even more as the correct color space to
do color-balancing in. It's far easier to adjust the contrast and color
tone in L\*a\*b\*.

L\*a\*b\* is technically the same as Photoshop's LAB. Photoshop
specifically uses CIELAB d50.

Filters and blending modes.
---------------------------

Maybe you have noticed that blending modes in LAB don't work like they
do in RGB or CMYK. This is because the blending modes work by doing a
bit of maths on the color coordinates, and because color coordinates are
different per color space, the blending modes look different.

