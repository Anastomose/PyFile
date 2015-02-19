###SESSION 2 -- INTERACTING WITH DATA
Questions and answers from previous session

```python
class foo(object)

    @classmethod  # literally a class method that uses an instance of the class
    def fun(cls, *args):
    """first argument that is received is the class object that then 
       gets bound to an object"""
        do some stuff here
```

**An important point of object oriented programming is when to use a class versus a class instance**

Difference between _unicode_ and _unicodetext_ is that unicodetext has no length requirements, it makes a blob as big as it needs to be

DBSession object is a special session that uses a zope transaction extension that ties the object to a request and a response. It is a singular open-transact-return and won't work at the command line

This session's focus: controllsers and views:  
Pyramid controller --> view
Pyramid view --> renderer

Domain names work in reverse. The most general component is the .com, the most specific component is right next to the http://

Webpage paths are now referred to routes, and they work as an identifier for a code process that will assemble a response that will be sent back to the computer making the request.

In the regular expression used in the action we have the name: regexp

    # pattern          # actual url   # matchdict
    /journal/{id:\d+}  /journal/27    {'id': '27'}

Pyramid Views  
* Views are callable
* Classes are callable if they include a __call__ method
* A function is a callable
* Methods on classes are callable

The view is a callable that takes the request as an argument and then returns the assembled data by passing it on the renderer.

Templates are a way to render our content. First a template is constructed, then it is provided _context_ by handing in values in the form of a dictionary or some other value depending on what is required.

jinja will accept and process control structures, they require closing statements

