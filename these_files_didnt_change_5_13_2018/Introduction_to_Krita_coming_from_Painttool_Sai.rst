Introduction to Krita coming from Painttool Sai
===============================================

How do you do that in Krita?
----------------------------

This section goes over the functionalities that Krita and Paint Tool Sai
share, but shows how they slightly differ.

Canvas navigation
~~~~~~~~~~~~~~~~~

Krita, just like Sai, allows you to flip, rotate and duplicate the view.
Unlike Sai, these are tied to keyboard keys.

Mirror
    This is tied to :kbd:`M` to flip.
Rotate
    There's a couple of possibilities here: either :kbd:`4` and
    :kbd:`6`, or :kbd:`Ctrl + [` and :kbd:`Ctrl + ]`
    for basic 15 degrees rotation left and right. But you can also have
    more sophisticated rotation with
    :kbd:`Shift + Space` +drag or :kbd:`Shift` ++drag. To
    reset the rotation, press :kbd:`5`.
Zoom
    You can use :kbd:`+` and :kbd:`-` to zoom out and in, or use
    :kbd:`Ctrl` +. Use 1, 2 or 3 to reset the zoom, fit the zoom to
    page or fit the zoom to page width.

You can use the Overview docker in
:menuselection:`Settings --> dockers` to quickly navigate over
your image.

You can also put these commands on the toolbar, so it'll feel a little
like Sai. Go to :menuselection:`Settings --> Configure Toolbars`.
There's two toolbars, but we'll add to the file toolbar.

Then, you can type in something in the left column to search for it. So,
for example, 'undo'. Then select the action 'undo freehand stroke' and
drag it to the right. Select the action to the right, and click
:menuselection:`change text`. There, toggle
:menuselection:`hide text when toolbar shows action alongside icon`
to prevent the action from showing the text. Then press OK.
When done right, the undo should now be sandwiched between the save and
the gradient icon.

You can do the same for :menuselection:`Redo`,
:menuselection:`Deselect`, :menuselection:`Invert Selection`, :menuselection:`zoom out`,
:menuselection:`zoom in`, :menuselection:`reset zoom`, :menuselection:`rotate left`,
:menuselection:`rotate right`, :menuselection:`mirror view`
and perhaps :menuselection:`smoothing:basic`
and :menuselection:`smoothing: stablizer` to get nearly
all the functionality of Sai's topbar in Krita's topbar. (Though, on
smaller screens this will cause all the things in the brushes toolbar to
hide inside a drop down to the right, so you need to experiment a
little).

:menuselection:`hide selection`,
:menuselection:`reset rotation` are currently not available via
the Toolbar configuration, you'll need to use the shortcuts
:kbd:`Ctrl +< H` and :kbd:`5` to toggle these.

.. Note::

   Krita 3.0 currently doesn't allow changing the text in the toolbar, we're working on it

Rightclick color picker
~~~~~~~~~~~~~~~~~~~~~~~

You can actually set this in
:menuselection:`Settings --> Configure Krita --> Canvas Input Settings --> Alternate Invocation`.
Just double-click the entry that says
:kbd:`Ctrl` + before 'pick foreground color from image' to get a
window to set it to .

.. Note::

   Krita 3.0 actually has a Paint-tool Sai-compatible input sheet shipped by default.
   Combine these with the shortcut sheet for Paint tool sai to get most of the functionality on familair hotkeys

Stabilizer
~~~~~~~~~~

This is in the tool options docker of the freehand brush. Use Basic
Smoothing for more advanced tablets, and Stabilizer is much like Paint
Tool Sai's. Just turn off 'Delay' so that the dead-zone disappears.

Transparency
~~~~~~~~~~~~

So one of the things that throws a lot of paint tool Sai users off is
that Krita uses checkers to display transparency, which is actually not
that uncommon. Still, if you want to have the canvas background to be
white, this is possible. Just choose 'Background: As Canvas Color' in
the new image dialogue and the image background will be white. You can
turn it back to transparent via :menuselection:`Image --> Change image background color`.
If you export a PNG or JPG, make sure to
untick 'save transparency' and to make the background color white(it's
black by default).

