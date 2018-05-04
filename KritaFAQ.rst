.. _faq:

#########
Krita FAQ
#########

This page contains common problems people have with Krita

General
=======

General questions

What is Krita?
--------------

This is our vision for the development of Krita:

    Krita is a free and open source cross-platform application that
    offers an end-to-end solution for creating digital art files from
    scratch. Krita is optimized for frequent, prolonged and focused use.

    Explicitly supported fields of painting are illustrations, concept
    art, matte painting, textures, comics and animations.

    Developed together with users, Krita is an application that supports
    their actual needs and workflow. Krita supports open standards and
    interoperates with other applicatio

Krita starts with an empty canvas and nothing changes when you try to draw or Krita shows a black or blank screen or Krita crashes when creating a document or Krita's menubar is hidden on a Windows system with an Intel GPU
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

*Update to Krita 3.3 or later:* Go to Settings/Configure Krita/Display,
change Renderer to ANGLE and restart Krita. If this doesn't work,
disable Canvas Graphics Acceleration and please also make a bug report
about it.

Krita freezes when saving to PNG or JPEG on OSX or macOS/ I cannot enable OpenGL on my mac
------------------------------------------------------------------------------------------

If the former, you probably have an AMD Radeon display chip and are
running a version of Krita lower than 3.2. Disable opengl in Krita. If
the latter, you've still got an AMD display chip in your mac and are
running Krita 3.2 or 3.3. The problem is that Apple's AMD opengl drivers
hang Krita 3.x when trying to save to a single-layer file format. No, we
don' t know why, and we don't have the hardware to figure out why. But
Krita 4.0, this problem has been solved because there Krita saves a copy
of the image in the background.

Is it possible to use Krita in my own language, not English?
------------------------------------------------------------

Unless you belong to a proud tribe of a minority language, YES it is
POSSIBLE! You can easily do this by going into

#. settings → switch application language. An small window will appear.
#. click Primary language and select your language.
#. click OK to close the window.
#. restart krita and it will be displayed in your selected language!

Does Krita have layer clip or clipping mask?
--------------------------------------------

Krita has no clipping mask, but it has a clipping feature called
**inherit alpha**. Let's see `**this
page** <Clipping_Masks_and_Alpha_Inheritance>`__ and learn how to do
clipping in Krita!

OBS can't record the Krita openGL canvas
----------------------------------------

Apparantly the workaround for this is to either...

#. Turn off OpenGL in settings → configure Krita → display.
#. Or don't use the hardware accelerated mode(game recording mode) in
   OBS, so capture the whole desktop instead of attempting to capture
   only Krita.

*For Krita 3.3 or later:* You might be able to work around by using the
ANGLE renderer instead of native OpenGL.

Where are the configuration files stored?
-----------------------------------------

These are stored at the following places for the following operating
systems:

.. raw:: mediawiki

   {{ConfigPath}}

The kritarc file is the configuration file.

My resource disappeared with installing 3.0! Did Krita delete them?
-------------------------------------------------------------------

Don't worry, Krita nor the installer know how to delete your
brushes(unless you use the 'delete backup files' in the resource
manager)

Your old 2.9 brushes should be at

Linux

    ``home/.kde/share/krita``

Windows

    ``User\AppData\Roaming\krita\share\apps\krita\``

For 3.0, these should go to

.. raw:: mediawiki

   {{ResourcePath|}}

Just copy the files over!

Resetting Krita configuration
-----------------------------

You can reset the Krita configuration in two ways:

-  For Krita 3.0 and later: Delete/rename the kritarc file, found here:

-  

   -  Linux: $HOME/.config/kritarc
   -  Windows: %LOCALAPPDATA%\\kritarc
   -  OSX $HOME/Library/Preferences/kritarc

There can be two other files you might want to remove: kritaopenglrc and
kritadisplayrc.

If the config was causing a crash, don't delete but instead rename and
send us the file so we can figure out what caused the crash.

Krita tells me it can't find the configuration files and then closes, what should I do?
---------------------------------------------------------------------------------------

First, search your filesystem for kritarc. If it's nowhere to be found,
then that is the main problem.

Causes for this could be the following:

-  It might be that your download got corrupted and is missing
   files(common with bad wifi and bad internet connection in general),
   in that case, try to find a better internet connection before trying
   to download again. Krita should be around 80 to 100 mb big when
   downloading.
