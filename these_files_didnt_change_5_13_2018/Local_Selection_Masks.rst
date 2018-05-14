Local Selection Masks
=====================

Local Selection masks let you remember and recall edit a selection on a
layer. They work in a similar way to extra channels in other image
editing programs. One difference is **Krita's** ability to assign them
to specific layers and activate a selection with a single click on the
layer. Just click the round icon with the dotted outline on the local
selection layer in the Layers docker.

You can make them by making a selection, and the layer you want to add
it to select :menuselection:`Local Selection`

When isolating a selection mask with :kbd:`Alt` + , you can perform
transformation, deformation and paint operations on the selection layer,
modifying the selection.

A single layer can contain multiple Local Selection Masks. Repeating. A
single layer can contain multiple Local Selection Masks (LSM). This is
important because it means that you can, for instance, several different
outline parts of an image and save each as its own LSM and then recall
it with a single click. Without using LSM you would have to create layer
upon layer for each mask. Not only would this be inefficient for you but
also for Krita and the program would slow down trying to keep up with it
all. LSM's are one of the most important features in Krita!

The example below shows three LSM items all attached (under) Layer1. Any
of these can be activated and used at any time.

.. figure:: images/local_selection_masks/Local_Selection_Masks_Example.png
   :alt: images/local_selection_masks/Local_Selection_Masks_Example.png

Global Selection
----------------

You can modify the global selection the same way you can with a
local-selection. To do so, you first need to activate the global
selection as a layer node. To do so, go into
:menuselection:`Select --> Show global selection`. The global
selection, if you have anything selected, will now appear on the top of
the layer stack as a selection mask. You can see these elements in the
example above.

