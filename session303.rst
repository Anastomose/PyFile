------------
Session 302
------------
+ The call stack
+ Exceptions
+ Iterators
+ Debugging strategies

--------------
The Call Stack
--------------
+ Calling a function creates a frame and adds it to the stack. The frame holds data, objects, and names associated with the function.
+ As fuctions finish running they are popped back off and the next fuction is brought back to the foreground
+ Stack space has limits!

..code-block:: python

    frame = sys.getframe(num)

-----------
Exceptions
-----------
+ Let it pass
+ Swallow / suppress 
+ catch exception and raise it again
+ catch exception and raise a new one

.. code-block:: python

    [name for name in dir(__builtin__) if "Error" in name]

---------------------------------
Iterators and Generators
---------------------------------
Crucial to the iterator is the __iter__ method which should be applied as follows:

.. code-block:: python

    def __iter__(self):
        return self

* list comprehensions
* generator expression! Same format as list comprehension but with parens rather than brackets

.. code-block:: python

        my_generator - (x for x in iterable)


-----------------
Debugging
-----------------

Lowest Level:
* print()
* interpreter hints
* import logging.debug
* assert()
* run script with -i flag to inspect environment

Slightly Moar Elegant:
* pdb
* ipdb

__logging__
example

.. code-block:: python

    import logging
    import worker

    format='%(asctime)s %(message)s'

    logging.basicConfig(filename='example.log', format=format, level=logging.DEBUG)


    logging.debug("debug level message")
    logging.warning("debug level message")

    def worker():
        logging.info("worker called")

    worker()
    logging.info("test complete")



..
    some other shit that's not working right
    [core]
        editor = gvim

    /share/vim/vim74/vim
    C:/Program\ Files\ \(x86\)/Git/share/vim/vim74/vim
    C:/Program\\ Files\\ \\(x86\\)/Git/share/vim/vim74/vim
    C:/Program\\ Files\\ \\(x86\\)/Vim/vim74/gvim
    C:/Program\\ Files\\ \\(x86\\)/Vim/vim74/gvim.exe