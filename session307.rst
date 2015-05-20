-------------
session307
-------------
Threading, multiprocessing, and profiling

============
Threading
============

Threads are very lightweight, compared to processes, which require more resources to spin up and run. There are a lot of analogous methods between the two modules though.

Multiprocessing in python uses the multiprocessing and sys.threading module.

*to be extra confusing there is both a threading module and a thread module: they are not the same*

:threading.Thread: control class for threads
:thread.start_new_thread(): fire up new thread
:thread.exit_thread(): exit thread

.. code-block:: python
    
    from multiprocessing.pool import Threading
    # this was confusing ...

Threading issues:

* Race condition
* Deadlocks
* Threads stepping on each other

**Semaphores**

Limited number of locks available that can be checked out and returned as threads are opened and released.

Think of it as flags at a street crossing. Just forms a bucket for flags to be checked in and out of on one side of the street. No flags on one side? You've got to wait.

=================
Multiprocessing
=================

*modules*

:Que: creates a que for work to be performed, stack requests up on one end the remain in order
:Lock: same as with threading
:Pipe: pass work between proceses
:Pool: allows farming of work, allows execution which que does not

The best use for threading and multiprocessing occurrs when we are performing I/O work that requires some amount of processing of each block of data.

*coroutines*

coroutines are even more lightweight than threads, but allow for preemptive multitasking

requires the user to set up more of the backend plumbing though

coroutines can be constructed using *yield* to create a generator that gives up values, values can be pushed back in using *send* which makes it a coroutine

**Libraries of interest**

* greenlet
* eventlet
* gevent
* asyncio (python 3.4+ module)

========================
Distributed Programming
========================

Pushing processes up to the network.

* MPI
* Pyro
* Celery

Celery can be installed with pip, but will require some sort of communication channel -- for example RabbitMQ 

Celery can connect to RabbitMQ to set up processes that are waiting for input. Once this is running you can start shipping requests to Rabbit.




