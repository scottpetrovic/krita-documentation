.. meta::
   :description lang=en:
        Common workflows used in Krita

.. metadata-placeholder
   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Vancemoss
             - Raghavendra Kamath <raghavendr.raghu@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. _common_wokflows:

================
Common Workflows
================

Krita's main goal is to help artists create digital painting from scratch. Krita is used by comic artists, matte painters, texture artists, and illustrators around the world. This section explains some common workflow that artists use in Krita. When you open a new document in Krita for the first time, you can start painting instantly. The brush tool is selected by default and you just have to paint on the canvas. However, let us look at what artists do in Krita. Below are some of the common workflows used in Krita:

Speed Painting and Conceptualizing
----------------------------------

Some artists work only on digital medium, sketching and visualizing concepts in Krita from scratch. As the name suggests a technique of painting done within matter of hours to quickly visualize the basic scene , character, look and feel of the environment or to denote the general mood and overall concept is called a **speed painting**. Finishing and finer details are not the main goal of this type of painting, but the representation of form value and layout is main goal.

Some artists set time limit to complete the painting while some paint casually. Speed painting then can be taken forward by adding finer details and polish to create a final piece. Generally artists first block in the composition by adding patches and blobs of flat colors, defining the silhouette etc . Krita has some efficient brushes for this situation, for example the brush under **Block Tag** like Block fuzzy, Block basic, layout_block etc.

After the composition and a basic layout has been laid out the artists add as much details as possible in the given limited time, this requires a decent knowledge of forms, value perspective and proportions of the objects. Below is an example of speed paint done by `David Revoy <http://www.davidrevoy.com/>`_  done in an hours time.

.. image:: /images/en/Pepper-speedpaint-deevad.jpg
    :alt: speedpaint of pepper and carrot by deevad (David Revoy)
    :width: 800

Artwork by David Revoy, licence : `CC-BY <http://creativecommons.org/licenses/by/3.0/>`_

You can view the recorded speed painting demo for the above image `here <https://www.youtube.com/watch?v=93lMLEuxSLk>`_.

Colorizing Line Art
-------------------

Often an artist for example a comic book colorist will need to take a pencil sketch or other line art of some sort and use Krita to paint underneath it. This can be either an image created digitally or something that was done outside the computer and has been scanned.

Preparing the lineart
^^^^^^^^^^^^^^^^^^^^^

If your images has a white or other single-tone background, you can use either of the the following methods to prepare the art for coloring.:

Place the line-art at the top of the layer stack and set its layer blending mode to Multiply

If you want to clean the lineart a bit you can press :kbd:`Ctrl+L` or go to :menuselection:`Filters --> Adjust --> levels`

.. image:: /images/en/Levels-filter.png
    :alt: level filter dialog

You can clean the unwanted greys by moving the white triangle in the input levels section to left and darken the black by moving the black triangle to right.

If you draw in blue pencils and then ink your line art you may need to remove the blue lines first to do that go to :menuselection:`Filter --> Adjust --> Color adjustment` curves or press shortcut :kbd:`Ctrl+M`.

.. image:: /images/en/common-workflows/Color-adjustment-cw.png
    :alt: remove blue lines from image step 1

Now select **Red** from the drop-down, Click on the top right node on the graph and slide it all the way down. Or you can click on the top right node and enter **0** in the output field. Repeat this step for **Green** too.

.. image:: /images/en/common-workflows/Color-adjustment-02.png
    :alt: removing blue lines from scan step 2

Now the whole drawing will have a blue overlay, zoom in and check if the blue pencil lines are still visible slightly, If you you still see them, then go to **Blue** Channel in the color adjustment and shift the top right node towards left a bit, Or enter a value around 190 ( one that removes the remaining rough lines) in the input box.

.. image:: /images/en/common-workflows/Color-adjustment-03.png
    :alt: remove blue lines from scans step 3

Now apply the color adjustment filter, yes we still have lots of blue on the artwork be patient and move on to the next step. Go to :menuselection:`Filter --> Adjust --> Desaturate` or press :kbd:`Ctrl + Shift + U`. Now select max from the list.

.. image:: /images/en/common-workflows/Color-adjustment-04.png
    :alt: remove blue lines from scans step 4

.. hint:: It is good to use non-photo-blue pencils to create the blue lines as those are easy to remove. If you are drawing digitally in blue lines use #A4DDED color as this is closer to non-photo-blue color.

