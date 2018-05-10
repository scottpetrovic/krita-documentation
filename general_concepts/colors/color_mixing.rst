.. meta::
   :description lang=en:
        Color Mixing in a digital media.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Emmet O'Neil
   :license: GNU free documentation license 1.3 or later.

   
.. _color_mixing:

=============
Mixing Colors
=============

Much like physical media, there are many ways to mix colors together in Krita. Traditional painters and illustrators often use techniques like **glazing**, **scumbling**, and **hatching** to mix colors directly on their canvas, on top of mixing colors together on a **palette** or even within the hairs of their **brush**. With a little bit of practice and know-how, and thanks to the variety of powerful tools in Krita, we can mimic all of these mixing techniques in digital painting.

In both traditional and digital painting, mixing techniques can be divided into *two major categories*: let's call them **"on-canvas"** and **"off-canvas"**.

On-Canvas Mixing
----------------

On-canvas mixing techniques are ones where multiple colors are combined directly on the canvas as the artist paints. This takes a few forms, including **layering semi-transparent color** on top of another color, using **texture** to change how a color is perceived, or even in the interaction between two areas of wet paint in traditional media. Bottom line: on-canvas mixing happens right on the canvas and is a great tool for artistic exploration and "happy accidents".

Glazing
~~~~~~~

.. image:: /images/en/color_category/Color_gloss.gif
   :align: center


In traditional painting, **glazing** is overlaying many different semi-transparent layers to create on-canvas color mixtures. Likewise, in digital painting we can also use glazing to mix colors directly on our canvas. This is one of the most fundamental and commonly used mixing techniques in digital painting.

We first lay down a semi-transparent layer on top of another color that we intend to mix with. Then, we pick the **resultant color** with :kbd:`ctrl` + |mouseleft| (this can be configured in the canvas input settings), and paint with that. Depending on our brush's **opacity setting**, each time we glaze one color over another we will get a color that is somewhere between those two colors, often leading to a nice mixture.

We can mix even more easily with glazing when we set our brush's **flow** to a lower setting. Subtly different than opacity, :ref:`flow <option_opacity_n_flow>` is transparency per dab instead of stroke, and so it gives us softer strokes without giving up control.

Furthermore, we can combine glazing with various **blending modes** to achieve different, interesting effects. For example, glazing with the **multiply** blending mode to create nice shadows:

.. image:: /images/en/color_category/Color_gloss_example_1.png
   :align: center

Staring with line art and base colors.

.. image:: /images/en/color_category/Color_gloss_example_2.png
   :align: center

Using a semi-transparent brush that's set to multiply, we can add colored layers to suggest shadows and mid-tones. The multiply blending mode will darken and interact with each base color differently.

.. image:: /images/en/color_category/Color_gloss_example_3.png
   :align: center

Then, using a brush with low flow (~0.30), we can pick the resulting colors and lay down more layers. Not only does this help you define the different planes and forms that are so crucial for creating a sense of depth and three-dimensionality, it also gives quite a nice, painterly effect!

.. image:: /images/en/color_category/Color_gloss_example_4.png
   :align: center


Continue with a lower opacity and flow to create even smoother gradients. Make your **edges** as sharp or smooth as your subject matter and art style demands!

Smudging
~~~~~~~~

.. image:: /images/en/color_category/Color_mix.gif
   :align: center


**Smudge mixing** is done with the :ref:`engine_color_smudge`, a special brush engine that allows you to mix your current brush color with the color(s) under the brush. It's a very powerful type of brush that gives a lovely painterly effect. *Performance wise, it's a bit more demanding and slower than the regular pixel brush.*

If you *remove all paint from a smudge brush*, you get a simple-yet-powerful smudge effect:

.. image:: /images/en/color_category/Color_smudge.gif
   :align: center


Different smudge brushes have different effects, so be sure to try them all out!

Scumbling
~~~~~~~~~

**Scumbling** is similar to glazing, except instead of having a semi-opaque layer, we use layers of **textured** or **patterned** paint.

.. image:: /images/en/color_category/Color_scumble2.gif
   :align: center

Like most painting programs, Krita allow you to pick a :ref:`option_brush_tip`, which can be used to create a textured effect like that of scumbling.

.. image:: /images/en/color_category/Color_scumble.gif
   :align: center


Krita's brush engines also allows you to use :ref:`option_texture`. This allows you to create interesting and stylized screentone-like effects.

With glazing can get you pretty far when it comes to *defining planes and forms*, scumbling is the best method to *create texture and to break up big pasty flats* in your painting.

Off-Canvas Mixing
-----------------

**Off-canvas** mixing has basically always been a core tool for artists everywhere; when we think of the stereotypical artist we might imagine someone with a few **brushes** in one hand and a wooden **palette** in the other. Whether it's oils, watercolor, or other traditional media, for the artist to have absolute control over their colors it's crucial to have some kind of palette, plate, jar, or other **off-canvas area** to mix colors together. While it's easy to overlook this in digital painting (where selecting fresh new colors without mixing at all is both easy and free*), Krita has a few very useful and unique features for off-canvas mixing.

Color Picker Blending
~~~~~~~~~~~~~~~~~~~~~

.. versionadded:: 4.1

