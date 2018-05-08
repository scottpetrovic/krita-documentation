.. meta::
   :description lang=en:
        How to use the render animation command in Krita.

.. metadata-placeholder

   :authors: - Scott Petrovic
             - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Beelzy
   :license: GNU free documentation license 1.3 or later.


.. _render_animation:

================
Render Animation
================ 

Render animation allows you to render your animation to an image sequence, gif, mp4, mkv, or ogg file. It replaces :guilabel:`Export Animation` .

For rendering to an animated fileformat, Krita will first render to a png sequence and then use FFMpeg, which is really good at encoding into video files, to render that sequence to an animated fileformat. The reason for this two-step process is that animation files can be really complex and really big, and this is the best way to allow you to keep control over the export process. For example, if your computer has a hiccup, and one frame saves out weird, first saving the image sequence allows you to only resave that one weird frame before rendering.

This means that you will need to find a good place to stick your frames before you can start rendering. If you only do throwaway animations, you can use a spot on your hard-drive with enough room and select :guilabel:`Delete Sequence After Rendering` 

Image Sequence
--------------

Base Name
    The base name of your image sequence. This will get suffixed with a number depending on the frame.
File Format
    The fileformat to export the sequence to. When rendering we enforce png. The usual export options can be modified with :guilabel:`...`.
Render Location
    Where you render the image sequence to. Some people prefer to use a flash-drive or perhaps a harddrive that is fast.
First Frame
    The first frame of the range of frame you wish to adjust. Automatically set to the first frame of your current selection in the timeline. This is useful when you only want to re-render a little part.
Last Frame
    As above, the last frame of the range of frame you wish to adjust. Automatically set to the last frame of your current selection in the timeline.
Naming Sequence starts with
    The frames are named by using :guilabel:`Base Name`  above and adding a number for the frame. This allows you to set where the frame number starts, so rendering from 8 to 10 with starting point 3 will give you images named 11 and 15. Useful for programs that don't understand sequences starting with 0, or for precision output.

Render Animation
----------------

Render As
    The file format to render to. All except gif have extra options that can be manipulated via {{MenuChoice|...}}.
File
    Location and name of the rendered animation.
FFMpeg
    The location where your have ffmpeg. If you don't have this, Krita cannot render an animation. For proper gif support, you will need ffmpeg 2.6, as we use it's palettegen functionality.
Delete Sequence After Rendering
    Delete the prerendered image sequence after done rendering. This allows you to choose whether to try and save some space, or to save the sequence for when encoding fails.

.. warning::

    None of the video formats support saving from images with a transparent background, so Krita will try to fill it with something. You should add a background color yourself to avoid it from using, say, black.

Setting Up Krita for Exporting Animations
-----------------------------------------

You will need to download an extra application and link it in Krita for it to work. The application is pretty big (50MB), so the Krita developers didn't want to bundle it with the normal application. The software that we will use is free and called FFMpeg. The following instructions will explain how to get it and set it up. The setup is a one-time thing so you won't have to do it again.

Step 1 - Downloading FFMpeg
~~~~~~~~~~~~~~~~~~~~~~~~~~~

For Windows
^^^^^^^^^^^

Go to the ffmpeg website (http://ffmpeg.org/download.html). The URL that had the link for me was here... https://ffmpeg.zeranoe.com/builds/

Watch out for the extremely annoying google ad that looks like a download button! There is no big button for what we need. Either get the 64-bit STATIC version or 32-bit STATIC version that is shown later down the page. If you bought a computer in the past 5 years, you probably want the 64-bit version. Make sure you get a exe file, if you hover over the options they will give more information about what exactly you are downloading.

For OSX
^^^^^^^

Please see the section above. However, FFmpeg is obtained from https://evermeet.cx/ffmpeg/ instead. Just pick the big green button on the left under the FFmpeg heading. You will also need an archiving utility that supports .7z, since ffmpeg provides their OSX builds in .7z format. If you don't have one, try something like Keka (http://www.kekaosx.com).

For Linux
^^^^^^^^^

FFMPeg can be installed from the repositories on most Linux systems. Version 2.6 is required for proper gif support, as we use the palettegen functionality.

Step 2 - Unzipping and Linking to Krita
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For Windows
^^^^^^^^^^^

Unzip the package that was just downloaded. Rename the long folder name to just ffmpeg. Let's put this folder in a easy to find location. go to your C:\ and place it there. You can put it wherever you want, but that is where I put it. 

Open Krita back up and go to :menuselection:`File --> Render Animation`. Click the :guilabel:`Browse`  button on the last item called FFMpeg. Select this file ``C:/ffmpeg/bin/ffmpeg.exe``  and click :guilabel:`OK` .

For OSX
^^^^^^^

After downloading ffmpeg, you just need to extract it and then simply point to it in the FFMPEG location in Krita like ``/Users/user/Downloads/ffmpeg`` (assuming you downloaded and extracted the .7z file to /Users/user/Downloads).

For Linux
^^^^^^^^^

FFMpeg is, if installed from the repositories, usually found in ``/usr/bin/ffmpeg``

Step 3 - Testing out an animation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ffmpeg.exe is what Krita uses to do all of its animation export magic. Now that it is hooked up, let us test it out.

Let's make an animated GIF. in the Render Animation dialog, change the :guilabel:`Render As`  field to "GIF image". Choose the file location where it will save with the "File" menu below. I just saved it to my desktop and called it "export.gif". When it is done, you should be able to open it up and see the animation. 

.. warning::

    By default, FFMPEG will render MP4 files with a too new codec, which means that windows media player won't be able to play it. So for windows, select "baseline" for the profile instead of "high422" before rendering.

.. note::
    
    OSX does not come with any software to play MP4 and MKV files. If you you use Chrome for your web browser, you can drag the video file into that and the video should play. Otherwise you will need to get a program like VLC to see the video.