You can learn more about doing a sketch from blue sketch to digital painting `here <http://www.davidrevoy.com/article239/cleaning-blue-lines-sketch-in-krita>`_ in a tutorial by David Revoy.

After you have a clean black and white line-art you may need to erase the white color and keep only black line-art, to achieve that go to :menuselection:`Filters --> Color --> Color to Alpha`. Use the dialog box to turn all the white areas of the image transparent. The Color Picker is set to White by default. If you have imported scanned art and need to select another color for the paper color then you would do it here.

.. image:: /images/en/Color-to-alpha.png
    :alt: color to alpha dialog box

This will convert the white color in your line-art to alpha i.e. it will make the white transparent leaving only the lineart. Your line-art can be in grey-scale color space, this is a unique feature in Krita which allows you to keep a layer in a color-space independent from the image.

Laying in Flat Colors
^^^^^^^^^^^^^^^^^^^^^

There are many ways to color a line art in Krita, but generally these three are the common among the artists.

1. Paint blocks of color directly with block brushes.
2. Fill with Flood fill Tool.
3. Use one of the GMIC colorise comics filters.

Blocking with brush
"""""""""""""""""""

The first is the more traditional method of taking a shape brush or using the geometric tools to lay in color. This would be similar to using an analog marker or brush on paper. There are various block brushes in Krita, you can select **Block** Tag from the dro-pdown in the brush presets docker and use the brushes listed there.

Add a layer underneath your lineart layer and start painting with the brush, If you want to correct any area you can press :kbd:`E` and convert the same brush into an eraser. You can also use a layer each for different colors for more flexibility.

Filling with Flood Fill tool
""""""""""""""""""""""""""""

The second method is to use the Flood fill tool to fill large parts of your line-art quickly. This method generally requires closed gaps in the line-art. To begin with this method place your line-art on a separate layer. Then activate the flood fill tool and set the grow selection to 2px, un-check limit to current layer if previously checked.

.. image:: /images/en/common-workflows/Floodfill-krita.png
    :alt: flood fill in krita

Choose a color from color elector and just click on the area you want to fill the color. As we have expanded the fill with grow seclection the color will be filled slightly underneath the line-art thus giving us a clean fill.

GMIC Colorise [Interactive]
"""""""""""""""""""""""""""

The third method is to use take advantage of the integrated G'Mic filters. These are powerful filters that can dramatically improve your workflow and cut your down on your production time.
To begin coloring with the GMIC colorize interactive, go to :menuselection:`Filter --> GMIC`. Choose :menuselection:`Filter --> G'Mic --> Black & white --> Colorize[interactive]` from the list of filters. Then select Line-art for :menuselection:`Input type, Image + Colors (2 Layers)` for output type, set the view resolution according to your need. If you have any specific color palette to use for coloring add the path for it in additional color palette. The example of the filter window with the required inputs is shown below.

.. image:: /images/en/common-workflows/GMIC-colorize-interactive-krita.png
    :alt: G'MIC window in Krita

Press **Apply** to begin the coloring, this will open a color selector **palette** window and a window showing your lineart. Choose the color from the palette and click on the areas that needs to be filled with color like the example shown below.

.. image:: /images/en/common-workflows/Krita-GMIC-colorize-interactive.png
    :alt: G'MIC colorise interactive window

If you feel that the dots are a bit distracting you can press :kbd:`Tab` to reduce the size or hide the dots. to zoom out you can press :kbd:`Ctrl+down arrow` and :kbd:`Ctrl+up arrow` vice versa. Panning is done by |mousemiddle| + drag. Press :kbd:`Spacebar` to generate the colors. If you want to replace a color select the color by |mousemiddle| and pressing :kbd:`R` then you can select an alternate color from the palette.

Once you have finished adding the desired flat colors you can press :kbd:`Enter` to apply the filter. Then don't forget to press **Ok** in the GMIC dialog box.

The flats colors will be placed on a separate layer. You can check `this <http://www.davidrevoy.com/article240/gmic-line-art-colorization>`_ tutorial by David Revoy to know more about this technique.