Krita, like almost every art and graphics program, has a :ref:`color_picker_tool` which allows you to very quickly sample a color from any pixel on your canvas. While this tool may seem relatively simple and humble, it is also one of the most important and commonly used tools in the digital artist's toolbox - perhaps only second to the brush! In fact, the color picker tool is at the very heart of mixing colors, and is often used in combination with on-canvas techniques like glazing and scumbling to produce smooth blends of color.

And still, there is more to this little tool than meets the eye! Not only can you configure Krita's color picker to sample from the average color of a **radius** of pixels, Krita's Color Picker also has a unique **blending** feature: a powerful and intuitive tool for off-canvas color mixing!

.. image:: /images/en/color_category/Krita_cpb_mixing.gif
   :align: center


The Color Picker Blending feature changes the way that picking colors has traditionally worked for decades; instead of completely replacing your current brush color with the newly sampled color, *blending allows you to quickly "soak up" some portion of the sampled color*, which is then mixed with your current brush color.

You can use Color Picker Blending much like a physical paint brush in traditional media. If you were to dip your paint brush into a pool of *blue* paint, and then immediately dip again into a pool of *red* paint and paint a stoke across your canvas, the stoke wouldn't be pure red - it would be some combination of blue and red which would mix to create an intermediate purple color. Which shade of purple would depend on the ratio of paints that mix together within the hairs of your brush, and this is essentially what the Color Picker's "blend" option controls: what percentage of sampled color is mixed together with your current brush color!

Not only does Krita's Color Picker Blending feel even more like mixing paints, it is also completely off-canvas and independent of opacity, flow, shape, and other brush settings. Furthermore, unlike most on-canvas mixing techniques, Color Picker Blending works regardless of the location of colors on your canvas - enabling your to mix with colors at any position, on any layer, or even in different documents! Quickly mix lighting colors with local colors, mix the ambient sky color into shadows, create atmospheric depth, mix from a preselected palette of colors in another layer/document, etc.

To use Color Picker Blending, simply set the "blend" option in the **Tool Options Docker** while the Color Picker Tool is active; setting blend to 100% will cause your Color Picker to work in the traditional way (completely replacing your brush color with the picked color), setting to around 50% will give you a half-way mix between colors, and setting to a lower value will create more subtle shifts in colors each click. Of course, blending affects both your dedicated Color Picker Tool as well as the :kbd:`ctrl`+|mouseleft| shortcut.

.. note::

    Clicking and dragging the Color Picker around the canvas currently causes it to sample many times as it switches pixels. You can use this trait to quickly soak up more color by "dipping" your color picker into a color and swirling it around. This can be pretty satisfying! However, this also means that some care must be taken to prevent from accidentally picking up more color than you want. It's pretty easy to click a single pixel only one time using a **mouse**, but when painting with a **drawing tablet and pen** it can sometimes be desirable to use a slightly lower blend setting!

The Digital Colors Mixer
~~~~~~~~~~~~~~~~~~~~~~~~

Somewhat hidden away in the **Dockers** menu (:menuselection:`Settings --> Dockers --> Digital Colors Mixer`), this can be a useful tool for off-canvas mixing. The Digital Colors Mixer looks a little bit like an audio mixing board that you'd see in a recording studio, but instead of mixing music it mixes colors! It contains 6 independent **color mixers** that mix your current brush color with any color of your choosing.

.. image:: /images/en/color_category/Digi_colormixer.png
   :align: center


By clicking the **color buttons** below each mixer you can choose a palette of colors to mix with. Above each mixer is a **color patch** that will produce a color that mixes some amount of your current brush color with the palette color. Colors towards the top of the mixer will deliver subtle changes to your current color, while colors towards the bottom will be much closer to the palette color of that channel.

Other Tips
----------

**Q*:** "What a waste of time! This is digital painting! Why should I bother mixing colors at all!?" - *Strawman* Joe.

**A:** There's some truth to this; traditional painters often have a starting palette that's limited by the tubes/pans of paints that they own, which is further limited by availability and cost of paint. For digital painters, on the other hand, it's quick, easy, and totally free to click on Krita's **Advanced Color Selector** to pull up any color in your current color space. So why mix at all? 

Well... Because working within a limited palette and mixing almost always gives you *"better colors"*! Don't get me wrong - it's not that one color is inherently and objectively better than another. While there is certainly a time and place for bright and vivid illustration styles with lots of strong and saturated colors, mixing from a more limited palette results in *colors with depth, subtlety, and harmony* and helps artists to achieve a **color scheme**. Not only does painting with a color scheme help to get rid of dreaded "choice paralysis", it also sometimes helps to imbue your artwork with the sense of *emotion and intentionality* that we often admire in other great works of art. 

So, next time you need to paint some *gray*, instead of reaching for a random or generic gray from the Advanced Color Selector, consider using one of Krita's many wonderful mixing tools to *create an interesting and fitting gray* from hues that are roughly **complementary** (opposite each other on the color wheel).

-----

While on-canvas and off-canvas techniques are fundamentally different categories of mixing colors, they are **not** mutually exclusive at all! All of the mixing methods in this article have pros and cons; different tools can be useful for different situations, and combining various techniques can be extremely powerful and fun!

-----

Finally, mixing colors will often go far better in a :ref:`higher bit-depth like 16bit <bit_depth>`, though it'll make the image take up much more working **memory** (RAM). Furthermore, using a :ref:`linear color space <linear_and_gamma>` can often give far better mixtures than a **gamma-corrected** one, though doing sketches and line art is easier to do in a gamma-corrected space.
