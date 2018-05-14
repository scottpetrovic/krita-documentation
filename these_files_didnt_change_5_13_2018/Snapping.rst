Snapping
========

In Krita 3.0, we now have functionality for Grids and Guides, but of
course, this functionality is by itself not that interesting without
snapping.

Snapping is the ability to have Krita automatically align a selection or
shape to the grids and guides, document center and document edges. For
Vector layers, this goes even a step further, and we can let you snap to
bounding boxes, intersections, extrapolated lines and more.

All of these can be toggled using the snap pop-up menu which is assigned
to :kbd:`Shift + S`.

Now, let us go over what each option means:

Grids
    This will snap the cursor to the current grid, as configured in the
    grid docker. This doesn’t need the grid to be visible. Grids are
    saved per document, making this useful for aligning your art work to
    grids, as is the case for game sprites and grid-based designs.
Guides
    This allows you to snap to guides, which can be dragged out from the
    ruler. Guides do not need to be visible for this, and are saved per
    document. This is useful for comic panels and similar print-layouts,
    though we recommend Scribus for more intensive work.

.. figure:: images/snapping/Snap-orthogonal.png
   :alt: images/snapping/Snap-orthogonal.png
   :align: center

Orthogonal (Vector Only)
    This allows you to snap to a horizontal or vertical line from
    existing vector objects’s nodes(Unless dealing with resizing the
    height or width only, in which case you can drag the cursor over the
    path). This is useful for aligning object horizontically or
    vertically, like with comic panels.

.. figure:: images/snapping/Snap-node.png
   :alt: images/snapping/Snap-node.png
   :align: center

Node (Vector Only)
    This snaps a vector node or object to the nodes of another path.

.. figure:: images/snapping/Snap-extension.png
   :alt: images/snapping/Snap-extension.png
   :align: center

Extension (Vector Only)
    When we draw an open path, the last nodes on either side can be
    mathematically extended. This option allows you to snap to that. The
    direction of the node depends on it's side handles in path editing
    mode.

.. figure:: images/snapping/Snap-intersection.png
   :alt: images/snapping/Snap-intersection.png
   :align: center

Intersection (Vector Only)
    This allows you to snap to an intersection of two vectors.
Bounding box (Vector Only)
    This allows you to snap to the bounding box of a vector shape.
Image bounds
    Allows you to snap to the vertical and horizontal borders of an
    image.
Image center
    Allows you to snap to the horizontal and vertical center of an
    image.

The snap works for the following tools:

#. Straight line
#. Rectangle
#. Ellipse
#. Polyline
#. Path
#. Freehand path
#. Polygon
#. Gradient
#. Shape Handling tool
#. The Text-tool
#. Assistant editing tools
#. The move tool (note that it snaps to the cursor position and not the
   bounding box of the layer, selection or whatever you are trying to
   move)
#. The Transform tool
#. Rectangle select
#. Elliptical select
#. Polygonal select
#. Path select
#. Guides themselves can be snapped to grids and vectors.

Snapping doesn’t have a sensitivity yet, and by default is set to 10
screen pixels.