.. figure:: images/introduction_coming_from/Krita-color-to-alpha.png
   :alt: images/introduction_coming_from/Krita-color-to-alpha.png
   :align: center

Like Sai, you can quickly turn a black and
white image to black and transparent with the
:menuselection:`Color to Alpha Filter` under
:menuselection:`Filters --> Colors --> Color to Alpha`

Brush Settings
~~~~~~~~~~~~~~

Another, somewhat amusing misconception is that Krita's brush engine is
not very complex. After all, you can only change the Size, Flow and
Opacity from the topbar.

This is not quite true. It's rather that we don't have our brush
settings in a docker but a dropdown on the toolbar. The easiest way to
access this is with :kbd:`F5`. As you can see it's actually quite
complex. We have more than a dozen brush engines, which are a type of
brush you can make. The ones you are used to from Paint Tool Sai are the
Pixel Brush(ink), The Color Smudge Brush(Brush) and the filter
brush(dodge, burn).

A simple inking brush recipe for example is to take a pixel brush,
untick the 'enable pen-settings' on opacity and flow, and untick
everything but size from the option list. Then, go into brush-tip, pick
autobrush from the tabs, and set the size to 25(right-click a blue bar
if you want to input numbers), turn on anti-aliasing under the brush
icon, and set fade to 0.9. Then, as a final touch, set spacing to 'auto'
and the spacing number to 0.8.

You can configure the brushes in a lot of detail, and share the packs
with others. Importing of packs and brushes can be done via the
:menuselection:`Settings --> Manage Resources`, where you can
import .bundle files or .kpp files.

Erasing
~~~~~~~

Erasing is a blending mode in Krita, much like the transparency mode of
Paint Tool Sai. It's activated with :kbd:`E` or you can select it
from the Blending Mode dropdown...

Blending Modes
~~~~~~~~~~~~~~

Krita has a lot of Blending modes, and thankfully all of Paint Tool
Sai's are amongst them except binary. To manage the blending modes, each
of them has a little check-box that you can tick to add them to the
favorites.

Multiple, Screen, Overlay and Normal are amongst the favourites. Krita's
Luminosity is actually slightly different from Paint Tool Sai's and it
replaces the relative brightness of a color with the relative brightness
of the colour of the layer.

Sai's Luminosity mode is actually the same as Krita's *Addition* or
*linear dodge* mode. The Shade mode is the same as *Color Burn* and
*Hard Mix* is the same as the lumi and shade mode.

Layers
~~~~~~

Lock Alpha
    This is the checkerbox icon next to every layer.
Clipping group
    For Clipping masks in Krita you'll need to put all your images in a
    single layer, and then press the 'a' icon, or press
    :kbd:`Ctrl + Shift + G`
Ink layer
    This is a vector layer in Krita, and also holds the text.
Masks
    These grayscale layers that allow you to affect the transparency are
    called transparency masks in Krita, and like Painttool Sai, they can
    be applied to groups as well as layers. If you have a selection and
    make a transparency mask, it will use the selection as a base.
Clearing a layer
    This is under :menuselection:`Edit --> Clear`, but you
    can also just press :kbd:`Del`.

Mixing between two colours
~~~~~~~~~~~~~~~~~~~~~~~~~~

If you liked this docker in Paint Tool Sai, Krita's Digital Color
Selector docker will be able to help you. Dragging the sliders will
change how much of a colour is mixed in.

What do you get extra when using Krita?
---------------------------------------

More brush customisation
~~~~~~~~~~~~~~~~~~~~~~~~

You already met the brush settings editor. Sketch brushes, grid brushes,
deform brushes, clone brushes, brushes that are textures, brushes that
respond to tilt, rotation, speed, brushes that draw hatches and brushes
that deform the colors. Krita's variety is quite big.