-  It might be something went wrong during installation. Check if your
   harddrive isn't full. If not, and the problem still occurs, there
   might be something odd going on with your device and it's recommended
   to find an computer expert to diagnose what is going on.
-  Some unzippers don't unpack our zipfiles correctly. The native ones
   on windows, OSX and most linux distributions should be just fine, and
   we recommend using them.

What Graphics Cards does Krita support?
---------------------------------------

Krita can use OpenGL to accelerate painting and canvas zooming, rotation
and panning. Nvidia and recent Intel GPUs give the best results. Make
sure your OpenGL drivers support OpenGL 3.2 as the minimum. AMD/ATI
GPU’s are known to be troublesome, especially with the proprietary
drivers on Linux. However, it works perfectly with the radeon free
driver on linux for supported AMD GPU.

*For Krita 3.3 or later:* Krita on Windows can use Direct3D 11 for
graphics acceleration (through ANGLE).

I can't edit text from PSD files created by photoshop
-----------------------------------------------------

There is no text support for psd file yet. The text will appear
rasterized and converted into paint layer.

How much memory does my image take?
-----------------------------------

For simple images, that’s pretty simple: you mulitply width \* height \*
channels \* size of the channels (so, for a 1000×1000 16 bit integer
rgba image: 1000 x 1000 x 4 x 2). You multiply this by the number of
layers plus two (one for the image, one for the display). If you add
masks, filter layers or clone layers, it gets more complicated.

Why do I get a checkerboard pattern when I use the eraser?
----------------------------------------------------------

You’re probably used to Gimp or Photoshop. The background, that is
default or first layer in these applications doesn’t have an alpha
channel by default. so, on their background layer, the eraser paints in
the background color.

In Krita, all layers have an alpha channel, so if you want to paint in
the background color, you should do that, instead of erasing. You get
the same effect in, say, gimp, if you create new image, add an alpha
channel and then use the eraser tool. Most Krita users actually on
starting a sketch in Krita add a new blank layer first thing they do
(the INSert key is a useful shortcut here.) That doesn’t use extra
memory, since a blank layer or a layer with a default color just takes
one pixel worth of memory.

Can I use Krita with sandboxie on Windows?
------------------------------------------

No, this is not recommended. Sandboxie causes stuttering and freezes due
to the way it intercepts calls for resources on disk.

Can krita work with 8 bit (indexed) images?
-------------------------------------------

No. Krita has been designed from the ground up to use real colors, not
indexed palettes. There are no plans to support indexed color images,
though Krita can export to some indexed color image formats, such as
GIF. However, Krita does not offer detailed control over pixel values.

How do I export gifs with Krita?
--------------------------------

Currently, Krita 3.0 doesn't have gif, apng or spritesheet export yet.
Krita 3.1 does have `Render Animation <Render_Animation>`__.

For big projects we recommend exporting your animation as a png
sequence, and then inputtng that into a video editor.

How can I produce a backtrace on Windows?
-----------------------------------------

*See also: `Dr. Mingw debugger <Dr._Mingw_debugger>`__*

If you experience a crash on Windows, and can reproduce the crash, the
bug report will be much more valuable if you can create a backtrace. A
backtrace is somewhat akin to an airplane's blackbox, in that they tell
what set of instructions your computer was running when it was
crashing(where the crash happened), making it very useful to figure out
why the crash happened.

For **Krita 3.1 or later**, the `Dr. Mingw
debugger <Dr._Mingw_debugger>`__ is bundled with Krita. Please visit the
page `Dr. Mingw debugger <Dr._Mingw_debugger>`__ for instructions on
getting a backtrace with it.

For **Krita 3.0**, first you need to install DrMingw, which is a debugger application:

https://github.com/jrfonseca/drmingw

Then you need a special version of Krita, one with debugging
information. The latest development builds with all the latest bug fixes
are here:

-  http://files.kde.org/krita/3/windows/debugbuilds/krita3-x64-dbg-latest.zip
-  http://files.kde.org/krita/3/windows/debugbuilds/krita3-x86-dbg-latest.zip

You can download the right file, unzip it and double-click on the krita
link in the unzipped folder. If you now reproduce the crash, Windows
will ask you whether you want to debug it; answer yes, and DrMingw will
pop up and after some time show you a lot of text. You can paste that
into your bug report.


Where can I find older versions of Krita?
-----------------------------------------

