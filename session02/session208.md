### Session 08  
---

#### Set Up Notes Pre-Class
---
* DJANGO_SETTINGS_MODULE is how the manage.py script is made aware of the project environment. Because of this it is critical the package _is not renamed._
* settings.py is where apps for the project are identified and installed under INSTALLED_APPS
* Fields can be queried using a field name combined with a lookup that is identified by a double underscore character:
    * title__exact='The exact title'
    * text__contains='decoration'

#### Class Notes:
---
Generator comprehensions! Use normal syntax for a list or dictionary comprehension without applying the outer brackets. The result will be a series of objects that are read through 1 x 1, handled, and then dumped from memory. Super useful!

*Some thoughts on django*  
Django works by convention. Naming files really matters. If your models aren't in a file called models.py other parts of the ORM will suddenly blow up.

Django dominates web development because of badass admin features.

Jobs man, want to do web development, know django.

ERD -- entity relationship diagram for a database that shows the layout of all the objects to each other

Recall the code that builds the pages we look at are called 'views'.

A view can be defined as a callable that takes a request and returns a reponse. We will add a simple view as a function.

_Goddammit this is going very fast, check py file comments_
