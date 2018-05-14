Layer Menu
==========

These are the topmenu options are related to :doc:`Layer Management <Introduction_to_Layers_and_Masks>`,
check out that page first, if you haven't.

Cut Layer(3.0+)
    Cuts the whole layer rather than just the pixels.
Copy Layer(3.0+)
    Copy the whole layer rather than just the pixels.
Paste Layer(3.0+)
    Pastes the whole layer if any of the top two actions have been
    taken.
New
    Paint Layer
        Add a new paint layer
    New layer from visible(3.0.2+)
        Add a new layer with the visible pixels.
    Duplicate Layer or Mask
        Duplicates the layer.
    Cut Selection to New Layer
        Single action for cut+paste
    Copy Selection to New Layer
        Single action for copy+paste

Import/Export
    Save Layer or Mask
        Saves the Layer or Mask as a separate image.
    Save Group Layers
        Saves the top-level group layers as single-layer images.
    Import Layer
    Import as...
        Import an image as

        Paint layer
        Transparency Mask
        Filter Mask
        Selection Mask

Convert
    Convert a layer to...

    Convert to Paint Layer
        Convert a mask or vector layer to a paint layer.
    Transparency Mask
    Filter Mask
    Selection Mask
    Convert Group to Animated Layer
        This takes the images in the group layer and makes them into
        frames of an animated layer.
    Convert Layer Color Space
        This only converts the color space of the layer, not the image.

Select(3.0+):

:;All layers

::Select all layers.

:;Visible Layers

::Select all visible layers.

:;Invisible Layers

::Select all invisible layers, useful for cleaning up a sketch.

:;Locked Layers

::Select all locked layers.

:;Unlocked Layers

        Select all unlocked layers.

Group
    Quick Group(3.0+)
        Adds all selected layers to a group.
    Quick Clipping Group(3.0+)
        Adds all selected layers to a group and adds a alpha-inherited
        layer above it.
    Quick Ungroup
        Ungroups the activated layer.

Transform
    Mirror Layer Horizontally
    Mirror Layer Vertically
    Rotate
    Scale Layer
    Shear Layer
    Offset Layer

Split...
    `Split Alpha <Split_Alpha>`__
    `Split Layer <Split_Layer>`__
    `Clones Array <Clones_Array>`__

    A complex bit of functionality to generate clone-layers for quick
    sprite making.
Edit `Metadata <Metadata>`__
    Each layer can have it's own meta-data.
`Histogram <Special:MyLanguage/Histogram_docker>`__
    Shows a histogram.
Merge With Layer Below
    Merge a layer down.
Flatten Layer
    Flatten a Group Layer or flatten the masks into any other layer.
Rasterize Layer
    For making vectors into raster layers.
Flatten Image
    Flatten all layers into one.
Merge Selected Layers
    Merge the layers that were selected with multi-selection in the
    Layer Docker.
`Layerstyle <Special:MyLanguage/Layer_Styles>`__\ (2.9.5+)
    Set the PS-style layerstyle

