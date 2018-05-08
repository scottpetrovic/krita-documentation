.. meta::
   :description lang=en:
        Krita's outline selection tool reference.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Radianart
             - Raghavendra Kamath
   :license: GNU free documentation license 1.3 or later.
   
.. _outline_selection_tool:

======================
Outline Selection Tool
======================

|toolselectoutline|

Make :ref:`selections_basics` by drawing freehand around the canvas. Click and drag to draw a border around the section you wish to select.

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
