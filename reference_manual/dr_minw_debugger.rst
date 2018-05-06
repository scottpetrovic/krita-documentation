.. _dr_minw:

=================
Dr. MinW Debugger
=================

.. note::

    The information on this page applies only to the Windows release of Krita 3.1 Beta 3 (3.0.92) and later.


Getting a Backtrace
-------------------

There are some additions to Krita which makes getting a backtrace much easier on Windows.

#.
        
    When there is a crash, Krita might appear to be unresponsive for a short time, ranging from a few seconds to a few minutes, before the crash dialog appears.
    
    .. figure:: /images/en/Mingw-crash-screen.png
    
        An example of the crash dialog
        
    * If Krita keeps on being unresponsive for more than a few minutes, it might actually be locked up, which may not give a backtrace. In that situation, you have to close Krita manually. Continue to follow the following instructions to check whether it was a crash or not.<div style="clear: both"></div>

#. Open Windows Explorer and type ``%LocalAppData%`` (without quotes) on the address bar and press Enter.

    .. image:: /images/en/Mingw-explorer-path.png
    
#. Find the file ``kritacrash.log`` (it might appear as simply ``kritacrash`` depending on your settings.) 
#. Open the file with Notepad and scroll to the bottom, then scroll up to the first occurance of “Error occured on <time>” or the dashes.

    .. figure:: /images/en/Mingw-crash-log-start.png
    
        Start of backtrace

    Check the time and make sure it matches the time of the crash. 
    
    .. figure:: /images/en/Mingw-crash-log-end.png
        
        End of backtrace
            
    The text starting from this line to the end of the file is the most recent backtrace.
    
    * If ``kritacrash.log`` does not exist, or a backtrace with a matching time does not exist, then you don’t have a backtrace. This means Krita was very likely locked up, and a crash didn’t actually happen. In this case, make a bug report too.
    * If the backtrace looks truncated, or there is nothing after the time, it means there was a crash and the crash handler was creating the stack trace before being closed manually. In this case, try to re-trigger the crash and wait longer until the crash dialog appears.

.. note::

    Starting from Krita 3.1 Beta 3 (3.0.92), the external DrMingw JIT debugger is not needed for getting the backtrace.}}

Using the Debug Package
-----------------------

Starting from 3.1 Beta 3, the debug package contains only the debug symbols separated from the executables, so you have to download the portable package separately too (though usually you already have it in the first place.)

* Links to the debug packages should be available on the release announcement news item on https://krita.org/, along with the release packages. You can find debug packages for any release either in https://download.kde.org/stable/krita for stable releases or in https://download.kde.org/unstable/krita for unstable releases. Portable zip and debug zip are found next to each other.
* Make sure you’ve downloaded the same version of debug package for the portable package you intend to debug / get a better (sort of) backtrace.
* Extract the files inside the Krita install directory, where the sub-directories `bin`, `lib` and `share` is located, like in the figures below:

    .. image:: /images/en/Mingw-dbg7zip.png
    
    .. image:: /images/en/Mingw-dbg7zip-dir.png

* After extracting the files, check the ``bin`` dir and make sure you see the ``.debug`` dir inside. If you don't see it, you probably extracted to the wrong place.
