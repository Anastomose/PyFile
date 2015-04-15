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

###PEP-8 Stuff
------
* Style guide for your code
* Best to use the style guide in general, but sometimes deviation are necessary
* Always use 4 spaces to indent at each level
* run python 2 with -tt flag to identify instances when \t and \s are combined
* official line length is 79, but it is accepted to go longer, 85, 100, as long as it is consistent
* use ASCII if you can, use unicode if you must
* Class names should use CamelCase
* constants should be ALL CAPS
* Always call 'self' --> self
* Same goes for 'class' --> cls
* Imports at top
    + Standard library
    + Related third party library
    + Local application library
* When in doubt make attributes public
* Add public names in a module to __all__ = ['list of funcs and classes']
* Use "x is None", "not x == None"

Tools:
-----
* PyChecker
* pyflakes -- more focused on functional stuff
* Pylint -- a little more focused on styles
* pep8 -- very comprehensive style checker
* flake8

Tools will work at the linux command line.

```bash
pip install pep8
pip install --upgrade pep8

pep8 <filename>
flake8 <filename>

pip install pylint
pylint <filename>

```

In general it is preferable to use isinstance() rather than using type() when inspecting objects.
