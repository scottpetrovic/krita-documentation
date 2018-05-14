Maths input
===========

Also known as Numerical Input boxes. You can make Krita do simple maths
for you in the places where we have number input. Just select the number
in a spinbox, or rightclick a slider to activate number input. It
doesn't do unit conversion yet, but this is planned.

Possible Functions
------------------

Addition (Operator: + )
    Just adds the numbers. Usage:

    .. code-block:: text

       50+100

    Output:

    .. code-block:: text

       150

Subtraction (Operator: - )
    Just subtracts the last number from the first. Usage:

    .. code-block:: text

       50-100

    Output:

    .. code-block:: text

       50

Multiplication (Operator: \* )
    Just multiplies the numbers. Usage:

    .. code-block:: text

       50\*100

    Output:

    .. code-block:: text

       5000

Division (Operator: / )
    Just multiplies the numbers. Usage:

    .. code-block:: text

       50/100

    Output:

    .. code-block:: text

       0.5

Exponent (Operator: ^ )
    Makes the last number the exponent of the first and calculates the result. Usage:

    .. code-block:: text

       2^8

    Output:

    .. code-block:: text

       256

Sine (Operator: sin() )
    Gives you the sine of the given angle. Usage:

    .. code-block:: text

       sin(50)

    Output:

    .. code-block:: text

       0.76

Cosine (Operator: cos() )
    Gives you the cosine of the given angle. Usage:

    .. code-block:: text

       cos(50)

    Output:

    .. code-block:: text

       0.64

Tangent (Operator: tan() )
    Gives you the tangent of the given angle. Usage:

    .. code-block:: text

       tan(50)

    Output:

    .. code-block:: text

       1.19

Arc Sine (Operator: asin() )
    Inverse function of the sinus, gives you the angle which the sinus equals the argument. Usage:

    .. code-block:: text

       asin(0.76)

    Output:

    .. code-block:: text

       50

Arc Cosine (Operator: acos() )
    Inverse function of the cosinus, gives you the angle which the cosinus equals the argument. Usage:

    .. code-block:: text

       acos(0.64)

    Output:

    .. code-block:: text

       50

Arc Tangent (Operator: atan() )
    Inverse function of the tangent, gives you the angle which the tangent equals the argument. Usage:

    .. code-block:: text

       atan(1.19)

    Output:

    .. code-block:: text

       50

Absolute (Operator: abs() )
    Gives you the value without negatives. Usage:

    .. code-block:: text

       abs(75-100)

    Output:

    .. code-block:: text

       25

Exponent (Operator: exp() )
    Gives you given values using e as the exponent. Usage:

    .. code-block:: text

       exp(1)

    Output:

    .. code-block:: text

       2.7183

Natural Logarithm (Operator: ln() )
    Gives you the natural logarithm, which means it has the inverse functionality to exp(). Usage:

    .. code-block:: text

       ln(2)

    Output:

    .. code-block:: text

       0.6931

The following are technically supported but bugged:

Common Logarithm (Operator: log10() )
    Gives you logarithms of the given value. Usage:

    .. code-block:: text

       log10(50)

    Output:

    .. code-block:: text

       0.64

Order of Operations.
--------------------

The order of operations is a globally agreed upon reading order for
interpreting mathematical expressions. It solves how to read an
expression like:

.. code-block:: text

   2+3\*4

You could read it as 2+3 = 5, and then 5\*4 =20. Or you could say 3\*4 =
12 and then 2+12 = 14.

The order of operations itself is Exponents, Multiplication, Addition,
Subtraction. So we first multiply, and then add, making the answer to
the above 14, and this is how Krita will interpret the above.

We can use brackets to specify certain operations go first, so to get 20
from the above expression, we do the following:

.. code-block:: text

   ( 2+3 )\*4

Krita can interpret the brackets accordingly and will give 20 from this.

Errors
------

Sometimes, you see the result becoming red. This means you made a
mistake and Krita cannot parse your maths expression. Simply click the
input box and try again.

