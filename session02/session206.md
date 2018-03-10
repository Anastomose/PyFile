#### Session 06: CGI WSGI and Online Processes  
    set VARIABLE = 'something'
    echo %VARIABLE%

Python is capable of altering its environment, the interpreter runs as a child of the parent environment. Changes made in python will not be passed back to the parent environment.

CGI provides a set of standard environment variables. These are variables that should be present when handling web content. Things like content type, user name, server name, port number, and so forth.

Apache, IIS, other HTTP servers also implement CGI. There is a python module that does this as well: CGIHTTPServer.

_Note!_  
    $ python -m MODULE  
Will run the MODULE identified if it is somewhere on the python path.

* All CGI scripts must include the shebang.
* The script must be executable
* The python identified in the shebang must be available to the nobody user

```python
import cgi

form = cgi.FieldStorage()
stringval = form.getvalue('a', None)
listval = form.getlist('b')
```

'wsgiref' is part of the standard python library and provides a reference implementation of wsgi for programming. The library includes both server and client tools.

pprint: pretty print module for python

To read through the code being executed for any module:  
```python
import module
module.__file__
```

