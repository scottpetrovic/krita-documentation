.. meta::
   :description lang=en:
        The Gif file format in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. _file_gif:

======
\*.gif
======

.gif is a fileformat mostly known for the fact that it can save animations. It's a fairly old format, and it does it's compression by :ref:`indexing <bit_depth>` the colors to a maximum of 256 colors per frame.

This means that it can handle most grayscale images just fine and without losing any visible quality. But for color images that don't animate it might be better to use :ref:`file_jpg` or :ref:`file_png`.
