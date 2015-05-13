--------------
Session 306
--------------

* Advanced object oriented programming
* datetime
* multiple inheritance

.. code-block: python

    class Animal(object):
        pass

    class EggLayer(object):
        def lay_eggs(self):
            pass

    class Birther(object):
        def live_birth(self):
            pass

    class Platypus(Animal, Egglayer):  # this is a mix in
        pass

The diamond problem: calling the same method through multiple objects leading to redundancy.

Method resolution order -- corrects multiple calls problem using C3 algorithm or some other set of logic 

.. code-block: python

    object.__mro__

    class SafeVehicle(Vehicle):

        def __init__(self, position, velocity, icon='S'):
            super(SafeVehicle, self).__init__()

    # every python object has the special method:
    object.__class__

    # this returns the object's class and instance

    super(type, object) # method for super classing

    # __new__ method -- a static method called w/class object before __init__

    class Class(superclass):
        def __new__(cls, arg):
            pass

        def __init__(self):
            pass

Recall that pickle is a way to serialize and store any python object in it's current state -- this could be really useful

"__new__" is an object constructor where it is applied

