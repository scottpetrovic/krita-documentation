.. _path_selection_tool:

===================
Path Selection Tool
===================

|toolselectpath|

This tool, represented by a ellipse with a dashed border and a curve control, allows you to make a :ref:`selections_basics` of an area by drawing a path around it. Click where you want each point of the path to be. Click and drag to curve the line between points. Finally click on the first point you created to close your path.

Hotkeys and Sticky keys
-----------------------

* :kbd:`R` sets the selection to 'replace' in the tool options, this is the default mode.
* :kbd:`A` sets the selection to 'add' in the tool options.
* :kbd:`S` sets the selection to 'subtract' in the tool options.
* :kbd:`Shift` + |mouseleft| sets the subsequent selection to 'add'. You can release the :kbd:`Shift` key while dragging, but it will still be set to 'add'. Same for the others.
* :kbd:`Alt` + |mouseleft| sets the subsequent selection to  'subtract'.
* :kbd:`Ctrl` + |mouseleft| sets the subsequent selection to  'replace'.
* :kbd:`Shift + Alt +` |mouseleft| sets the subsequent selection to  'intersect'.

.. warning::

    Selection modifiers don't quite work yet with the path tool, as shift breaks the path

.. note::

    You can switch the behaviour of the Alt key to use Ctrl instead by toggling the switch in the :ref:`general_settings`

Tool Options
------------

Anti-aliasing
    This toggles whether or not to give selections feathered edges. Some people preffer hard-jagged adges for their selections.
