.. _color_filters:

=====
Color
=====

Similar to the Adjust filters, the color filter are image wide color operations.

Color to Alpha
--------------

This filter allows you to make one single color transparent(alpha). By default when you run this filter white is selected, you can choose a color that you want to make transparent from the color selector

.. image:: /images/en/Color-to-alpha.png

The Threshold indicates how much other colors will be considered mixture of the removed color and non-removed colors.
For example, with threshold set to 255, and the removed color set to white, a 50% grey will be considered a mixture of black+white, and thus transformed in a 50% transparent black.

.. image:: /images/en/Krita-color-to-alpha.png
   :align: center

This filter is really useful in separating line-art from the white background.

Color Transfer
--------------

This filter converts the colors of the image to colors from the reference image.
This is a quick way to change a color combination of an artwork to an already saved image or a reference image.

.. image:: /images/en/Color-transfer.png

Maximize Channel
----------------

This filter checks for all the channels of a each single color and set all but the highest value to 0.

Minimize Channel
----------------

This is reverse to Maximise channel, it checks all the channels of a each single color and sets all but the lowest to 0.
