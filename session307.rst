session307
-------------
Threading, multiprocessing, and profiling

*Threading*

Multiprocessing in python uses the multiprocessing and sys.threading module.

*threading*

    :threading.start_new_thread(): fire up new thread
    :threading.exit_thred(): exit thread

Threading issues:
* Race condition
* Deadlocks
* Threads stepping on each other

**Semaphores**

    Limited number of locks available that can be checked out and returned as threads are opened and released.

    Think of it as flags at a street crossing. Just forms a bucket for flags to be checked in and out of on one side of the street. No flags on one side? You've got to wait.

**Multiprocessing**

*modules*

    :Que: creates a que for work to be performed, stack requests up on one end the remain in order
    :Lock: same as with threading
    :Pipe: pass work between proceses
    :Pool: allows farming of work, allows execution which que does not

