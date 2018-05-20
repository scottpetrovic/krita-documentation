.. meta::
   :description lang=en:
        Tutorial for saving images for the web

.. metadata-placeholder
   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. _saving_for_the_web:

==================
Saving For The Web
==================

Krita's default saving format is the :ref:`file_kra` format. This format saves everything Krita can manipulate about an image: Layers, Filters, Assistants, Masks, Color spaces, etc. However, that's a lot of data, so \*.kra files are pretty big. This doesn't make them very good for uploading to the internet. Imagine how many people's data-plans hit the limit if they only could look at \*.kra files! So instead, we optimise our images for the web.

There's a few steps involved:

1. Save as a .kra. This is your working file and serves as a backup if you make any mistakes.

2. Flatten all layers. This turns all your layers into a single one. Just go to :menuselection:`Layer --> Flatten Image` or press :kbd:`Ctrl` + :kbd:`Shift` + :kbd:`E`. Flattening can take a while, so if you have a big image, don't be scared if Krita freezes for a few seconds. It'll become responsive soon enough.

3. Convert the color space to 8bit sRGB(if it isn't yet). This is important to lower the filesize, and PNG for example can't take higher than 16bit. :menuselection:`Image --> Convert Image Color Space` and set the options to **RGB**, **8bit** and **sRGB-elle-v2-srgbtrc.icc** respectively. If you are coming from a linear space, uncheck **little CMS** optimisations

4. Resize! Go to :menuselection:`image --> scale image to new size` or use :kbd:`Ctrl` + :kbd:`Alt` + :kbd:`I`. This calls up the resize menu. A good rule of thumb for resizing is that you try to get both sizes to be less than 1200 pixels. (This being the size of HD formats). You can easily get there by setting the **Resolution** under **Print Pize** to **72** dots per inch. Then press **OK** to have everything resized.

5. Save as a web-safe image format. There's three that are especially recommended:

JPG
"""

Use this for images with a lot of different colors, like paintings.

PNG
"""

Use this for images with few colours or which are black and white, like comics and pixel-art. Select 'save indexed if possible' to optimise even more.

GIF
"""

Only use this for animation(will be supported this year) or images with a super low color count, because they will get indexed.

Saving with Transparency
------------------------

.. image:: /images/en/Save_with_transparency.png

Saving with transparency is only possible with gif and png. First, make sure you see the transparency checkers(this can be done by simply hiding the bottom layers, changing the projection color in :menuselection:`Image --> Image Background Color and Transparency`, or by using :menuselection:`Filters --> Color --> Color to Alpha`. Then, save as PNG and tick **Store Alpha Channel**

Save your image, upload, and show it off!
