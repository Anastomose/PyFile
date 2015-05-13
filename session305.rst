session305
------------
+ Scipy
+ Matplotlib
+ iPython
+ Numpy: 
+ pandas: data handling
+ nose: testing environment
+ sympy: computer alegebra and symbolic

**Firing Up ipython notebooks**

.. code-block:: bash

    / in dir of interest
    >>ipython notebook


Numpy
--------
* Faster
* Less memory
* More data types
* Supports multidimensional arrays 
* Vector operations: e.g. multiply vector times scalar

**Good Wrappers for other stuff**

+ GDAL
+ Some other stuff I didn't catch

__Array Constructors__

+ ones()
+ zeros()
+ empty()
+ arange()
+ linspace()
+ logspace()
+ fromstring()
+ frombuffer()
+ fromfile()

use .copy() method to create new arrays from existing arrays while leaving the original data untouched

**Other Array Methods**

.. code-block:: python

    import numpy as np
    np.reshape(a, (x,y))
    np.flat(a)
    np.ravel(a)
    np.atleast(a)
    np.squeeze(a)

Numpy arrays are homogenous, every item is the same datatype

**Masking**

.. code-block:: python

    a = [1,5,7,9]
    mask = a > 5
    b = a[mask]

    # simplify by a couple lines
    a[a>5]
    a[a>3] = 8  # sets all values over 3 at 8

__Look more at fancy indexing that comes with numpy, very useful for subsettingdata from larger sets__

.. code-block: python

    import numpy as np
    import sys

    empty_list = sys.getsizeof(np.array([]))

    # loading data from text file
    import numpy as np
    np.loadtext()
    np.genfromtxt()

    # don't forget about python csv module, quite powerful

    np.tofile()
    np.fromfile()
    np.savez() # saves in zip format

**Other Forms of Memory Storage**

+ Python pickle
+ pyhdf

+ f2py -- calling fortran code from python

__Numpy Also Has__

* statistics
* Linear algebra


matplotlib
--------------

Figure -- is a piece of paper or canvas

Subplot -- image on the canvas

axes -- objects where plotting actually happens, this is also where the type of figure is identified for drawing, histogram, box plot, line, etc

axis -- the actual lines along the edges of the plots

Best to work with the object oriented API rather than making lots of calls to draw and select etc

.. code-block: python

    %matplotlib inline  # for working in notebooks
    import matplotlib.pyplot as plt

    x = np.linspace(0, 2*np.pi)
    y1 = np.sin(x)
    y2 = np.cos(x)
    fig, (ax1, ax2) = plt.subplots(1, 2)

    ax1.set_ylabel('$\gamma$') # take advantage of LaTEX
    # axes objects are where most plotting takes place

Matplotlib includes a mini LaTEX interpreter so greek letters and other stuff can be easily plotted

**Don't Forget About SciPy**

* Includes spatial data structures and algorithms (scipy.spatial)
* Statistics (scipy.stats)
* Integration
* Special functions
* Fourier Transforms






