Animation
=========

.. contents:: Contents
   :local:

Animation with Krita
--------------------

Thanks to the 2015 kickstarter, **Krita 3.0** now has animation. In
specific, **Krita** has frame-by-frame raster animation. There's still a
lot of elements missing from it, like tweening, but the basic workflow
is there.

To access the animation features, the easiest way is to change your
workspace to Animation. This will make the animation dockers and
workflow appear.

Animation curves
----------------

To create an animation curve (currently only for opacity) expand the
“New Frame” button in the “Animation” dock and click “Add Opacity
Keyframe”. You can now edit the keyframed value for opacity directly in
the “Layers” dock, adding more keyframes will by default fade from the
last to the next upcoming keyframe in the timeline over the frames
betweem them. See `animation curves <https://docs.krita.org/Animation_Curves>`__ for details

Workflow:
---------

In traditional animation workflow, what you do is that you make *key
frames*, which contain the important poses, and then draw frames in
between(\ *tweening* in highly sophisticated animator's jargon).

For this workflow, there are three important dockers:

#. The `Timeline Docker <Timeline_Docker>`__. View and control all of
   the frames in your animation. The timeline docker also contains
   functions to manage your layers. The layer that are created in the
   timeline docker also appear on the normal Layer docker.
#. The `Animation docker <Animation_Docker>`__. This docker contains the
   play buttons as the ability to change the frame-rate, playback speed
   and useful little options like \*auto-key framing\*.
#. The `Onion Skin Docker <Onion_Skin_Docker>`__. This docker controls
   the look of the onion skin, which in turn is useful for seeing the
   previous frame.

Introduction to animation: How to make a walkcycle
--------------------------------------------------

The best way to get to understand all these different parts is to
actually use them. Walk cycles are considered the most basic form of a
full animation, because of all the different parts involved with them.
Therefore, going over how one makes a walkcycle should serve as a good
introduction.

Setup
~~~~~

First, we make a new file:

.. figure:: images/animation/Introduction_to_animation_01.png
   :alt: images/animation/Introduction_to_animation_01.png
   :align: center

On the first tab, we type in a nice ratio like 1280x1024, set the dpi to
72(we're making this for screens after all) and title the document
'walkcycle'.

In the second tab, we choose a nice background color, and set the
background to canvas-color. This means that Krita will automatically
fill in any transparent bits with the background color. This can be
changed in :menuselection:`image --> image properties`.
This seems to be most useful to people doing
animation, as the layer you do animation on MUST be semi-transparent to
get onion skinning working.

.. Note::

   Krita has a bunch of functionality for meta-data, starting at the create document screen.
   The title will be automatically used as a suggestion for saving and the description can be used by databases,
   or for you to leave comments behind. Not many people use it individually, but it can be useful for working in larger groups.

Then hit create!

Then, to get all the necessary tools for animation, select the workspace
switcher:

.. figure:: images/animation/Introduction_to_animation_02.png
   :alt: images/animation/Introduction_to_animation_02.png
   :align: center

   The red arrow points at the workspace switcher.

And select the animation workspace.

Which should result in this:

.. figure:: images/animation/Introduction_to_animation_03.png
   :alt: images/animation/Introduction_to_animation_03.png
   :align: center

The animation workspace adds the timeline, animation and onion skin
dockers at the bottom.

Animating
~~~~~~~~~

We have two transparent layers set up. Let's name the bottom one
'environment' and the top 'walkcycle' by double clicking their names in
the layer docker.

.. figure:: images/animation/Introduction_to_animation_04.png
   :alt: images/animation/Introduction_to_animation_04.png
   :align: center

Use the straight line tool ( to draw a single horizontal line. This is
the ground.

.. figure:: images/animation/Introduction_to_animation_05.png
   :alt: images/animation/Introduction_to_animation_05.png
   :align: center

Then, select the 'walkcycle' layer and draw a head and torso (here done
with *ink\_brush\_25* but you can use any other brush).

Now, selecting a new frame will not make a new frame automatically.
Krita doesn't actually see the 'walkcycle' layer as an animated layer at
all!

.. figure:: images/animation/Introduction_to_animation_06.png
   :alt: images/animation/Introduction_to_animation_06.png
   :align: center

We can make it animatable by adding a frame to the timeline. a frame in
the timeline to get a context menu. Choose :menuselection:`New Frame`

.. figure:: images/animation/Introduction_to_animation_07.png
   :alt: images/animation/Introduction_to_animation_07.png
   :align: center

You can see it has become an animated layer because of the onion skin
icon showing up in the timeline docker.

.. figure:: images/animation/Introduction_to_animation_08.png
   :alt: images/animation/Introduction_to_animation_08.png
   :align: center

Use the to :menuselection:`copy frame` to copy the first frame onto the
second. Then, use the with :kbd:`Shift + Up` to move
the frame contents up.

We can see the difference by turning on the onionskinning:

.. figure:: images/animation/Introduction_to_animation_09.png
   :alt: images/animation/Introduction_to_animation_09.png
   :align: center

Now, you should see the previous frame as red.

.. Warning::

   Krita sees white as a color, not as transparent, so make sure the animation layer you
   are working on is transparent in the bits where there's no drawing.
   You can fix the situation by use the [[Colors|Color to Alpha]] filter, but prevention is best.

.. figure:: images/animation/Introduction_to_animation_10.png
   :alt: images/animation/Introduction_to_animation_10.png
   :align: center

Future frames are drawn in green,
and both colors can be configured in the onion skin docker.

.. figure:: images/animation/Introduction_to_animation_11.png
   :alt: images/animation/Introduction_to_animation_11.png
   :align: center

Now, we're gonna draw the two
extremes of the walkcycle. These are the pose where both legs are as far
apart as possible, and the pose where one leg is full stretched and the
other pulled in, read to take the next step.

Now, let's copy these two... We could do that with
:kbd:`Ctrl + Drag`, but here comes a tricky bit:

.. figure:: images/animation/Introduction_to_animation_12.png
   :alt: images/animation/Introduction_to_animation_12.png
   :align: center

:kbd:`Ctrl +` also selects and deselects frames, so to copy...

-  drag select all the frames you want to select.
-  :kbd:`Ctrl + Drag`. You need to make sure the first frame is
   'orange', otherwise it won't be copied along.

Now then...

.. figure:: images/animation/Introduction_to_animation_13.png
   :alt: images/animation/Introduction_to_animation_13.png
   :align: center

   squashed the timeline docker a bit to save space

#. Copy frame 0 to frame 2
#. Copy frame 1 to frame 3
#. In the animation docker, set the frame-rate to 4
#. select all frames in the timeline docker by dragging-selecting them.
#. press play in the animation docker.
#. Enjoy your first animation!

Expanding upon your rough walkcycle
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. figure:: images/animation/Introduction_to_animation_14.png
   :alt: images/animation/Introduction_to_animation_14.png
   :align: center

You can quickly make some space by
:kbd:`Alt + Dragging` any frame. This'll move that frame and all
others after it in one go.

Then draw inbetweens on each frame that you add

.. figure:: images/animation/Introduction_to_animation_16.png
   :alt: images/animation/Introduction_to_animation_16.png
   :align: center

You'll find that the more frames
you add, the more difficult it becomes to keep track of the onion skins.

You can modify the onion skin by using the onion skin docker, where you
can change how many frames are visible at once, by toggling them on the
top row. The bottom row is for controlling transparency, while below
there you can modify the colors and extremity of the coloring.

.. figure:: images/animation/Introduction_to_animation_15.png
   :alt: images/animation/Introduction_to_animation_15.png
   :align: center

Animating with multiple layers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Okay, our walkcycle is missing some hands, let's add them on a seperate
layer. So we make a new layer, and name it hands and...

.. figure:: images/animation/Introduction_to_animation_17.png
   :alt: images/animation/Introduction_to_animation_17.png
   :align: center

Our walkcycle is gone from the time-line docker! This is a feature
actually. A full animation can have so many little parts that an
animator might want to remove the layers they're not working on from the
timeline docker. So you manually have to add them.

.. figure:: images/animation/Introduction_to_animation_18.png
   :alt: images/animation/Introduction_to_animation_18.png
   :align: center

You can show any given layer in the timeline by doing on the layer in
the layer docker, and toggling 'show in timeline'.

.. figure:: images/animation/Introduction_to_animation_19.png
   :alt: images/animation/Introduction_to_animation_19.png
   :align: center

Exporting
~~~~~~~~~

When you are done, select :menuselection:`File --> Export Animation`

.. figure:: images/animation/Introduction_to_animation_20.png
   :alt: images/animation/Introduction_to_animation_20.png
   :align: center

It's recommended to save out your file as a png, and preferably in it's
own folder. Krita can currently only export png sequences.

.. figure:: images/animation/Introduction_to_animation_21.png
   :alt: images/animation/Introduction_to_animation_21.png
   :align: center

When pressing done, you can see the status of the export in the status
bar below.

.. figure:: images/animation/Introduction_to_animation_22.png
   :alt: images/animation/Introduction_to_animation_22.png
   :align: center

The images should be saved out as filenameXXX.png, giving their frame
number.

Then use something like Gimp(Linux, OSX, Windows), ImageMagick(Linux,
OSX, Windows), or any other gif creator to make a gif out of your image
sequence:

.. figure:: images/animation/Introduction_to_animation_walkcycle_02.gif
   :alt: images/animation/Introduction_to_animation_walkcycle_02.gif
   :align: center

For example, you can use
`VirtualDub <http://www.virtualdub.org/>`__\ (Windows) and open all the
frames and then go to :menuselection:`File --> Export --> GIF`

Enjoy your walkcycle!

.. Note::

   Krita 3.1 has a render animation feature. If you're using the 3.1 beta, check out the [[Special:MyLanguage/Render Animation|Render Animation]] page for more information!

Importing animation frames
--------------------------

You can import animation frames in Krita 3.0.

First let us take a sprite sheet from Open Game Art.(This is the Libre
Pixel Cup male walkcycle)

And we'll use :menuselection:`Image --> Split Image`
to split up the sprite sheet.

.. figure:: images/animation/Animation_split_spritesheet.png
   :alt: images/animation/Animation_split_spritesheet.png
   :align: center

The slices are even, so for a sprite sheet of 9 sprites, use 8 vertical
slices and 0 horizontal slices. Give it a proper name and save it as
png.

Then, make a new canvas, and select :menuselection:`File --> Import Animation Frames`.
This will give you a little window.
Select :menuselection:`Add images`. This should get you a
file browser where you can select your images.

.. figure:: images/animation/Animation_import_sprites.png
   :alt: images/animation/Animation_import_sprites.png
   :align: center

You can select multiple images at once.

.. figure:: images/animation/Animation_set_everything.png
   :alt: images/animation/Animation_set_everything.png
   :align: center

The frames are currently automatically
ordered. You can set the ordering with the top-left two drop down boxes.

Start
    Indicates at which point the animation should be imported.
Step
    Indicates the difference between the imported animation and the
    document frame rate. This animation is 8 frames big, and the fps of
    the document is 24 frames, so there should be a step of 3 to keep it
    even. As you can see, the window gives feedback of how much fps the
    imported animation would be with the currently given step.

Press OK, and your animation should be imported as a new layer.

.. figure:: images/animation/Animation_import_done.png
   :alt: images/animation/Animation_import_done.png
   :align: center

Reference
---------

-  https://community.kde.org/Krita/Docs/AnimationGuiFeaturesList
-  `The source for the libre pixel cup male walk
   cycle <http://opengameart.org/content/liberated-pixel-cup-lpc-base-assets-sprites-map-tiles>`__

