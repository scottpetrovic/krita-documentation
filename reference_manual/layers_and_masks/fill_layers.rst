.. meta::
   :description lang=en:
        How to use fill layers in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. _fill_layers:

===========
Fill Layers
===========

A Fill Layer is a special layer that Krita generates on-the-fly that can contain either a pattern or a solid color.

.. image:: /images/en/Fill_Layer.png

Pattern
    This fills the layer with a predefined pattern or texture that has been loaded into Krita through the Resource Management interface.  Patterns can be a simple and interesting way to add texture to your drawing or painting, helping to recreate the look of watercolor paper, linen, canvas, hardboard, stone or an infinite other number of options.  For example if you want to take a digital painting and finish it off with the appearance of it being on canvas you can add a Fill Layer with the Canvas texture from the texture pack below and set the opacity very low so the "threads" of the pattern are just barley visible.  The effect is quite convincing. 

    You can create your own and use those as well.  For a great set of well designed and useful patterns check out one of our favorite artists and a great friend of Krita, David Revoy's free texture pack (http://www.davidrevoy.com/article156/texture-pack-1).

Color
    The second option is not quite as exciting, but does the job. Fill the layer with a selected color.

Painting on a fill layer
------------------------

A fill-layer is a single-channel layer, meaning it only has transparency. Therefore, you can erase and paint on fill-layers to make them semi-opaque, or for when you want to have a particular colour only. Being single channel, fill-layers are also a little bit less memory-consuming than regular 4-channel paint layers.