GMIC Colorize [comics]
""""""""""""""""""""""

Krita provides one more option to prepare flat colors through GMIC colorize comics filter. This technique needs some preparations before you run the GMIC filter. This layer extrapolates the color spots that you input below the lineart

You have to create two layers below the line art, one for the color spots indicating which color you need to be filled in the region and one for the final extrapolated output of the filter. Mark some colors spots in the layer beneath the lineart. The layer setup can be seen in the image below.

.. image:: /images/en/common-workflows/Colorize-krita.png
    :alt: G'MIC colorise comics layer setup

The colors spots are marked in red in the image

Now go to :menuselection:`Filter --> G'Mic --> Black & white --> Colorize[comics]`. In the GMIC dialog box, select all for input and inplace(default) for output, select Lineart + color spots + extrapolated layers for both input and output layers on the right hand side. Smoothness is for filling gap tolerance and details the default is 0.5 you can adjust it according to your line art.

.. image:: /images/en/common-workflows/Colorise-comics-setting.png
    :alt: Colorise Interactive dialog and settings

Press **Apply** and **Ok** to apply and exit the GMIC dialog. You'll now have flat colors beneath you lineart.
More details about this technique can be found in the tutorial `here <http://timotheegiet.com/blog/comics/gmic-colorize-comics-working-in-krita.html>`_.

Painting
--------

Starting from chaos
^^^^^^^^^^^^^^^^^^^

Here, you start by making a mess through random shapes and texture, then taking inspirations from the resulting chaos you can form various concepts. It is kind of like making things from clouds or finding recognizable shapes of things in abstract and random textures. Many concept artist work with this technique.

You can use brushes like the shape brush, or the spray brush to paint a lot of different shapes, and from the resulting noise, you let you brain pick out shapes and compositions.

.. image:: /images/en/common-workflows/Chaos2.jpg
    :alt: Starting a painting from chaotic sketch

You then refine these shapes to look more like shapes you think they look, and paint them over with a normal paintbrush. This method is best done in a painting environment.

Starting from a value based underground
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This method finds it's origins in old oil-painting practice: You first make an under-painting and then paint over it with colour, having the dark underground shine through.

With Krita you can use blending modes for this purpose. Choosing the Color blending mode on a layer on top allows you to change the colours of the image without changing the relative luminosity. This is useful, because humans are much more sensitive to tonal differences than difference in saturation and hue. This'll allow you to work in greyscale before going into colour for the polishing phase.

You can find more about this technique `here <http://www.davidrevoy.com/article185/tutorial-getting-started-with-krita-1-3-bw-portrait>`_.

Preparing Tiles and Textures
----------------------------

Many artists use Krita to create textures for 3d assets used for games animation etc. Krita has many texture template for you to choose and get started with creating textures. These template have common sizes, bit depth and color profiles that are used for texturing workflow.

Krita also has a real-time seamless tile mode to help texture artist prepare tiles and texture easily and check if it is seamless on the fly. The tiled mode is called wrap around mode , to activate this mode you have press :kbd:`W`. No when you paint the canvas is tiled in real-time allowing you to create seamless pattern and texture, it is also easy to prepare interlocking patterns and motifs in this mode.

Creating Pixel Art
------------------

Krita can also be used to create high definition pixel painting. The pixel art look can be achieved by using Index color filter layer and overlaying dithering patterns. The general layer stack arrangement is as shown below.

.. image:: /images/en/common-workflows/Layer-docker-pixelart.png
    :alt: Layer stack setup for pixel art

The index color filter maps specific user selected colors to the grey scale value of the artwork. You can see the example below, the strip below the black and white gradient has index color applied to it so that the black and white gradient gets the color selected to different values.

.. image:: /images/en/common-workflows/Gradient-pixelart.png
    :alt: color mapping in index color to greyscale

You can choose the required colors and ramps in the index color filter dialog as shown below.

.. image:: /images/en/common-workflows/Index-color-filter.png
    :alt: index color filter dialog

Dithering can be used to enhance the look of the art and to ease the banding occurred by the index color filter. Krita has a variety of dithering patterns by default, these can be found in pattern docker. You can use these patterns as fill layer , then set the blend mode to **overlay** and adjust the opacity according to your liking. generally an opacity range of 10% - 25% is ideal.

Paint the artwork in grey-scale and add a index color filter layer at the top then add the dithering pattern fill layer below the index color filter but above the artwork layer, as shown in the layer stack arrangement above. You can paint or adjust the artwork at any stage as we have added the index color filter as a filter layer.

You can add different groups for different colors and add different dithering patterns for each group.

Below is an example painted with this layer arrangement.

.. image:: /images/en/common-workflows/Kiki-pixel-art.png
    :alt: Pixel art done in Krita
