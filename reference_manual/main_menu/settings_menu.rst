.. meta::
   :description lang=en:
        The settings menu in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Micheal Abrahams
             - Raghavendra Kamath <raghavendr.raghu@gmail.com>
   :license: GNU free documentation license 1.3 or later.
   
.. _settings_menu:

============
Setting Menu
============

The Settings Menu houses the configurable options in Krita and where you determine most of the "look and feel" of the application.

Show Dockers
------------

Show Dockers
    Determines whether or not the dockers are visible.  This is a nice aid to cleaning up the interface and removing unnecessary "eye-ball clutter" when you are painting.  If you've got your brush and you know you're just going to be painting for awhile why not flip the dockers off?  You'd be amazed what a difference it makes while you're working.  However, if you know you're swapping out tools or working with layer or any of the other myriad things Krita lets you do then there's no point getting caught up in flipping the docks on and off.  Use you time wisely!

 .. note::
    
    This is a great candidate to add to the toolbar so you can just click the dockers on and off and don't even have to open the menu to do it. See :ref:`configure_toolbars` below for more.

Dockers
-------

Krita subdivides the access of many of it's features into functional panels called Dockers. Dockers are small windows that can contain, for example, things like the Layer Stack, Color Palette or Brush Presets. Think of them as the painter's palette, or his water, or his brushkit.  

Learning to use dockers effectively is a key concept to maximizing your time using Krita.  

Themes
------

Krita provides a number of color-themed interfaces or "looks".  The current set of themes are the following:

* Dark (Default)
* Blender
* Bright
* Neutral

There is no easy way to create and share themes. The color themes are defined in the Share > Color Schemes folder where Krita is downloaded.

Configure Shortcuts
-------------------

Configuring shortcuts is another way to customize the application to fit you.  Whether you are transitioning from another app, like Photoshop or MyPaint, or you think your own shortcut keys make more sense for you then Krita has got you covered.  You get to the shortcuts interface through :menuselection:`Settings --> Configure Krita`  and by choosing the :menuselection:`Keyboard Shortcuts`  tab.

To use, just type the :guilabel:`Action` into the Search box you want to assign/reassign the shortcut for.  Suppose we wanted to assign the shortcut :kbd:`Ctrl + G`  to the :guilabel:`Action` of Group Layers so that every time we pressed :kbd:`Ctrl + G`  a new Layer Group would be created.  Use the following steps to do this:

#. Type "Group Layer"
#. Click on Group Layer and a small inset box will open.
#. Click the Custom radio button
#. Click on the first button and type the :kbd:`Control + G`  key combination.
#. Click OK

From this point on, whenever you press :kbd:`Ctrl + G`  you'll get a new :guilabel:`Group Layer`.  

.. note::
    Smart use of shortcuts can save you significant time and further streamline your workflow.

Manage Resources
----------------

Manage the resources.You can read more about it :ref:`here <resource_management>`.

Switch Application Language
---------------------------

If you wish to use Krita in a different translation.

.. _configure_toolbars:

Configure Toolbars
------------------

Krita allows you to highly customize the Toolbar interface.  You can add, remove and change the order of nearly everything to fit your style of work.  To get started, choose :menuselection:`Settings --> Configure Toolbars`

.. image:: /images/en/Configure_Toolbars_Krita.png 
   :align: center

The dialog is broken down into three main sections:

The Toolbar
    Choose to either modify the "File" or "Brushes and Stuff" toolbars
Available Actions:
    All the options that can be added to a toolbar
Current Actions:
    All the actions currently assigned and the order they are in.

Use the arrows between the *Available* and *Current* actions sections to move items back and forth and up and and down in the hierarchy.  This type of inclusion/exclusion interface has been around on PCs for decades so we don't need to go into great detail regarding its use.  What is important though is selecting the correct Toolbar to work on.  The :guilabel:`File` Toolbar allows you to add items between the :menuselection:`New` , :menuselection:`Open`  and :menuselection:`Save`  buttons as well as to the right of the :menuselection:`Save`  button.  The :guilabel:`Brushes and Stuff` Toolbar,lets you modify anything from the Gradients button over to the right.  This is probably where you'll do most of your editing.

Here we've added :menuselection:`Select Opaque` , :menuselection:`Local Selection` ,  :menuselection:`Transparency Mask` , :guilabel:`Isolate Layer` , :menuselection:`Show Assistant Previews` .  This is just an example of a couple of options that are used frequently and might trim your workflow.   This is what it looks like in the configuration tool:

.. image:: /images/en/Configure_Toolbars_Brushes_and_Stuff_Custom.png 
   :align: center

You'll notice that some of the items are text only and some only icons.  This is determined by whether the particular item has an associated icon in Krita.  You can select anything from the *Available* section and move it to the *Current* one and rearrange to fit your own workflow.  

If you add so many that they won't all fit on your screen at once, you will see a small chevron icon appear.  Click it and the toolbar expands to show the remaining items.

Toolbars shown.
    Gives a list of toolbars that can be shown.

At this time Krita does not support the ability to create additional toolbars. The ones available are:

.. image:: /images/en/Toolbars_Shown.png 
   :align: center

Although not really advisable, you can turn them off (but why would you..really?)
