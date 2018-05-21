.. meta::
   :description:
        Overview of the layers docker.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Raghavendra Kamath <raghavendr.raghu@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. index:: ! Layers, Passthrough Mode, Alpha Inheritance, Blending Mode, Label, Onion Skin, Layer Style, Alpha Lock
.. _layer_docker:

======
Layers
======

.. image:: /images/en/Krita_Layers_Docker.png

The Layers docker is for one of the core concepts of Krita: :ref:`Layer Management <layers_and_masks>`. You can add, delete, rename, duplicate and do many other things to layers here.

The Layer Stack
---------------

You can select the active layer here. Using :kbd:`shift` and :kbd:`ctrl` you can select multiple layers and drag-and-drop them. You can also change the visibility, edit state, alpha inheritance and rename layers. You can open and close groups, and you can drag and drop layers, either to reorder them, or to put them in groups.

Name
    The Layer name, just do double- |mouseleft| to make it editable, and press :kbd:`Enter` to finish editing.
Label
    This is a color that you can set on the layer. |mouseright| the layer to get a context menu to assign a color to it. You can then later filter on these colors.
Blending Mode
    This will set the :ref:`blending_modes` of the layer.
Opacity
    This will set the opacity of the whole layer.
Visibility
    An eye-icon. Clicking this can hide a whole layer.
Edit State (Or layer Locking)
    A lock Icon. Clicking this will prevent the layer from being edited, useful when handling large amounts of layers.
Alpha Lock
    This will prevent the alpha of the layer being edited. In more plain terms: This will prevent the transparency of a layer being changed. Useful in colouring images.
Pass-through mode
    Only available on Group Layers, this allows you to have the blending modes of the layers within affect the layers outside the group. Doesn't work with masks currently, therefore these have a strike-through on group layers set to pass-through.
Alpha Inheritance
    This will use the alpha of all the peers of this layer as a transparency mask. For a full explanation see :ref:`layers_and_masks`.
Open or Close Layers
    (An Arrow Icon) This will allow you to access sub-layers of a layer. Seen with masks and groups.
Onion Skin
    This is only available on :ref:`animated layers <animation>`, and toggles the onion skin feature.
Layer Style
    This is only available on layers which have a :ref:`layer_style` assigned. The button allows you to switch between on/off quickly.

To edit these properties on multiple layers at once, press the properties option when you have multiple layers selected or press :kbd:`F3`
There, to change the names of all layers, the checkbox before :guilabel:`name` should be ticked after which you can type in a name. Krita will automatically add a number behind the layer-names. You can change other layer properties like visibility, opacity, lock states etc too.

.. image:: /images/en/Krita-multi-layer-edit.png

Lower buttons
-------------

These are buttons for doing layer operations.

Add
    Will by default add a new Paint Layer, but using the little arrow, you can call a sub-menu with the other layer types.
Duplicate
    Will Duplicate the active layer(s). Can be quickly invoked with :kbd:`Ctrl` + |mouseleft| + drag.
Move layer up.
    Will move the active layer up. Will switch them out and in groups when coming across them.
Move layer down.
    Will move the active layer down. Will switch them out and in groups when coming across them.
Layer properties.
    Will open the layer properties window.
Delete
    Will delete the active layer(s). For safety reasons, you can only delete visible layers.

Hot keys and Sticky Keys
------------------------

* :kbd:`Shift + Ctrl` for selecting multiple layers.
* :kbd:`Ctrl` + |mouseleft| + drag - makes a duplicate of the selected layers, for you to drag and drop.
* :kbd:`Ctrl + E` for merging a layer down. This also merges selected layers, layer styles and will keep selection masks in tact. Using :kbd:`ctrl + E` on a single layer with a mask will merge down the mask into the layer.
* :kbd:`Ctrl + Shift + E` merges all layers.
* :kbd:`R` + |mouseleft| allows you to select layers on canvas, similar to picking colours directly on canvas. Use :kbd:`Shift + R` + |mouseleft| for multiple layers.
* :kbd:`ins` for adding a new layer. 
* :kbd:`Ctrl + G` will create a group layer. If multiple layers are selected, they are put into the group layer.
* :kbd:`Ctrl + Shift + G` will quickly set-up a clipping group, with the selected layers added into the group, and a new layer added on top with alpha-inheritance turned on, ready for painting!
* :kbd:`ctrl + Alt + G` will ungroup layers inside a group.
* :kbd:`Alt` + |mouseleft| on the thumbnail for isolated view of a layer. This will maintain between layers till the same action is repeated again.
* :kbd:`Shift` + |mouseleft| on the eye-icon for hidding all but the current layer.
* :kbd:`Page Up` and :kbd:`Page Down` for switching between layers.
* :kbd:`Ctrl + Page Up` and :kbd:`Ctrl + Page Down` will move the selected layers up and down.