All older versions of Krita that are still available can be found here:

-  `Krita 3.0.builds <http://files.kde.org/krita/3>`__
-  `Krita 2.x.builds <http://files.kde.org/krita/>`__
-  `Very old builds <http://download.kde.org/stable/krita>`__

On Windows, the Krita User Interface is too small on my HiDPI screen.
---------------------------------------------------------------------

If you're using Windows, you can set the display scaling to1 150% or
200%, and enable the experimental HiDPI support in the config:

-  On the menu, select “Settings” -> “Configure Krita”
-  Switch to “Window”
-  Check “Enable Hi-DPI support”
-  Restart Krita

I'm using MacOS Sierra and Krita won't start
--------------------------------------------

We don't sign Krita binaries on OSX because we feel Apple already has
more money than is good for them and in order to sign our binaries we
have to give them money every year. In Sierra, Apple removed the
“Anywhere” button in the security pane, making it even less obvious how
to start Krita. Here's the trick: go to the krita app bundle in Finder
and ctrl-click on it. Then Krita will start, and macOS will remember
that. Or you can re-enable the button by executing the following line in
your terminal:

``sudo spctl --master-enable``

I'm using Linux and Krita crashes on start
------------------------------------------

If you also see somethine like “QIODevice::seek: Invalid pos: -18” on
the command line, it's quite likely that at one point you had the Deepin
file manager installed. That comes with some qimageio plugins that are
completely and utterly broken. Krita's reference images docker scans
your Pictures folder on startup, and if your Pictures folder. It reads
the images using Qt's QImageIO class, which loads that Deepin plugin.
The issue is reported to Deepin
(https://github.com/linuxdeepin/deepin-image-viewer/issues/2), but the
Deepin developers don't seem convinced that it makes sense to check
whether there are any bytes to read, before reading the bytes.

Tablets
=======

What tablets does Krita support?
--------------------------------

Krita isn’t much fun without a pressure sensitive tablet. If the tablet
has been properly configured, Krita works with Wacom, Huion and other
uc-logic based tablets, on Windows and Linux (look below for more
information on Huion Linux support). N-Trig tablets should work too, but
some setting up might be needed. Genius tablets are know to have
problems. You can find a community curated list of tablets supported by
krita `here <List_of_Tablets_Supported>`__.

If you're looking for information about tablets like the iPad or Android
tablets, look
`here <KritaFAQ#Can_I_get_Krita_for_iPad.3F_for_Android.3F>`__.

What if your tablet is not recognized by Krita?
-----------------------------------------------

Linux
~~~~~

We would like to see the full output of the following commands:

#. lsmod
#. xinput
#. xinput list-props (id can be fetched from the item 2)
#. Get the log of the tablet events (if applicable):

   #. Open a console application (e.g. Konsole on KDE)
   #. Set the amount of scrollback to 'unlimited' (for Konsole: Settings
      → Edit Current Profile → Scrolling → Unlimited Scrollback)
   #. Start Krita by typing 'krita' and create any document :)
   #. Press Ctrl+Shift+T, you will see a message box telling the logging
      is started
   #. Try to reproduce your problem
   #. The console is now filled with the log. Attach it to a bug report
      or paste using services like paste.kde.org

#. Attach all this data to a bugreport using public paste services like
   paste.kde.org

Windows
~~~~~~~

First check whether switching to the Windows 8 Pointer API makes a
difference: Settings/Configure Krita/Tablet. Then, if you still have
problems with Windows and your tablet, we cannot help you without a
tablet log.

#. Install
   `DebugView <http://technet.microsoft.com/en-us/sysinternals/bb896647.aspx>`__
   from the official Microsoft site
#. Start DebugView
#. Start Krita
#. Press Ctrl+Shift+T, you will see a message box telling the logging is
   started
#. Try to reproduce your problem
#. Go back to DebugView and save its output to a file. Attach this file
   to a bug report or paste using services like paste.kde.org.

How to fix a tablet offset on multiple screen setup on Windows
--------------------------------------------------------------

If you see that your tablet pointer has an offset when working with
Krita canvas, it might be highly probable, that Krita got incorrect
screen resolution from the system. That problem happens mostly when an
external monitor is present and when either of monitor or a tablet was
connected after the system boot.

Now there is a simple solution to fix this data manually.

