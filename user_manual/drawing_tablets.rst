.. _drawing_tablets:

===============
Drawing Tablets
===============

This page is about drawing tablets, what they are, how they work, and
where things can go wrong.

What are tablets?
-----------------

Drawing with a mouse can be unintuitive and difficult compared to pencil
and paper. Even worse, extended mouse use can result in carpal tunnel
syndrome. That’s why most people who draw digitally use a specialized
piece of hardware known as a drawing tablet.

.. image:: /images/en/Krita_tablet_types.png

A drawing tablet is a piece of hardware that you can plug into your
machine, much like a keyboard or mouse. It usually looks like a plastic
pad, with a stylus. Another popular format is a computer monitors with
stylus used to draw directly on the screen. These are better to use than
a mouse because it’s more natural to draw with a stylus and generally
better for your wrists.

With a properly installed tablet stylus, Krita can use information like
pressure sensitivity, allowing you to make strokes that get bigger or
smaller depending on the pressure you put on them, to create richer and
more interesting strokes.

.. note::
    Sometimes, people confuse finger-touch styluses with a proper tablet. You can tell the difference because a drawing tablet stylus usually has a pointy nib, while a stylus made for finger-touch has a big rubbery round nib, like a finger. These tablets may not give good results and a pressure-sensitive tablet is recommended.
    
    .. image:: /images/en/Krita_tablet_stylus.png

Drivers and Pressure Sensitivity
--------------------------------

So you have bought a tablet, a real drawing tablet. And you wanna get it
to work with Krita! so you plug in the USB cable, start up Krita and...
it doesn’t work! Or well, you can make strokes, but that pressure
sensitivity you heard so much about doesn’t seem to work.

This is because you need to install a program called a ‘driver’. Usually
you can find the driver on a CD that was delivered alongside your
tablet, or on the website of the manufacturer. Go install it, and while
you wait, we’ll go into the details of what it is!

Running on your computer is a basic system doing all the tricky bits of
running a computer for you. This is the operating system, or OS. Most
people use an operating system called Windows, but people on an Apple
device have an operating system called MacOS, and some people, including
many of the developers use a system called Linux.

The base principle of all of these systems is the same though. You would
like to run programs like Krita, called software, on your computer, and
you want Krita to be able to communicate with the hardware, like your
drawing tablet. But to have those two communicate can be really
difficult - so the operating system, works as a glue between the two.

Whenever you start Krita, Krita will first make connections with the
operating system, so it can ask it for a lot of these things: It would
like to display things, and use the memory, and so on. Most importantly,
it would like to get information from the tablet!

.. image:: /images/en/Krita_tablet_drivermissing.png

But it can’t! Turns out your operating system doesn’t know much about
tablets. That’s what drivers are for. Installing a driver gives the
operating system enough information so the OS can provide Krita with the
right information about the tablet. The hardware manufacturer's job is
to write a proper driver for each operating system.

.. warning::
    Because drivers modify the operating system a little, you will always need to restart your computer when installing or deinstalling a driver, so don’t forget to do this! Conversely, because Krita isn’t a driver, you don’t need to even deinstall it to reset the configuration, just rename or delete the configuration file.

Where it can go wrong
---------------------

Krita automatically connects to your tablet if the drivers are
installed. When things go wrong, usually the problem isn't with Krita.

Surface pro tablets need two drivers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Certain tablets using n-trig, like the Surface Pro, have two types of
drivers. N-trig by default only has Windows Ink drivers, but Krita
requires Wintab-style drivers. Recommended to install both versions. See
the FAQ for more info on this.

.. note::

   Since 3.3, Krita can use windows ink style drivers too, just go to :menuselection:`Settings --> Configure Krita --> Tablet Settings` and toggle the "windows 8+ pointer input" there.

Windows 10 updates
~~~~~~~~~~~~~~~~~~

Sometimes a windows 10 update can mess up tablet drivers. In that case,
reinstalling the drivers should work.

Broken Drivers
~~~~~~~~~~~~~~

Tablet drivers need to be made by the manufacturer. Sometimes, with
really cheap tablets, the hardware is fine, but the driver is badly
written, which means that the driver just doesn’t work well. We cannot
do anything about this, sadly. You will have to sent a complaint to the
manufacturer for this, or buy a better tablet with better quality
drivers.

Conflicting Drivers
~~~~~~~~~~~~~~~~~~~

On Windows, you can only have a single wintab-style driver installed at
a time. So be sure to deinstall the previous driver before installing
the one that comes with the tablet you want to use. Other operating
systems are a bit better about this, but even Linux, where the drivers
are often preinstalled, cant run two tablets with different drivers at
once.

Interfering software
~~~~~~~~~~~~~~~~~~~~

Sometimes, there's software that tries to make a security layer between
Krita and the operating system. Sandboxie is an example of this.
However, Krita cannot always connect to certain parts of the operating
system while sandboxed, so it will often break in programs like
sandboxie. Similarly, certain mouse software, like Razer utilities can
also affect whether Krita can talk to the operating system, converting
tablet information to mouse information. This type of software should be
configured to leave Krita alone, or be deinstalled.

The following software has been reported to interfere with tablet events
to Krita:

#. Sandboxie
#. Razer mouse utilities
#. AMD catalyst “game mode” (this broke the right click for someone)

Flicks (Wait circle showing up and then calling the popup palette)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you have a situation where trying to draw keeps bringing up the
pop-up palette on windows, then the problem might be flicks. These are a
type of gesture, a bit of windows functionality that allows you to make
a motion to serve as a keyboard shortcut. Windows automatically turns
these on when you install tablet drivers, because the people who made
this part of windows forgot that people also draw with computers. So you
will need to turn it off in the windows flicks configuration.

Wacom Double Click Sensitivity (Straight starts of lines)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you experience an issue where the start of the stroke is straight,
and have a wacom tablet, it could be caused by the wacom driver
double-click detection.

To fix this, go to the wacom settings utility and lower the double click
sensitivity.

Supported Tablets
-----------------

Supported tablets are the ones of which Krita developers have a version
themselves, so they can reliably fix bugs with them. :ref:`We maintain a list of those here <list_supported_tablets>`.
