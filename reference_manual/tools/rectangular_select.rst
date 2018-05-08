.. meta::
   :description lang=en:
        Krita's rectangular selection tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.
   
.. _rectangle_selection_tool:

==========================
Rectangular Selection Tool
==========================

|toolselectrect|

This tool, represented by a rectangle with a dashed border, allows you to make :ref:`selections_basics` of a rectangular area. Simply click and drag around the section you wish to select.

Hotkeys and Stickykeys
----------------------

* :kbd:`J` selects this tool.
* :kbd:`R` sets the selection to 'replace' in the tool options, this is the default mode.
* :kbd:`A` sets the selection to 'add' in the tool options.
* :kbd:`S` sets the selection to 'subtract' in the tool options.
* :kbd:`Shift` after starting the selection, constraints it to a perfect square.
* :kbd:`Ctrl` after starting the selection, makes the selection resize from center.
* :kbd:`Alt` after starting the selection, allows you to move it.
* :kbd:`Shift` + |mouseleft| sets the subsequent selection to 'add'. You can release the :kbd:`Shift` key while dragging, but it will still be set to 'add'. Same for the others.
* :kbd:`Alt` + |mouseleft| sets the subsequent selection to  'subtract'.
* :kbd:`Ctrl` + |mouseleft| sets the subsequent selection to  'replace'.
* :kbd:`Shift + Alt +` |mouseleft| sets the subsequent selection to  'intersect'.

.. note::

    So to subtract a perfect square, you do :kbd:`Alt +` |mouseleft|, then release the :kbd:`Alt` key while dragging and press :kbd:`Shift` to constrain.


.. note::

    You can switch the behaviour of the Alt key to use Ctrl instead by toggling the switch in the :ref:`general_settings`

Tool Options
------------

Anti-aliasing
    This toggles whether or not to give selections feathered edges. Some people preffer hard-jagged adges for their selections.
Width
    Gives the current width. Use the lock to force the next selection made to this width.
Height
    Gives the current height. Use the lock to force the next selection made to this height.
Ratio
    Gives the current ratio. Use the lock to force the next selection made to this ratio.

