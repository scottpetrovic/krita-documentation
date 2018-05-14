.. meta::
   :description lang=en:
        The file formats category.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. _general_concept_file_formats:

============
File Formats
============

This category is for graphics file-formats. While most file-formats can be looked up on wikipedia, this doesn't always explain what the format can be used for and what it's strengths and weaknesses are.

In this category we try to describe these in a manner that can be read by beginners.

Generally, there's the following features that people pay attention to in regards to fileformats:

Compression
-----------

Compression is how the file-format tries to describe the image with as little data as possible, so that the resulting file is as small as it can get without losing quality.

What we generally see is that formats that are small on disk either lose image quality, or require the computer to spent a lot of time thinking about how the image should look.

Vector file-formats like ``svg`` are a typical example of the latter. They are really small because the technology used to create them is based on mathematics, so it only stores maths-variables and can achieve a very high quality. The downside is that the computer needs to spend a lot of time thinking on how it should look, and sometimes different programs have different ways of interpreting the values. Furthermore, vector file-formats imply vector graphics, which is a very different way of working than Krita is specialised in.

Lossy file formats, like ``jpg`` or ``webp`` are an example of small on disk, but lowering the quality, and are best used for very particular types of images. Lossy thus means that the file format plays fast and loose with describing your image to reduce filesize.

Non-lossy or lossless formats, like ``png``, ``gif`` or ``bmp`` are in contrast, much heavier on disk, but much more likely to retain quality.

Then, there's proper working file formats like Krita's ``.kra``, Gimp's ``xcf``, Photoshop's ``psd``, but also interchange formats like ora and exr. These are the heaviest on the hard-drive and often require special programs to open them up, but on the other hand these are meant to keep your working enviroment in tact, and keep all the layers and guides in them.

Metadata
--------

Metadata is the ability of a fileformat to contain information outside of the actual image contents. This can be human readable data, like the date of creation, the name of the author, a description of the image, but also computer readable data, like an icc-profile which tells the computer about the qualities of how the colors inside the file should be read.

Openness
--------

This is a bit of an odd quality, but it's about how easy it to open or recover the file, and how widely it's supported.

Most internal fileformats, like PSD are completely closed, and it's really difficult for human outsiders to recover the data inside without opening photoshop. Other examples are camera raw files which have different properties per camera manufacturer.

SVG, as a vector fileformat, is on the other end of the spectrum, and can be opened with any text-editor and edited.

Most formats are in-between, and thus there's also a matter of how widely supported the format is. jpg and png cannot be read or edited by human eyes, but the vast majority of programs can open them, meaning the owner has easy access to them.

.. toctree::
   :maxdepth: 1
   :caption: File Formats Krita can Open and Save to:
   :glob:
   
   file_formats/*
