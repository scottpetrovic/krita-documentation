.. _performance_settings:

====================
Performance Settings
====================

:program:`Krita`, as a painting program, juggles a lot of data around, like the brushes you use, the colours you picked, but primarily, each pixel in your image. Due to this, how :program:`Krita` organises where it stores all the data can really speed up :program:`Krita` while painting, just like having an organised artist's workplace can really speed up the painting process in real life.

These preferences allow you to configure :program:`Krita's` organisation, but all do require you to restart :program:`Krita`, so it can do this organisation properly.

RAM
---

RAM, or Random Access Memory, is the memory your computer is immediately using. The difference between RAM and the hard drive memory can be compared to the difference between having files on your desk and having files safely stored away in an archiving room: The files on your desk as much easier to access than the ones in your archive, and it takes time to pull new files from the archive. This is the same for you computer and RAM. Files need to be loaded into RAM before the computer can really use them, and storing and removing them from RAM takes time.

These settings allow you to choose how much of your virtual desk you dedicate to :program:`Krita`. :program:`Krita` will then reserve them on start-up. This does mean that if you change any of the given options, you need to restart :program:`Krita` so it can make this reservation.

Memory Limit
    This is the maximum space :program:`Krita` will reserve on your RAM on startup. It's both available in percentages and Bytes, so you can specify precisely. :program:`Krita` will not take up more space than this, making it safe for you to run an internet browser or music on the background.
Internal Pool
    A feature for advanced computer users. This allows :program:`Krita` to organise the area it takes up on the virtual working desk before putting it's data on there. Like how a painter has a standard spot for their canvas, :program:`Krita` also benefits from giving certain data it uses it's place(a memory pool), so that it can find them easily, and it doesn't get lost amongst the other data(memory fragmentation). It will then also not have to spent time finding a spot for this data.
    Increasing this of course means there's more space for this type of data, but like how filling up your working desk with only one big canvas will make it difficult to find room for your paints and brushes, having a large internal pool will result in :program:`Krita` not knowing where to put the other non-specific data.
    On the opposite end, not giving your canvas a spot at all, will result in you spending more time looking for a place where you will put the new layer or that reference you just took out of the storage. This happens for :program:`Krita` as well, making it slower.
    This is recommended to be a size of one layer of your image, e.g. if you usually paint on the image of 3000x3000x8bit-ARGB, the pool should be something like 36 MiB.
    As :program:`Krita` does this on start-up, you will need to restart :program:`Krita` to have this change affect anything.
Swap Undo After
    :program:`Krita` also needs to keep all the Undo states on the virtual desk(RAM). Swapping means that parts of the files on the virtual desk get sent to the virtual archive room. This allows :program:`Krita` to dedicate more RAM space to new actions, by sending old Undo states to the archive room once it hits this limit. This will make undoing a little slower, but this can be desirable for the performance of :program:`Krita` overall.
    This too needs :program:`Krita` to be restarted.

Swapping
--------

File Size Limit
    This determines the limit of the total space :program:`Krita` can take up in the virtual archive room. If :program:`Krita` hits the limit of both the memory limit above, and this Swap File limit, it can't do anything any more(and will freeze).
Swap File Location
    This determines where the Swap File will be stored on you hard-drive. Location can make a difference, for example, Solid State Drives(SSD) are faster than Hard Disk Drives(HDD). Some people even like to use USB-sticks for the swap file location.

Advanced
--------

Multitreading
~~~~~~~~~~~~~

Since 4.0, Krita supports multithreading for the animation cache and handling the drawing of brush tips when using the pixel brush.

CPU Limit
The amount of cores you want to allow Krita to use when multithreading.
Frame Rendering Clones Limit
When rendering animations to frames, Krita multithreads by keeping a few copies of the image, with a maximum determined by the amount of cores your processor has. If you have a heavy animation file and lots of cores, the copies can be quite heavy on your machine, so in that case try lowering this value.

Other
~~~~~

Debuglogging of OpenGL framerate
    Will show the canvas framerate on the canvas when active.
Debug logging for brush rendering speed.
    Will show numbers indicating how fast the last brush stroke was on canvas.
Disable vector optimisations(For AMD CPUs)
    Vector optimisations are a special way of asking the CPU to do maths, these have names such as SIMD and AVX. These optimisations can make Krita a lt faster when painting, except when you have a AMD CPU under windows. There seems to be something strange going on there, so just deactive them then.
Enable Progress Reporting
    This allows you to toggle the progress reporter, which is a little feedback progress bar that shows up in the status bar when you let Krita do heavy operations, such as heavy filters or big strokes. The red icon next to the bar will allow you to cancel your operation. This is on by default, but as progress reporting itself can take up some time, you can switch it off here.
Performance logging
    This enables performance logging, which is then saved to the ``Log`` folder in your ``working directory``. Your working directory is where the auto save is saved at as well.

    So for unnamed files, this is the $home folder in Linux, and the %TEMP% folder in windows.
