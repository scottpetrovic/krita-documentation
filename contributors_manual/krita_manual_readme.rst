.. meta::
   :description:
        Contributor's Readme for the Krita Manual

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Micheal Abrahams

   :license: GNU free documentation license 1.3 or later.

.. _krita_manual_contributors_guide:

===============================
Krita Manual Contribution Guide
===============================

Welcome to our new documentation!

We're moving from userbase.kde.org to docs.krita.org, then we moved from mediawiki to sphinx. This latter change is because sphinx allows us to handle translations much better than mediawiki can.

The manual will include:

A reference manual for Krita
    This one is probably what everyone is expecting when they type in docs.krita.org. Dry, basic, 'what does this button do' type of information.
General concept tutorials.
    We've found over the past two years that for certain of users, a reference manual, even with some examples, just isn't enough. The manual should provide fast and concise explanations for things, and provide a basic workflow for preparing an image for the web. But we also have found that certain concepts, such as color management and layer handling is far more advanced in Krita than that the average artist is used to. Krita is free and many of its users will not have formal training in digital artwork. So there's no pre-existing artist-focused knowledge on how to use color management or filter layers. In addition there are systems that are unique to Krita, for example the brush system, the transform masks, the alpha inheritance and the perspective assistants. Finally, there are users who aren't familiar with even standard painting workflows, and are not flexible enough to understand how to port a tutorial for Sai or Photoshop to Krita.
A list of known tutorials and video tutorials
    Apparantly, one of the great things about Krita's team is how we connect with artists and acknowledge that they're doing cool stuff. The same should count for tutorials, especially because there's ways of using Krita and ways of approaching painting that are unique and we should encourage people to share their knowledge.
krita.org tutorials
    There's been a bunch of tutorials on the krita.org and the krita-foundation.tumblr.com, the former focussing on explaining how to use a new feature and the later stimulated by user request.
FAQ
    This one is already online and a merger of the different FAQs that we had. It's currently being translated and we hope to keep this one the primary one to update.

For first timers
----------------

Unlike Mediawiki, sphinx works more like how we create code.

First things first, you would want to talk to us! For this you can either go to the IRC on krita.org, or, more importantly, make an account at identity.kde.org. The account you make at identity can be used to both access the forum as well as the phabricator, where we organise Krita development.

If you have no idea where to begin, make a kde identity account and make a post on the forum.

Sphinx works by writing simple text files with reStructuredText mark up, and then it takes those text files and turns them into the manual. We keep track of changes in the manual by putting them into a file management system not unsimilar to git.

Making changes
~~~~~~~~~~~~~~

Because we use git, there's only a few people who can put things into the git, so if you want to make changes you will need to put it up for review.

If you are not familiar with git
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Get the source text.
    Save a copy of the text as it existed originally.
2. Modify it.
3. Tools to check whether your modifications work.
4. Bundle up the items into a zip.

    Put all the files you changed into a zip file, also add in the original files. This also includes the images if you're changing them.
    Try to keep the filenames the same, that's easier for us to copy over.
5. Upload the zip on phabricator.

    1. First, go to phabricator.kde.org and log in with you identity account.
    2. Go to the manual project board and there create a new task.
    3. Explain what you did and use drag and drop to move the zip file to the input textbox. That should upload it. We will also need the email address you associate with your kde identity account.
    4. Then, if the changes are accepted, someone with commit access will unpack those files into the manual folder and push the differences using the mail address.

If you are familiar with git
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. get the source.
2. Make changes
3. Build locally (optional)
4. Generate a git diff.

   Go to the source directory in your terminal and write ``git diff > ../mydiff.diff`` this will make a diff file in the folder above.

5. Create a review request on phabricator

   1. Login into phabricator.kde.org with your identity account.
   2. Go to differential.
   3. Upper-right --> create new differential.
   4. Upload the diff you made, select the correct repository.
   5. Confirm the file is correct.
   6. Then in the next screen, add in name, tell us what you changed.

