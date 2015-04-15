###Session302.md  
----

* Documentation
* Memory Management
* pep-8 stuff

####Documentation  
A really key part of development, people don't like to use code that isn't well documented.  
* Readthedocs.org
* Sphinx -- an extension architecture for adding special functionality
* Sphinx will pull documentation directly from docstrings in source code

restructured text comes into its ownn with directives, which are interpreted to create documentation elements

```
.. toctree::
    :maxdepth: 2

.. automodule:: module
```

* Second command will pull docstrings from all the functions int he module specified.
* This allows documentation to be automatically updated with each iteration of "make html" or other documentation writing command.
* Docstrings can be written for the class or for the __init__ in a module.

make html -- must be run at the cmd prompt, won't work in gitbash

config.py setting values:  
autoclass_content  
* class
* both
* init

Using the autodoc function:  
sphinx-apidoc -o test ../cdf_tools

Check out the Sphinx themes to see other layouts and whatnot that can be applied to the generated documentation.

###Memory Management
-----
Kind of a big deal, but has been largely overlooked as memory has become more and more available.

Most scripting languages have some sort of built in memory management, aka garbage collection.

References:  
* Binding a name to an object
* Put an object in a container
* Pass an object to a function

```python
import gc  # garbage collection module
import di  # something

id()  # python function that returns object memory address

```

_Garbage Collector_  
Search for reference cycles and cleans them up. However, classes with __del__ method are not cleaned up.

Memory leak -- constant creation of objects that then are abandoned and become unreachable.

Weak References -- when you want to reference objects without increasing their reference count.

Problem frequently arises when multiple classes are created that have parent-child relationship

```python
import weakref

class MyChild(object)
    def __init__(self, parent):
        self.parent = weakref.proxy(parent)
        ...

```