#. Lay you stylus aside
#. Start Krita without using a stylus, that is using a mouse or a
   keyboard
#. Press Shift key and hold it
#. Touch a tablet with your stylus so Krita would recognize it

You will see a special dialog asking for real screen resolution. Choose
the correct value or enter it manually and press OK.

If you have a dual monitor setup and only the top half of the screen is
reachable, you might have to enter the total width of both screens plus
the double height of your monitor in this field.

If this didn't work, and if you have a Wacom tablet, an offset in the
canvas can be caused by a faulty Wacom preference file which is not
removed or replaced by reinstalling the drivers.

To fix it, use the “Wacom Tablet Preference File Utility” to clear all
the preferences. This should allow Krita to detect the correct settings
automatically.

(WARNING, this will reset your tablets configuration so you will need to
recalibrate/reconfigure it).

*For Krita 3.3 or later:* You can try to `enable “Windows 8+ Pointer
Input” <Tablet_Settings>`__, but some features might not work with it.

Microsoft Surface Pro and NTrig
-------------------------------

Krita 3.3.0 supports the Windows Pointer API (Windows Ink) natively.
Your Surface Pro or other n-trig enabled pen tablet should work out of
the box with Krita after you enable Windows Ink in Settings/Configure
Krita/Tablet.

Tablet Pro and the Surface Pro
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Unlike Wacom's Companion, the Surface line of tablets doesn't have
working hardware buttons. Tablet Pro is a (non-free) utility that puts
virtual buttons on screen. Krita 3.1 (currently in beta) will have
predefined shortcut profiles to work with Tablet Pro.

http://tabletpro.net/

See http://www.youtube.com/watch?v=WKXZgYqC3tI for instructions.

How to make my Huion tablet work with Krita on Linux?
-----------------------------------------------------

This applies to Huion models: H610 (maybe others too? report your model
here..)

First, if you use a linux kernel version 3.13 or above, remove the buggy
huion driver with this command line:

``rmmod hid-huion``

or, depending on your distribution:

``modprobe -r hid-huion``

Then build and install the `correct kernel
driver <https://github.com/DIGImend/huion-driver>`__.

(note that you’ll have to redo those steps after each kernel update,
until this driver is included in mainline kernel.)

Now you should have a working tablet in Krita and Gimp (sadly, it
doesn’t work with current mypaint version, probably because of GTK3..)
But as by default the whole tablet area is mapped to the whole screen,
depending on your screen ratio you may want to adapt the active area of
the tablet to have the same proportions.

For this, first you need to install xinput-calibrator (check in your
package manager it may be named a bit differently, with – or \_ in the
middle…)

Now, you’ll need the name or ID of your device, so list devices with
this command line:

``xinput_calibrator --list | grep H610``

Then I noticed the huion report two different devices with the same
name, just different ID. So to find out which is the one corresponding
to the actual stylus tablet area, get devices values with this command
line:

``xinput_calibrator --device 10``

(adapt id number the the values you found on previous step…)

It will open a sort of calibration window, don’t click the crosses, just
press any key to abort. Then you can see the default values of the
device appeared in the console. One devices has much bigger max values
(0 40000 0 25000), this is the one you should get the ID number. (in my
case here was ID 10 )

Then calculate the values to set the active area to the same ratio as
screen.. For example, for a 1920×1080 screen, I did this operation:
40000\*1080/1920=22500

And finally set the calibration values (TopX BottomX TopY BottomY) like
this:

``xinput set-prop 10 “Evdev Axis Calibration” 0 40000 0 22500``

**Weird stuff happens on Windows, like ripples, rings, squiggles or
poltergeists**

Windows comes with a lot of settings to make it work with a pen. Al
these settings are annoying. This tool can help to set the settings
correctly if you're using a tablet:

https://github.com/saveenr/Fix_My_Pen/releases

Toolbox
=======

Toolbox missing
---------------

You either reset the workspace by pressing the right most button on the
toolbar, the workspace switcher, and clicking a workspace from the list.

Or right-click on any docker titlebar or open space in any toolbar, and
select Toolbox. It's the first option.

Or check the Settings menu, it's got lots of interesting stuff, then go
to the Dockers menu and... select toolbox.

Tool icons size is too big
--------------------------

Right click the toolbox to set the size.

Krita can't get maximized
-------------------------

This is due to the toolbox being too big, for example, when it's
accidentally made 1-columns wide. Resize it to make it 2 columns wide.

