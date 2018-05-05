.. _navigation:

==========
Navigation
==========

Interface
---------

Krita provides an ample choice for the artists to arrange the workspace. An artist can snap and arrange the elements of the workspace, much like snapping together Lego blocks.  Krita provides a set of construction kit parts in the form of Dockers and Toolbars. Every set of elements can be shown, hidden, moved and rearranged that let the artist easily customize their own user interface experience.

A Tour of the Krita Interface
-----------------------------

As we've said before, the Krita interface is very malleable and the way that you choose to configure the work surface may not resemble those above but, at least this we can use these as a starting point.

.. image:: /images/en/Interface-tour.png
   :width: 1000
   :align: center

- **A** -- Traditional '''File''' or action menu found in most windowed applications
- **B** -- Toolbar - This is where you can choose your brushes, set parameters such as opacity and size and other settings.
- **C** -- Sidebars for the Movable Panels/Dockers.  In some applications, these are known as Dockable areas. Krita also allows you to dock panels at the top and/or bottom as well.
- **D** -- Status Bar - This space shows you prefered mode for showing selection i.e marching ants or mask mode, your selected brush preset, :ref:`Color Space <color_managed_workflow>`, image size and provides a convenient zoom control.
- **E** -- Floating Panel/Docker - These can be "popped" in and out of their docks at any time in order to see a greater range of options.  A good example of this would be the :ref:`brush_presets_docker` or the :ref:`palette_docker`

Your canvas sits in the middle and unlike traditional paper or even most digital painting apps, Krita provides the artist with a scrolling canvas of infinite size (not that you'll need it of course!).  The standard navigation tools are as follows:

Navigation
----------
Many of the canvas navigation actions, like rotation, mirroring and zooming have default keys attached to them:

Panning
 This can be done through |mousemiddle|, :kbd:`Space +` |mouseleft| and :kbd:`the directional keys`.
Zooming
 Discrete zooming can be done through :kbd:`+`, and :kbd:`-`. Using :kbd:`Ctrl + Space` or :kbd:`Ctrl +` |mousemiddle| can allow for direct zooming with the stylus.
Mirroring
 You can mirror the view can be quickly done via :kbd:`M`.   Mirroring is a great technique that seasoned digital artists use to quickly review the composition of their work to ensure that it "reads" well, even when flipped horizontally.
Rotating
 You can rotate the canvas without transforming it can be done with :kbd:`Ctrl + [` or :kbd:`4` and the other way with :kbd:`Ctrl + ]` or :kbd:`6`. Quick mouse based rotation is :kbd:`Shift + Space` and :kbd:`Shift +` |mousemiddle|. To reset rotation use :kbd:`5` .

You can also find these under :menuselection:`View --> Canvas`

Dockers
-------

Krita subdivides many of it's options into functional panels called Dockers (aka Docks).
Dockers are small windows that can contain, for example, things like the layer stack, Color Palette or Brush Presets. Think of them as the painter's palette, or his water, or his brushkit.
Dockers can be activated by choosing the :guilabel:`Settings` menu and the :guilabel:`Dockers` sub-menu.  There you will find a long list of available options. 

Dockers can be removed by clicking the **x** in the upper-right of the docker-window.

Dockers, as the name implied, can be docked into the main interface. You can do this by dragging the docker to the sides of the canvas (or top or bottom if you prefer).

Dockers contain many of the "hidden", and powerful, aspects of **Krita** that you will want to explore as you start delving deeper into the application.

You can arrange the dockers in almost any permutation and combination according to the needs of your workflow, and then save these arrangements as Workspaces.

Dockers can be prevented from docking by pressing :kbd:`Ctrl` before starting to drag the docker.

Sliders
-------
Krita uses these to control values like brush size, opacity, flow, Hue, Saturation, etc... Below is an example of a Krita slider.

.. image:: /images/en/Krita_Opacity_Slider.png

The total range is represented from left to right and blue bar gives an indication of where in the possible range the current value is.  Clicking anywhere, left or right, of that slider will change the current number to something lower(to the left) or higher(to the right).

To input a specific number, |mouseright| the slider. A number can now be entered directly for even greater precision.

Pressing :kbd:`Shift` while dragging the slider changes the values at a smaller increment, and Pressing :kbd:`Ctrl` while dragging the slider changes the value in whole numbers or multiples or 5.

Toolbars
--------
.. image:: /images/en/Krita_Toolbar.png

Toolbars are where some of the important actions and menu's are placed so that they are readily and quickly available for the artist while painting.  

You can learn more about the Krita Toolbars and how to configure them in over in the Toolbars section of the manual.
Putting these to effective use can really speed up the Artist's workflow, especially for users of Tablet-Monitors and Tablet-PCs.

Workspace Chooser
~~~~~~~~~~~~~~~~~

The button on the very right of the toolbar is the workspace chooser. This allows you to load and save common configurations of the user interface in Krita. There are a few common workspaces that come with Krita.

Pop-up Palette
--------------

.. image:: /images/en/Krita-popuppalette.png
   :align: center

Pop-up Palette is an unique feature in Krita designed to increase productivity of the artist, It is a circular menu for quickly choosing brushes, foreground and background colors, recent colors while painting. To access the palette you have to just |mouseright| on the canvas. The palette will spawn at the place of the brush tip or cursor. 

By tagging your brush presets you can add particular sets of brushes to this palette. for example If you add some inking brush presets to inking tag you can and change the tags to inking in the pop-up palette you'll get all the inking brushes in the palette. 

You can :ref:`tag_system` brush presets via the :ref:`brush_presets_docker`, check out the resource overview page to know more about tagging in general.

If you call up the pop-up palette again, you can click the wrench icon, and select the tag. In fact, you can make multiple tags and switch between them.
When you need more than ten presets, go into :menuselection:`Settings --> configure Krita --> general --> favorite presets` and change the number of presets from 10 to something you feel comfortable.
