.. _file_layers:

===========
File Layers
===========

File Layers are references to files outside of the document: If the referenced document updates, the file layer will update. Do not remove the original file on your computer once you add it to Krita. Deleting your original image will break the file layer. If Krita cannot find the original file, it'll ask you where to find it. File layers cannot display animations.

File Layers have the following scaling options:

No Scaling
    This'll import the file layer with the full pixel-size.
Scale to Image Size
    Scales the file layer to fit exactly within the canvas boundaries of the image.
Adapt to image resolution
    If the imported layer and the image have a different resolution, it'll scale the filelayer by scaling it's resolution. In other words, import a 600dpi A4 image onto a 300dpi A4 image, and the filelayer will be scaled to fit precisely on the 300dpi image. Useful for comics, where the ink-layer is prefered to be at a higher resolution than the colors.

File Layers can currently not be painted on. If you want to transform a file layer, you need to apply a transformation mask to it and use that.

.. versionadded:: 3.3
    
    In the layerdocker, next to the file layer only, there's a little folder icon. Pressing that will open the file pointed at in Krita if it hadn't yet. Using the properties you can make the file layer point to a different file.

.. versionadded:: 4.0

    You can turn any set of layers into a file layer by rightclicking them and doing :menuselection:`convert --> convert to file layer`. It will then open a save prompt for the file location and when done will save the file and replace the layer with a file layer pointing at that file.