Resources
=========

Is there a way to restore a default brush that I have mistakenly overwritten with new settings to default?
----------------------------------------------------------------------------------------------------------

Yes. First go to the resource folder, which is

.. raw:: mediawiki

   {{ResourcePath|}}

You can easily do this by going into settings → manage resources → open
resource folder.

Then go into the paintoppressets folder and remove the latest created
file that you made of your preset.

Then go back to the resources folder and edit the blacklist file to
remove the previous paintop preset so Krita will load it. (Yes, it is a
bit of a convoluted system, but at the least you don't lose your
brushes)

How do I set favourite presets?
-------------------------------

Right-click a brush in the brush docker and assign it a tag. Then when
clicking the lower-right settings icon you can pick you tag.

Can Krita load Photoshop Brushes?
---------------------------------

Yes, but there are limitations. You can load ABR files by using the Add
Brush button in the predefined brush tab in the brush editor. Since
Adobe hasn’t disclosed the file format specification, we depend on
reverse-engineering to figure out what to load, and currently that’s
limited to basic features.

Krita is slow
=============

There is a myriad of reasons why this might be. Below is a short
checklist.

-  Something else is hogging the cpu.
-  You are running Windows, and have 3rdparty security software like
   sandboxie or total defender installed
-  you are working on images that are too big for your hardware
   (dimensions, channel depth or number of layers)
-  you do not have canvas acceleration enabled

Please also check this page: https://phabricator.kde.org/T7199

Slow start-up
-------------

You probably have too many resources installed. Deactivate some bundles
under settings → manage resources

If you're using Windows and the portable zip file, Windows will scan all
files everytime you start Krita. That takes ages. Either use the
installer or tell Microsoft Security Essentials to make an exception for
Krita.

Slow Brushes
------------

-  Check if you accidentally turned on the stabilizer in the tool
   options docker.
-  Try another display filter like trilinear. settings → configure Krita
   → display
-  Try a lower channel depth than 16-bit.
-  For NVidia, try a 16-bit floating point color space.
-  For AMD (Krita 2.9.10 and above), turn off the vector optimizations
   that are broken on AMD CPUs. settings → configure Krita → performance
-  It's a fairly memory hungry program, so 2GB of ram is the minimum,
   and 4 gig is the preferable minimum.
-  Check that not something else is hogging your CPU
-  Check that Instant Preview is enabled if you're using bigger brushes
   (for very small brushes, disabled)
-  Set brush precision to 3 or auto
-  Use a larger value for brush spacing
-  If all of this fails, record a video and post a link and description
   on the Krita forum.
-  check whether opengl is enabled, and if it isn't, enable it, or if it
   is, and you'r on windows, try the Angle renderer. Or disable it.

Slowdown after a while of working
---------------------------------

Once you have the slowdown, click on the image-dimensions in the status
bar. It will tell you how much Krita is using, and if it's hit the
limit, whether it's started swapping. Swapping can slow down a program a
lot, so either work on smaller images or turn up the maximum amount of
ram in settings → configure Krita → performance

Tools
=====

Why does the Transform Tool give a good result and then get blurry upon finalizing?
-----------------------------------------------------------------------------------

The transform tool makes a preview that you edit before computing the
finalized version. As this preview is using the screen resolution rather
than the image resolution, it may feel that the result is blurry
compared to the preview. See
https://forum.kde.org/viewtopic.php?f=139&t=127269 for more info.

Why is the zoom tool suddenly zooming to my cursor instead of to canvas?
------------------------------------------------------------------------

In Krita 3.0.1 we changed the default zooming mode to zoom to the cursor
instead of to the canvas center as that was more intuitive for artists.
we call this relative zoom mode.

If you want to get the old behavior back, go to and change all 4(!)
entries with into plain .

License, rights and the Krita foundation
========================================

Who owns Krita?
---------------

The Stichting Krita Foundation owns the Krita trademark.

Is there professional support available for Krita?
--------------------------------------------------

Yes, the Krita Foundation and Boudewijn Rempt Software offer support for
Krita through the `development
fund <https://krita.org/support-us/donations/>`__, sponsoring
opportunities, consultancy and `dedicated development
contracts <https://krita.org/support-us/commercial/>`__.

Who and what is Kiki?
---------------------

