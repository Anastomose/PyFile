============
Session 308
============

*Compiled code and programming in C*

Passing data require parsing both on the way in and the way out. See PyArg_ParseTuple_

.. _PyArg_ParseTuple: https://docs.python.org/2/c-api/arg.html

On the way out we call *Py_BuildValue*

Super complicated and very brittle. The brittlness is what makes it fast though.

setuptools includes tools to build extensions and compile (?) them

.. code-block:: bash

    python setup.py build_ext --inplace

Utilities you need for handling the C extension:
    * Py_INCREF(x)
    * Py_DECREF(x)
    * PyArg_ParseTuple
    * Py_BuildValue

*ctypes*
    * Installed with standard python library
    * All python
    * Autoparsing
    * Little bit slower with the on-the-fly translation
    * Wrappers for all regular data types
    * Still pretty damn confusing

Best application will probably be for calling standard c libraries that are included with proprietary packages or some other application. Will require lots of screwing around.

--------
Cython
--------

* Write pure python
* Produces pure C (and the associated speed)
* http://www.cython.org

.. code-block:: bash

    python setup.py build_ext --inplace
    cython cy_add1.pyx
    cython -a cy_add1.pyx # creates annotated version

*Remember!*

.. code-block:: python

    import fx
    dir(fx) # will show all members in fx

To access the speed of cython you must define functions and variables using cdef, cpdef

.. code-block:: python

    cdef double i = 0.0
    cdef double somefunc(double x)  # first double is return type, second is input type

Each time you cythonize code it will need to be rebuilt in order to add all the changes into the compiled code.

*Auto-generated wrappers*
    * SWIG -- simple wrapper interface generator
    * SIP
    * XDress -- reads C or C++ and generates cython
    * Boost-Python -- peer reviewed C and C++ library that understands python and python types
    * f2py -- for fortran

Use ctypes for a couple of system library calls

Use SWIG or XDress for wrapping a big library

Use cython for writing extensions from scratch

