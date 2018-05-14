Timeline Docker
===============

.. figure:: images/timeline_docker/Timeline_docker.png
   :alt: images/timeline_docker/Timeline_docker.png

Legend:
~~~~~~~

#. **A** - **layers in timeline** &mdash; layers can be shown or hidden
   from the timeline by selecting the corresponding item in the
   right-click menu
#. **B** - **The Frame Table**

   Active Layer
       A highlighted row in the table. One can change active layer by
       clicking on the layer's name at the left header. It is *not*
       possible to change a layer by clicking inside the table for not
       disturbing user when scrubbing on the timeline
   Current Selection
       Just a selection. Can be created by mouse or keyboard. One can
       right-click on it to get a context menu to add/remove frames at
       that position. WARNING: *active frame* should not necessarily be
       a part of the selection; painting happens in the active frame,
       not in the selection

#. **C** - **Current Time** &mdash; a highlighted column in the table.
   Shows current image time.

   Active frame
       A frame of the *active layer* at the *current time* position.
       Active frame is always marked with a small circle inside. All
       editing operations happen with this frame only! WARNING: don't
       mix it with current selection!

#. **D** - **Cached Frames** &mdash; the gray rectangles at the top
   header show if the corresponding image frame is cached or not. Cache
   is used for 1) playback; 2) scrubbing.
#. **E** - **The frame count header**

   Framerate
       The ruler at the top is divided into small sections, multiples of
       the framerate. Multiples of the framerate has double-line mark,
       and smaller counts have small single-line marks

#. **G** - **The Frame Resizer.** &mdash; This allows you to resize
   frames in their width.
#. **F** - **The Menu.** &mdash; You can set 'show in timeline' here for
   the active layer.

The timeline docker is not immediately obvious, because when you start
drawing, this doesn't automatically create a key frame out of your
drawing. In fact, until you make a key frame on a layer, **Krita**
assumes that there's no animation going on at all on the layer and it'll
keep the layer static over the whole animation.

So, to make our first *animated layer*, we need to make a key frame! the
square on the timeline docker to add a :menuselection:`new frame`.

To keep a layer visible in the timeline docker regardless of which layer
is selected, select the layer in the layerdocker so it shows up in the
docker, the it on the docker-layer list and select
:menuselection:`show in timeline`. This way you can choose
which layers are important and which are only minor.

You can :kbd:`drag and drop` the frame around to a different empty
frame entry.

To add a new frame, either right click an empty frame entry to either
add a new frame, or to copy the visible frame into a new frame.

In 3.0.2 you can also add color markers to frames so that you can find
important frames back easily. The current color selection is remembered
for new frames so that you can easily make a set of colored frames and
then switch to another color.

GUI actions
~~~~~~~~~~~

#. **Horizontal header**

   -

      .. raw:: mediawiki

         {{MouseButton|left}}

          switch time + select frame of the active layer

   -

      .. raw:: mediawiki

         {{MouseButton|right}}

          menu (insert/remove/clear columns)

   -

      .. raw:: mediawiki

         {{MouseButton|left}}

      +drag: switch time + select frame of the current layer (scrub)

   -  <kbd>shift</kbd>+: select column
   -  <kbd>shift</kbd>++drag: selection multiple columns

#. **Vertical layers in timeline**

   -

      .. raw:: mediawiki

         {{MouseButton|left}}

          select layer

   -

      .. raw:: mediawiki

         {{MouseButton|right}}

          menu (add/remove layer, show/hide layer)

#. **Frames Table: empty area.**

   -

      .. raw:: mediawiki

         {{MouseButton|left}}

          select single frame + switch time + \*don't\* switch layer

   -

      .. raw:: mediawiki

         {{MouseButton|right}}

          menu (insert/copy frame)

   -

      .. raw:: mediawiki

         {{MouseButton|left}}

      +drag: select multiple frames + switch time to the latest +
      \*don't\* switch layer

   -  :kbd:`Shift` + to select all frames between the active and the
      clicked frame.
   -  :kbd:`Ctrl` + to select individual frames together.
      :kbd:`click+drag` them into place.

#. **Frames Table: area on existent frame.**

   -

      .. raw:: mediawiki

         {{MouseButton|left}}

          select single frame + switch time + \*don't\* switch layer

   -

      .. raw:: mediawiki

         {{MouseButton|right}}

          menu (remove frame)

   -

      .. raw:: mediawiki

         {{MouseButton|left}}

      +drag: \*move\* a frame or multiple frames

   -  :kbd:`Ctrl` ++drag on any frame(or set of) to copy said
      frame(s) and drag it into a spot.
   -  :kbd:`Alt` +drag on any given frame will move that frame and
      *all* the frames to the right of it. This is useful for when you
      need to clear up some space in your animation, but don't want to
      select all the frame to the right of a particular frame.

#. **Frames Table: all**

   -  :kbd:`Space` +: pan
   -  :kbd:`Space` +: zoom

**Krita** will only track key frames. This is unlike **Flash** where you
have to manually indicate how long a key frame will hold. Instead,
**Krita** just assumes that the space between key frame 1 and key frame
2 is supposed to be filled with key frame 1.

To delete frames, the frame and press :menuselection:`delete frame`. 
This will delete all selected frames.

To manually play your animation by using the mouse, a concept called
*scrubbing*, you click-drag on the frame-count header. You can also
right click this header to add and remove whole columns from the
animation over all visible layers.

The is a small area between the header and the frames where you can see
whether a frame has been cached. This is important for playback.