Kiki is a squirrel. She’s our mascot and has been designed by Tyson Tan.
We choose a squirrel when we discovered that ‘krita’ is the Albanian
word for Squirrel.

Why is Krita Free?
------------------

Krita is developed as `free software <http://www.gnu.org/>`__ within the
KDE community. We believe that good tools should be available for all
artists. You can also buy Krita on the Windows Store if you want to
support Krita's development or want to have automatic updates to newer
versions.

Can I use Krita commercially?
-----------------------------

Yes. What you create with Krita is your sole property. You own your work
and can license your art however you want. Krita’s GPL license applies
to Krita’s source code. Krita can be used commercially by artists for
any purpose, by studios to make concept art, textures, or vfx, by game
artists to work on commercial games, by scientists for research, and by
students in educational institutions.

If you modify Krita itself, and distribute the result, you have to share
your modifications with us. Krita’s GNU GPL license guarantees you this
freedom. Nobody is ever permitted to take it away.

Can I get Krita for iPad? for Android?
--------------------------------------

Krita will probably not be available for iOS (iPad, iPhone, iPad Pro)
any time soon because Apple's Appstore's terms and conditions add
restrictions that are thought to be incompatible with free software
licensed under the GNU Public License. And then there are problems
actually building Krita and all its dependencies on iOS as well as
problems getting Krita into the app store.

As for Android, there are no licensing problems, and we would like to
see a version for Android, but Krita is an enormous application and we
haven't managed to build it for Android yet.

Who translates Krita and are there translations available?
----------------------------------------------------------

Krita is a `KDE application <http://www.kde.org/>`__ — and proud of it!
That means that Krita’s translations are done by `KDE localization
teams <http://i18n.kde.org/>`__. If you want to help out, join the team
for your language! There is another way you can help out making Krita
look good in any language, and that is join the development team and fix
issues within the code that make Krita harder to translate.

The translations are easy to install on any linux distribution. On
Windows they are bundled and you can set them via settings->change
application language. On OSX, we are working to make them work similarly
to windows, but there are a few bugs preventing the translations work
correctly at the time of writing.

What are Krita’s Development Goals?
-----------------------------------

Krita is primarily a painting program, although it has image processing
capabilities. This means that Krita is intended for creative people who
desire to paint and draw with computer software as they do with
real-world tools in an art studio.

If you are looking for a tool primarily to apply effects to existing
images or photos, to catalog images, or to view images other software
(such as Digikam) may be more suitable.If you want to work on collage,
photo editing or print production work, Gimp might be more suitable.
Ease of use and power as a painting application will always have a
higher priority in Krita’s ongoing development.

Would you like bug reports?
---------------------------

Definitely. Please take care to include backtraces if you’ve got a
crash, and if there’s an image that breaks Krita for you, try to attach
the image to the report. If it’s too big, contact me (that’s ‘boud’) on
irc: #krita, or directly via email. Adding new wishes to bugzilla isn’t
terribly useful, I’m afraid. We have a lot on our TODO already, and to
create a new feature, we need to engage in some deep interaction with
you, so drop by on the forum, mailing or irc instead. You can report
bugs at the KDE bug tracker. We try to reply to bug reports within a
week.

If you find signing up to KDE’s bugzilla too much of a bother, or aren’t
sure you found a real bug, don’t hesitate, and drop by on the
`forum <https://forum.kde.org/viewforum.php?f=136>`__ or on
`IRC <https://krita.org/irc/>`__.

Starting with Krita 3.1, we will have the `Dr. Mingw
debugger <Dr._Mingw_debugger>`__ built into Krita. Check out the
instructions for debbugging with it.

Can I join the fun?
-------------------

Yes.The best thing you can do is use and enjoy Krita! Learn to use Krita
and teach others. Create tutorials and sample files, create artwork to
show off what Krita can do and spread the good word. And if you want to
be more directly involved, well, I didn’t know any C++ when I started
hacking on Krita and I managed. You can do it, too! Check the `Join
Krita page <https://krita.org/get-involved/overview/>`__ for more
information.

And if you don’t feel like hacking C++ — well, there’s the manual that
needs someone attending to it, a set of tutorials would be nice, we are
everlastingly needing more artwork for interface elements, and finally,
we really appreciate reports from people using it, telling me about
their work flow and what hampers or helps them.

Reference
=========

https://answers.launchpad.net/krita-ru/+faqs
