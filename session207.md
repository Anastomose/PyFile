###Session 07 -- Web Scraping, APIs, and Mashups

_Mashups!_  
Combining data from lots of sources to produce something useful and or cool.

PDB commands:
* List (l) -- shows where you are in the code
* Name of any variable or function
* Next -- advance 1 line in the code
* Step -- step into a function call
* Return -- will run to end of a function, of end of code depending on context
* This won't work with stuff like cgi, or stdout
* continue (c) -- exit out of PDB and keep running

PDB has a lot of other stuff to offer that should be researched:
* Breakpoints can be set from PDB
* Conditional breakpoints
* Check out the python module of the week tutorial

__Never install custom packages in your global python, it will lead to version conflicts and you will not go to space today. Always fire up virtualenv and make a new environment for projects that require custom python builds__

_Beautiful Soup_  
Installing beautfiul soup, add a better parser, and an engine for putting out requests to websites.

```bash
pip install beautifulsoup4
pip install hmtl5lib
pip install requests
```

What is a file-like object? As far as BS4 (and python) is concerned it is anything with a read method or a write method

(soupenv)$ python mashup.py > inspection_page.hmtl  
note use of redirect (>) above that fires response into a html file

For our scrape we know that div tags with '~' in them contain the target information we would like to pull.

BS4 hands back tags as objects which contain child tags the way down through the bottom.

_Recall merging two dictionaries_  
```python
d1={'a':1, 'b':2}
d2={'b':5, 'c':4}
d.update(d2)  # this is destructive, it will destroy keys that are repeated
```

####Web Services -- A better way to grab web data  
Web scraping sort of sucks. Web services are made to support machines talking to each other. This is preferred.

Python that pulls from RSS feeds: feedparser

Also: XML-RPC

SOAP -- Simple object access protocol  
Extension of XML-RPC that allows us to do a lot of useful stuff (apparently).  
SOAP is not supported in python, but this other library, SUDS, is available.  
It's also sort of shitty.

So screw XML. Let's go to the way of the future, __JSON__

When working with dates on JSON just put them into strings then pass them into your data.

REST -- Representational State Transfer
* RESTful Web Services
* Resource oriented architecture