General philosophy
------------------

Demographics and target audience(s)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We cannot talk about a demographic in the sense that we know all Krita users are 55 year old men. Krita is used by a hugely different amount of people, and we are actually kind of proud that we have such a varied userbase.

Despite that, we know a couple of things about our users:

* They are artists. This is explicitly the type of users that we target.

    * Therefore, we know they prefer pretty pictures.
    * They are visual.
    * And that they are trying to achieve pretty pictures. 

Therefore, the implicit goal of each page would be to get the feature used for pretty pictures.

Other than that, we've observed the following groups:

* High-school and college students trying out drawing software for illustrations. These usually have some previous experience with drawing software, like Painttool Sai or Photoshop, but need to be introduced to possibilities. This group's strength is that they share a lot of information with each other like tips and tricks and tutorials.
* Professionals, people who earn their money with digital drawing software. The strength of this group is that they have a lot of know-how and are willing to donate to improve the program. These come in two types:

    * Non technical professionals. These are people who do not really grasp the more mathematical bits of a piece of software, but have developed solid workflows over the years and work with software using their finely honed instincts. These tend to be illustrators, painters and people working with print.
    * Technical professionals. These are people who use Krita as part of a pipeline, and care about the precise maths and pixel pushing. These tend to be people working in the games and VFX industry, but occasionally there's a scientist in there as well.

* Adult and elderly hobbyists. This group doesn't know much about computers, and they always seem to get snagged on that one little step missing from a tutorial. Their strength as a group is that they adapt unconventional workflows from real life that the student wouldn't know about and the professional has no time for and create cool stuff with that, as well as that they have a tempering effect on the first group in the larger community.

From these four groups...

* there's only one that is technical. Which is why we need the concept pages, so that we can create a solid base to write our manual texts on top of.
* three of them likely have previous experience with software and may need migration guides and be told how.
* two of them need to know how to get Krita to cooperate with other software.
* two of them have no clue what they are doing and may need to be guided through the most basic of steps.

From that we can get the followig rules:

General
~~~~~~~

Use American English if possible.
    We use American English in the manual, in accordance to Krita's UI being American English by default.
Keep the language polite, but do not use academic language.
    As a community, we want to be welcoming to the users, so we try to avoid language that is unwelcoming. Swearing is already not condoned by KDE, but going to the far other end, an academic style where neither writer nor reader is acknowledged might give the idea that the text is far more complex than necessary, and thus scare away users.
Avoid using gifs.(up to debate)
    The reason is that people with epilepsy may be affected by fast moving images. Similarly, gifs can sometimes cary too much of the burden of explanation. If you can't help but use gifs, at the least notify the reader of this in the introduction of the page.
Keep it translation compatible
    This consists of using svg for infographics, and using the appropriate markup for given text.

Regarding photos and paintings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* I would like to dis-encourage photos and traditional paintings in the manual if they are not illustrating a concept. The reason is that it is very silly and a little dishonest to show Rembrand's work inside the Krita GUI, when we have so many modern works that were made in Krita. All of the pepper&carrot artwork was made in Krita and the original files are available, so when you do not have an image handy, start there. Photos should be avoided because Krita is a painting program. Too many photos can give the impression Krita is trying to be a solution for photo retouching, which really isn't the focus.
* Of course, we still want to show certain concepts in play in photos and master paintings, such as glossing or indirect light. In this case, add a caption that mentions the name of the painting or the painter, or mention it's a photograph.
* Photos can still be used for photobashing and the like, but only if it's obviously used in the context of photobashing.

Regarding images in general
~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Avoid text in the images and use the caption instead. Ỹou can do this with the figure directive.
* If you do need to use text, make either an SVG, so the text inside can be manipulated easier, or try to minimize the amount of text.
* Try to make your images high quality/cute. Let's give people the idea that they are using a program for drawing!

Other
-----

For restructured text conventions, check :ref:`krita_markup_conventions`.