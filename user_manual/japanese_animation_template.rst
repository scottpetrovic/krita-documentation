.. meta::
   :description lang=en:
        Detailed explaination on how to use the animation template.

.. metadata-placeholder

   :authors: - Saisho Kazuki
             - Tokiedian
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. _japanese_animation_template:

===========================
Japanese Animation Template
===========================


This template is used to make Japanese-style animation. It is designed
on the assumption that it was used in co-production, so please customize
its things like layer folders according to scale and details of your
works.

Basic structure of its layers
=============================

Layers are organized so that your work will start from lower layers go
to higher layers, except for coloring layers. 

.. image:: /images/en/Layer_Organization.png

Its layer contents
==================

from the bottom

-  **Layout Paper**: These layers are a form of layout paper. Anime tap
   holes are prepared on separate layers in case you have to print it
   out and drawing undigitally.
-  **Layout (Background)**: These layers will contain background
   scenaries or layouts which are scanned from undigital drawing. If you
   don't use them, you can remove them.
-  **Key's drafts**: These layers are used to draw layouts digitally.
-  **Keys**: Where you add some details to the layouts and arrange them
   to draw “keys” of animation.
-  **Inbetweening**: Where you add inbetweenings to keys for the process
   of coloring, and remove unnecessary details to finalize keys (To be
   accurate, I finish finalization of keys before beginning to add
   inbetweenings)
-  **Coloring**: (under Inbetweening): Where you fill areas with colors
   according to specification of inbetweenings.
-  **Time Sheet and Composition sheet**: It contains a time sheet and
   composition sheet. Please rotate them before using.
-  **Color set**: It contains colors used to draw main and auxiliary
   lineart and fill highlight or shadows. You can add them to palette.

Basic steps to make animation
=============================

Key's draft -> assign them into Time sheet (or adjust them on Timeline,
then assign them into Time sheet) -> adjust them on Timeline -> add
frames to draw drafts for inbetweening if you need them ->Start drawing
Keys

.. image:: /images/en/Keys_drafts.png

You can add layers and add them to timeline.

.. image:: /images/en/Add_Timeline_1.png

.. image:: /images/en/Add_Timeline_2.png

This is difference between
24 drawing per second, which is used in Full Animation, and 12 drawing
per second and 8 drawings per second, which are used in Limited
Animation, on Timeline docker 

.. image:: /images/en/24_12_and_8_drawing_per_sec.png

This is correspondence between Timeline and Time sheet. “Black” layer is
to draw main linearts which are used ordinary lineart, “Red” layer is to
draw red auxiliary linearts which are used to specify highlights, “Blue”
layer is to draw blue auxiliary linearts which are used to specify
shadows, and “Shadow” layer is to draw light green auxiliary linearts
which are used to specify darker shadows and other stuff. However,
probably you have to increase or decrease these layers according to your
work. 

.. image:: /images/en/Time_sheet_1.png

Finished keys, you will begin to draw
inbetweening. If you feel krita is slightly laggy, I recommend you to
marge key's drafts and keys and remove unnecessary layers

After finalizing keys and cleaning up unnecessary stuff, add
inbetweenings, using Time sheet and inbetweening drafts as reference.

This is its correspondence with Time sheet

.. image:: /images/en/Inbetweening.png

If vector function of krita become better, I recommend you to use vector
to finalize inbetweening.

If you do coloring in krita, please use Coloring group layer. If you do
coloring in other software, I recommend to export frames as .TGA files.

Resolution
----------

I make this template in 300 dpi because we have to print them to use
them in undigital works which still fill an important roles in Japanese
Anime Studio. However, if you stick to digital, 150-120 dpi is enough to
make animation. So you can decrease its resolution according to your
need.

Originally written by Saisho Kazuki, Japanese professional animator, and
translated by Tokiedian, KDE contributor.

