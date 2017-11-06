Session301 -- Introduction
------

```
conda update numpy
conda install netcdf4
```

Class Project  
* Paragraph describing the finished product
* Version control
* Some other requirement -- I think it has to be longer than just one file (??)

Building Your Own Package
------

Packages! You're already using them when you do pip install and that sort of thing. Bunch of nifty tools to help build, install, and distribute package.  

* distutils
* setuptools
* pip
* wheel

Python packaging user guide  
Github example repo  

Follow basic package structure:
* Changes.txt
* License.txt
* Manifest.in
* Readme.txt (recommend write in restructured text)
* setup.py
* Scripts/
* package_name/ (actual dir where code goes)
* test/ (unit tests go here)

setup.py is just a python file that describes your package, tells distutils how to package, distribute and install, there is a lot of included metadata in the setup(command)

A package is literally a dir with a __inti__.py file in it followed by the modules that wil be installed

setup.cgf

Unit Testing and Code Coverage
------

```python
import unittest

class TestTest(unittest.TestCase):
    def setUp(self):
        pass

    def test_add(self):
        self.assertEqual(2+2, 4)
```

* Gold standard for tests it that they are _specific_ and they are _short_ so they hit what you want them to
* Always start the function with "test_" so nose and other testing packages can find them

_Assert Methods_
* assertEqual
* assertNotEqual
* assertTrue
* assertFalse
* assertIn
* assertRaises
* assertAlmostEqual -- for testing floating point equivalency

*Use Nose* handles running of tests, can be installed with pip, will find and run tests for you so that you can focus on writing them.

*Using Fixtures*  
Creating data for testing code that can be screwed up and replaced.
* seUp / tearDown
* setUpClass / tearDownClass
* setUpModule / tearDownModule
* addCleanup / doCleanups -- for cases where tests throw exceptions

To run coverage on your test suite:  
``` python
coverage run some_program.py arg1 arg2
```

Context Management
------

``` python
with open('file.txt', 'wb') as f:
    f.write('foo')

##Example
import os, random, shutil, time

class TemporaryDirectory(object):
    """A context manager for creating a temporary directory which gets destroyed on context exit"""

    def __init__(self,directory):
        self.base_directory = directory

    def __enter__(self):
        # set things up
        self.directory = os.path.join(self.base_directory, str(random.random()))
        os.makedirs(self.directory)
        return self.directory

    def __exit__(self, type, value, traceback):
        # tear it down
        shutil.rmtree(self.directory)

with TemporaryDirectory("/tmp/foo") as dir:
    # write some temp data into dir
    with open(os.path.join(dir, "foo.txt"), 'wb') as f:
        f.write("foo")
        time.sleep(5)
```

Context managers create a class with __enter__ and __exit__ methods that are defined to handle setting up and tearing down

To create a context manager just create a class with the two methods above and define them so they set up the environment appropriately.

*mock*  
MagickMock something ...

```python
mock.patch  # takes some module and patch it with this thing

```




