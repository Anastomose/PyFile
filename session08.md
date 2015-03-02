###Django

####Set Up Notes Pre-Class
* DJANGO_SETTINGS_MODULE is how the manage.py script is made aware of the project environment. Because of this it is critical the package _is not renamed._
* settings.py is where apps for the project are identified and installed under INSTALLED_APPS
* Fields can be queried using a field name combined with a lookup that is identified by a double underscore character:
    * title__exact='The exact title'
    * text__contains='decoration'
