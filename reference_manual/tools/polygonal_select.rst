.. _polygonal_selection_tool:

========================
Polygonal Selection Tool
========================

|toolselectpolygon|

This tool, represented by a polygon with a dashed border, allows you to make :ref:`selections_basics` of a polygonal area point by point. Click where you want each point of the Polygon to be. Double click to end your polygon and finalize your selection area.


Hotkeys and Sticky keys
-----------------------

* :kbd:`R` sets the selection to 'replace' in the tool options, this is the default mode.
* :kbd:`A` sets the selection to 'add' in the tool options.
* :kbd:`S` sets the selection to 'subtract' in the tool options.
* :kbd:`Shift` + |mouseleft| sets the subsequent selection to 'add'. You can release the :kbd:`Shift` key while dragging, but it will still be set to 'add'. Same for the others.
* :kbd:`Alt` + |mouseleft| sets the subsequent selection to  'subtract'.
* :kbd:`Ctrl` + |mouseleft| sets the subsequent selection to  'replace'.
* :kbd:`Shift + Alt +` |mouseleft| sets the subsequent selection to  'intersect'.

.. note::

    You can switch the behaviour of the Alt key to use Ctrl instead by toggling the switch in the :ref:`general_settings`

Tool Options
------------

Anti-aliasing
    This toggles whether or not to give selections feathered edges. Some people preffer hard-jagged adges for their selections.
