.. meta::
   :description:
        reStructuredText conventions for the Krita Manual

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>

   :license: GNU free documentation license 1.3 or later.

.. _krita_markup_conventions:

=========================================
Mark-up conventions for the Krita Manual.
=========================================

This details the style conventions for using restructured text for the Krita Manual.

It's recommended to look over the `official specification <http://docutils.sourceforge.net/rst.html>`_ for reStructuredText, and given it lives on sourceforge, to save a copy to your harddrive (sourceforge has, at this time of writing, some issues with server uptime):

User Manual:
    * `Primer <http://docutils.sourceforge.net/docs/user/rst/quickstart.html>`_
    * `Quick Ref <http://docutils.sourceforge.net/docs/user/rst/quickref.html>`_
    * `Text Cheatsheet <http://docutils.sourceforge.net/docs/user/rst/cheatsheet.txt>`_
Reference Documentation:
    * `Introduction <http://docutils.sourceforge.net/docs/ref/rst/introduction.html>`_
    * `Markup <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html>`_
    * `Directives <http://docutils.sourceforge.net/docs/ref/rst/directives.html>`_
    * `Roles <http://docutils.sourceforge.net/docs/ref/rst/roles.html>`_
Sphinx specific docs:
    * `Sphinx' page on restrucutred text <http://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html>`_ -- This is useful for the specific sphinx directives and roles it uses to generate for example table of contents.

There's between the official reStructuredText and the sphinx docs multiple ways to do things. This document specifies the suggested conventions to go with.

.. contents::

Meta data
---------

Each page should start with the following three things:

1. A meta description
    This is a general description of the page. It will be converted to a html meta tag which will be used by search engines::

        .. meta::
            :description lang=en:
                Description.


2. A list of authors and a license.
    This is just to keep track of who edited the page and to give credit. It should be in a comment so that it will not end up being easily readable by machines. The license of the whole manual is GDL 1.3 and should also be mentioned here::

        .. metadata-placeholder

           :authors: - Author 1
                     - Author 2
           :license: GNU free documentation license 1.3 or later.

3. A label.
    This is so we can easily link to the page using ``:ref:`label_name```. Try to make this a nice variable name::

        .. _label_name:

    After the label you will need to add a heading, as ``:ref:`label_name``` will refer to the heading to fill out it's link-text.


Headings
--------

