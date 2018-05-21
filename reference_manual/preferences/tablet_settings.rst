.. meta::
   :description:
        Configuring the tablet in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Alvin Wong
   :license: GNU free documentation license 1.3 or later.

.. index:: Preferences, Settings, Tablet, Pressure Curve
.. _tablet_settings:

===============
Tablet Settings
===============

.. image:: /images/en/Krita_Preferences_Tablet_Settings.png

Tablet 
    Input Pressure Global Curve : This is the global curve setting that your tablet will use in Krita. The settings here will make your tablet feel soft or hard globally.
For Krita 3.3 or later:Tablet Input API
    on Windows 8 or above only

    WinTab
        Use the WinTab API to receive tablet pen input. This is the API being used before Krita 3.3. This option is recommended for most Wacom tablets.
    Windows 8+ Pointer Input
        Use the Pointer Input messages to receive tablet pen input. This option depends on Windows Ink support from the tablet driver. This is a relatively new addition so it's still considered to be experimental, but it should work well enough for painting. You should try this if you are using an N-Trig device (e.g. recent Microsoft Surface devices) or if your tablet does not work well with WinTab.


If your tablet doesn't work with Krita, check out the :ref:`page on drawing tablets <drawing_tablets>`.

External Links
--------------

`David Revoy wrote an indepth guide on using this feature to maximum advantage. <http://www.davidrevoy.com/article182/calibrating-wacom-stylus-pressure-on-krita>`_
