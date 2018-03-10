### SESSION 1 -- WEB FRAMEWORKS

Use virtualenv! Don't install zillions of packages in your main python library

We will be downloading and installing web frameworks and other packages all over the damn place.

For every project we start, it should start with a virtual env.

    Create virtualenv <name>:

*virtualenv demoenv*  
    * create new dir w/new excecutable in /Scripts
    * clones python from system python including libraries
    * setuptools, easy_install, pip all installed
    create whitelists for allowing global libraries to be passed from global * to virtual pythons

Activate virtualenv using the source command:
source demoenv/bin/activate

(source works in both cmd and bashprompt)

Once the virtualenv is activated it takes over the system python, any future installation of a new package or other library will go into the active virtualenv

*Model View Controller (MVC)*  
_Model_ -- component represents the data that comprises the system and the logic used to manipulate that data

_View_ -- this component can be any representation of the data to the outside world

_Controller_ -- acts as switchyard between the model and the view

Our web frameworks of choice are Pyramid and Django -- these are easy frameworks to create websites using python

*Terms:*  
model --> model  
controller -- called a view in python web frameworks  
view --> template or HTTP response in python web frameworks, the squirt of data that comes back from the server  

Hence MVC --> MVT in python web frameworks

Making a learning journal using pyramid web framework
    * create a working dir
    * add a virtual env
    * create scaffolding using boilerplate code

Drop into newly created directory
Run setup script with
    python setup.py develop

show file tree at bash prompt by piping in cmd //c tree <dir>  
add pyramid to list of allowed programs to serve local webpage  
bash xargs?  

read about pyramid configuration, read about ??

pserve development.ini --reload

"mechanize" python web scraping

*Persistence*  
How do we dump stuff from memory to a file? The most common are NoSQL and SQL

NoSQL does better storing stuff without relationships
SQL preserves the relationships -- of course

Object relational manager --> creates a layer of abstraction between the the user and the SQL. Our ORM will be SQLAlchemy