Headings will be done in the following order::

    ############
    Part/Section
    ############

    For pages that have a lot of subpages.

    =========
    Heading 1
    =========

    Start most manual pages with this.

    Heading 2
    ---------

    Heading 3
    ~~~~~~~~~

    Heading 4
    ^^^^^^^^^

    Heading 5
    '''''''''

    Heading 6
    """""""""

These conventions were more or less decided by pandoc's mediawiki to reStructuredText conversion. If you need more than 4 headings, ask yourself first if the page hasn't gotten too complicated and needs splitting up.

Sometimes you need to link to a subsection of a page, add a label above the heading in that case.

Linking
-------

Linking is done with ``:ref:`label_name```. When you need an alternative link text, you use ``:ref:`actual text shown <label_name>```.

Linking to external pages is done with ```url`_`` and ```link name <url>`_``, which'll become `link name <url>`_.

Pandoc likes to turn these into ```link name`__`` and then add `` .. __ :url `` at the end of the document. This is a so-called 'anonymous hyperlink', meaning that depending on the order of the links appearing in the text the order of the links at the end of the text are associated to one another. If this sounds confusing and difficult, it is because it is. That is also the exact reason why we'd like to avoid links like these.

Footnotes and further reading
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Footnotes can be made in 3 ways, the most common one is with autonumbering, as per reference:

[#]_ is a reference to footnote 1, and [#]_ is a reference to
footnote 2.

.. [#] This is footnote 1.
.. [#] This is footnote 2.
.. [#] This is footnote 3.

[#]_ is a reference to footnote 3.

Here is a citation reference: [CIT2002]_.

.. [CIT2002] This is the citation.  It's just like a footnote,
   except the label is textual.

Citaton can also be referenced with `citation <CIT2002>`_

We don't actually use footnotes in the manual due to the fact that it is a little bit too academical for our readers. However, we do collect documents and links that give a little bit more information on a topic at the end of a page. Sphinx has the ``.. seealso::`` directive for this, while reStructuredText suggests to use ``.. topic:: footnotes`` for specifically collecting footnotes as that plays nice with LaTeX.


Images
------

Use the image directive for images without captions::

    .. image:: /images/en/path_to_image
       :width: 800
       :align: center
       :alt: an image.

And figure directives for images with captions::

    .. figure:: /images/en/path_to_image
       :figwidth: 800
       :align: center
       :alt: an image.

       A caption --  notice how the first letter is aligned with the :figwidth: option.

Images should go into the ``/images/en`` folder. By using ``/images`` instead of ``images``, sphinx will know the filepath isn't relative.

In-text Markup
--------------

You can make text *emphasized* and **strong** with a single asterisk and double respectively::

    *emphasize*
    **strong**

You cannot ***emphasized and strong***, so take a pick.

You can :sub:`subscript text` and :sup:`superscript text` by using ``:sub:`text``` and ``:sup:`text```

However, use these super-sparingly! It is preffered to use the existing semantic markup in sphinx in any case, because that makes it easier for translators to make decisions about the nature of the text::

    :menuselection:`settings --> configure Krita`
    :guilabel:`File`
    :kbd:`Ctrl + Z`
    :program:`Krita`

Avoid randomly bolding words. It does *not* make the text easier or friendlier to read.

Substitution References
-----------------------

You can create a sort of shorthand for a piece of text or an image by doing::

    .. |shorthand| replace:: something or the other.

which means that if you use ``|shorthand|``, in the text, it'll be replaced with 'something or the other'. This is useful for links, images and text that needs to be formatted in a complicated way, like in the case of LaTeX.

The krita documentation has |mouseleft|, |mousemiddle|, |mousescroll| and |mouseright|, which'll turn into images. These are defined in the sphinx conf.py, and are appended to each rst file.

Lists
-----

Ordinated lists
~~~~~~~~~~~~~~~

1. Apple
2. Pear
3. Banana

Or...

A. Table
B. Chair
C. Wardrobe.

I. Augustus
#. Nero
#. Caligula
#. Trajan

They can be defined as follows::

    1. Apple
    2. Pear
    3. Banana

    #. Apple
    #. Pear
    #. Banana

    A. Table
    B. Chair
    C. Wardrobe

    A. Table
    #. Chair
    #. Wardrobe

    I. Augustus
    #. Nero
    #. Caligula
    #. Trajan

Unordered lists
~~~~~~~~~~~~~~~

- red
- yellow
- green
    - seagreen
    - verdigris
    - teal
    - veridian
    - emerald
        - dark emerald
        - light emerald
            - very light emerald.  
- blue

Defined as such::

    - red
    - yellow
    - green
        - seagreen
        - verdigris
        - teal
        - veridian
        - emerald
            - dark emerald
            - light emerald
                - very light emerald.  
    - blue

Definition Lists
~~~~~~~~~~~~~~~~

A favourite! Definition lists are especially useful when dealing with ennumerating all the options in a docker and trying to add a simple explaination behind them.

Definition
    explaination.
Another option
    Explaination.

To make them.
    You can make them like this::
    
       Definition
            explaination.
       Another option
           Explaination.

Tables
------

================== ============
Purpose            Table type
================== ============
listing shortcuts  Simple table
lots of colspans   Grid table
Simple but long    List Table
================== ============

Done as follows::

    ================== ============
    Purpose            Table type
    ================== ============
    listing shortcuts  Simple table
    lots of colspans   Grid table
    Simple but long    List Table
    ================== ============

    +-----------------+------------+
    |Purpose          |Table Type  |
    +=================+============+
    |listing shortcuts|Simple table|
    +-----------------+------------+
    |lots of colspans |Grid table  |
    +-----------------+------------+
    |Simple but long  |List table  |
    +-----------------+------------+

    .. list-table::

       - * Purpose
         * Table Type
       - * listing shortcuts
         * simple table
       - * lots of colspans
         * grid table
       - * simple but long
         * list table

Full grid tables are best for when you need all features like complex column and row spans, but they're tricky to make. For that reason, small tables are best off being done with the simple syntax, while really long tables are best done with a list directive because that is just much easier to write and maintain.

Admonishments and asides.
-------------------------

.. note::

    Admonishments are sort of like a seperate section that the reader needs to pay attention to.

Admonishments that can be used are the following(in order of seriousness):

.. hint::

    Hints are useful to give a little bit more information on a topic than is useful in the main text. Like, hint: these packages are named differently in openSuse versus Debian.

.. tip::

    Extra information on how to do something, like, "you can make a template of your favourite document setup", or "use m to mirror the canvas and see errors more easily in your drawing".

.. important::

    Something that is important to note, but is not necessarily negative.

.. warning::

    This is in general when something is negative.

.. attention::

    General attention grabber. Use this when the subject is more important than warning, but not as important that is could get a dataloss.

.. caution::

    This is for things that could cause dataloss, like forgetting to save, or that python currently has no undo functionality.

.. danger::

    This should be for things that are dangerous for the computer in general, this includes things that can cause out of memory style freezes.

.. error::

    This one is probably not relevant for a manual. Sphinx can create these manually given some situations, but our configuration does not do so by default.

.. admonition:: generic admonition that can have any text.

    This looks like the following::

        .. admonition:: generic admonition that can have any text.

            Text



Sphinx also adds::

    .. seealso::

        Which is useful to collect external links and references.

    

.. Topic:: Horizontal Rulers

    Horizontal rulers are usually used when the topic switches rather directly. This is very common in more narrative based writing, such as history or fiction. The Krita manual is more instruction and reference style writing, that is to say, we don't usually tell a long story to indicate how different elements come together, but rather long stories are there to motivate why certain steps are taken in a certain manner. Topic changes then usually happen because we go into a new section, rather then switching to a related section. It is therefore better to use headings or the ``.. Topic::`` directive. Headings also make it easier to read.

----------------

That said, horizontal rulers can be made with ``----``.

.. rubric:: The rubric directive.

The rubric directive is a heading directive that at first glance looks like "topic", but where topic is over several paragraphs, rubric itself only deals with the header, like so::

    .. rubric:: The rubric directive.


.. rubric:: So, when to use these?

Only use them when you think the subject is too minor to have a proper heading.

Topic
    When the text is seperated from the flow, so it goes into a different subject than the text itself is naturally going to.
Rubric
    When the text isn't seperated from the flow, but it does not need a header either.
Admonishments
    Only when they fit semantically. This is especially necessary for the danger and warning admonishments, as seeing them too often can make users blind to them.

Code Snippets:
--------------

``Inline code snippets`` are done with ````backticks````.

Multi-line code snippets are done by ending the previous section with ``::``, which'll look like this::

    This is a paragraph, and we define a preformated snippet like so::

        Be sure to add a white space and a tab afterwards befor starting the snippet.

You can also use the ``.. code::`` directive. If you add the language name after it, it'll do the appropriate syntax highlighting::

    .. code:: python

        def my_function():
            # comment
            alist = []
            alist.append(1)
            string = "hello world"

Becomes

.. code:: python

    def my_function():
        # comment
        alist = []
        alist.append(1)
        string = "hello world"

some more...

.. code:: c++

    int myFunction(int i) {
        i += 1;

        // Check if more than 12
        if (i>12) {
            i = 0;
        }
        return i;
    }

.. code:: css

    body {
        margin: 0 auto;
        /* is 800 still sensible? */
        max-width:800px;
        font-size:16px;
        color:#333;
        background-color: #eee;
        padding:1em;
        font-family:serif;
        line-height: 1.4;
    }

.. code:: html

    <p>this <span style="font-style:italic">is</span> <!-- a comment --> a paragraph.</p>
    
Other preformatted text.
------------------------


| One can
| preformat
| text by
| prepending
| each line
| with a pipe
| symbol

Like so::

    | One can
    | preformat
    | text by
    | prepending
    | each line
    | with a pipe
    | symbol

We don't actually use this anywhere in the manual.

Glossaries, Terms and Index
---------------------------

These are sphinx features, which we haven't decided upon whether we wish to use them.

Quotes
------

Quotes are done like this::

    I am not sure why you'd need quotes in a user manual...

    -- Wolthera

This becomes a blockquote.

    I am not sure why you'd need quotes in a user manual...

    -- Wolthera



