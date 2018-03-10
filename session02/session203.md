### Session 3  
Pyramid web application transforms the actual HTTP request into a python object with multiple attributes that can be accessed through special methods.

Recall model is part of sytem that is reaching out to the database to make transactions with the data.

The view is bound to the request (?) and to the renderer. First renderer was a string, then we switched to a jinja template.

A critical part of the web-service is being able to scrape information off the request that comes in and hits pyramid.

**Working Edit Form**
```python
    """forms.py excerpt with markups"""

    class EntryCreateForm(Form):
    title = TextField(
    'Entry title',
    [validators.Length(min=1, max=255)],
    filters=[strip_filter]
    )

    body = TextAreaField(
    'Entry body',
    [validators.Length(min=1)],
    filters=[strip_filter]
    )

    # note subclassing from EntryCreateForm for easy extension
    class EntryEditForm(EntryCreateForm):
    id = HiddenField() 
    """special hidden input, gets sent as form data but is not shown to the user and the user cannot interact with it

    the id attribute of the class is a hidden field
            """


```

Query parameters are integrated as part of the route. Look into routeurl() function.

__AuthN and AuthZ Access Control__  
Authentication -- who am I  
Authorization -- what can I do


