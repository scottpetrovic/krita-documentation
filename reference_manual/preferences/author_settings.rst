.. _author_settings:

=======================
Author Profile Settings
=======================

Krita allows creating an author profile that you can use to store contact info into your images.

The main element is the author page. This page was overhauled massively in 4.0.

By default, it will use the "Anonymous" profile, which contains nothing. To create a new profile, press the "+" button, and write up a name for the author profile.

You can then fill out the fields.

.. figure:: /images/en/Krita_4_0_preferences_author_page.png
   :align: center
   :figwidth: 800

   The position field is special in that it has a list of hard coded common artists positions it can suggest.

In older versions of Krita there could only be one of each contact info. In 4.0, you can make as many contact entries as you'd like.

Press :guilabel:`Add Contact Info`  to add an entry in the box. By default it will set the type to homepage, because that is the one that causes the least spam. Double |mouseleft| homepage to change the contact type. Double |mouseleft| the "New Contact Info" text to turn it into a line edit to change the value.

Using the new profile
---------------------

To use a profile for your current drawing, go to :menuselection:`Settings --> Active Author Profile`  And select the name you gave your profile. Then, when pressing save on your current document, you will be able to see your last author profile as the last person who saved it in :menuselection:`File --> Document Information --> Author` 

Exporting author metadata to Jpeg and Png
-----------------------------------------

.. versionadded:: 4.0

    The jpeg and png export both have :guilabel:`Sign with author data` options. Toggling these will store the Nickname and the *first entry in the contact info* into the metadata of png or jpeg.

    For the above example in the screenshot, that would result in: ``ExampleMan (http://example.com)`` being stored in the metadata.
