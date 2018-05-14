Group Layers
============

While working in complex artwork you'll often find the need to group the
layers or some portions and elements of the artwork in one unit. Group
layers come in handy for this, they allow you to make a segregate the
layers, so you can hide these quickly, or so you can apply a mask to all
the layers inside this group as if they are one, you can also
recursively transform the content of the group. . Just drag the mask so
it moves to the layer. They are quickly made with :kbd:`Ctrl + G`.

A thing to note is that the layers inside a group layer are considered
separately when the layer gets composited, the layers inside a group are
separately composited and then this image is taken in to account when
compositing the whole image, while on the contrary, the groups in
Photoshop have something called pass-through mode which makes the layer
behave as if they are not in a group and get composited along with other
layers of the stack. The recent versions of Krita have pass-through mode
you can enable it to get similar behavior

