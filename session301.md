###Session301 -- Introduction
------

```
conda update numpy
conda install netcdf4
```

Class Project  
* Paragraph describing the finished product
* Version control
* Some other requirement -- I think it has to be longer than just one file (??)

####Building Your Own Package
-----
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
* Readme.txt (recommend write in restructured text()
* setup.py
* Scripts/
* package_name/ (actual dir where code goes)
* test/ (unit tests go here)

setup.py is just a python file that describes your package, tells distutils how to package, distribute and install, there is a lot of included metadata in the setup(command)

A package is literally a dir with a __inti__.py file in it followed by the modules that wil be installed

setup.cgf

####Unit Testing and Code Coverage
-----

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

*Using Fixtures*  
Creating data for testing code that can be screwed up and replaced.
* seUp / tearDown
* setUpClass / tearDownClass
* setUpModule / tearDownModule
* addCleanup / doCleanups -- for cases where tests throw exceptions






