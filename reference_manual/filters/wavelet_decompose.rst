.. _wavelet_decompose:

=================
Wavelet Decompose
=================

Wavelet decompose uses wavelet scales to turn the current layer into a set of layers with each holding a different type of pattern that is visible within the image. This is used in texture and pattern making to remove unwanted noise quickly from a texture.

You can find it under :menuselection:`Layers`.

When you select it, it will ask for the amount of wavelet scales. More scales, more different layers. Press okay, and t will generate a group layer containing the layers with their proper blending modes:

.. image:: /images/en/Wavelet_decompose.png
   :align: center

Adjust a given layer with middle gray to neutralise it, and merge everything with the :guilabel:`Grain Merge` blending mode to merge it into the end image properly.