More color selectors
~~~~~~~~~~~~~~~~~~~~

You can have HSV sliders, RGB sliders, triangle in a hue ring. But you
can also have HSI, HSL or HSY' sliders, CMYK sliders, palettes, round
selectors, square selectors, tiny selectors, big selectors, color
history and shade selectors. Just go into
:menuselection:`Settings --> Configure Krita --> Advanced Color Selector Settings`
to change the shape and type of the main big color selector.

.. figure:: images/introduction_coming_from/Krita_Color_Selector_Types.png
   :alt: images/introduction_coming_from/Krita_Color_Selector_Types.png
   :align: center

You can call the color
history with :kbd:`H`, common colors with :kbd:`U` and the two
shade selectors with :kbd:`Shift + N` and
:kbd:`Shift + M`. The big selector can be called with
:kbd:`Shift + I` on canvas.

Geometric Tools
~~~~~~~~~~~~~~~

Circles, rectangles, paths, Krita allows you to draw these easily.

Multibrush, Mirror Symmetry and Wrap Around
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These tools allow you to quickly paint a mirrored image, manadala or
tiled texture in no time. Useful for backgrounds and abstract vignettes.

.. figure:: images/introduction_coming_from/Krita-multibrush.png
   :alt: images/introduction_coming_from/Krita-multibrush.png
   :align: center

Assistants
~~~~~~~~~~

The painting assistants can help you to set up a perspective, or a
concentric circle and snap to them with the brush. 

.. figure:: images/painting_with_assistants/Krita_basic_assistants.png
   :alt: images/painting_with_assistants/Krita_basic_assistants.png
   :align: center

   Krita's vanishing point assistants in action

Locking the Layer
~~~~~~~~~~~~~~~~~

Lock the layer with the padlock so you don't draw on it.

Quick Layer select
~~~~~~~~~~~~~~~~~~

If you hold :kbd:`R` and press a spot on your drawing, Krita will
select the layer underneath the cursor. Really useful when dealing with
a large amount of layers.

Color Management
~~~~~~~~~~~~~~~~

This allows you to prepare your work for print, or to do tricks with the
Lut docker so you can diagnose your image better. For example, using the
Lut docker to turn the colors greyscale in a separate view, so you can
see the values instantly. 

.. figure:: images/introduction_coming_from/Krita-view-dependant-lut-management.png
   :alt: images/introduction_coming_from/Krita-view-dependant-lut-management.png
   :align: center

Advanced Transform Tools
~~~~~~~~~~~~~~~~~~~~~~~~

Not just rotate and scale, but also cage, wrap, liquefy and
non-destructive transforms with the transform tool and masks.

.. figure:: images/introduction_coming_from/Krita_transforms_recursive.png
   :alt: images/introduction_coming_from/Krita_transforms_recursive.png
   :align: center

More Filters and non-destructive filter layers and masks
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

With filters like color balance and curves you can make easy shadow
layers. In fact, with the filter layers and layer masks you can make
them apply on the fly as you draw underneath.

.. figure:: images/basic_concepts/Krita_ghostlady_3.png
   :alt: images/basic_concepts/Krita_ghostlady_3.png
   :align: center

Pop-up palette
~~~~~~~~~~~~~~

This is the little circular thing that is by default on the right click.
You can organise your brushes in tags, and use those tags to fill up the
pop-up palette. It also keeps a little color selector and a color
history, so you can switch brushes on the fly. 

.. figure:: images/navigation/Krita-popuppalette.png
   :alt: images/navigation/Krita-popuppalette.png
   :align: center

What does Krita lack compared to Paint Tool Sai?
------------------------------------------------

-  Variable width vector lines
-  The selection source option for layers
-  Dynamic hard-edges for strokes(the fringe effect)
-  No mix-docker.
-  No Preset-tied stablizer.
-  No per-preset hotkeys.

Conclusion
----------

I hope this introduction got you a little more excited to use Krita, if
not feel a little more at home.


