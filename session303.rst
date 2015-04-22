###Session 302
------
+ The call stack
+ Exceptions
+ Iterators
+ Debugging strategies


####The Call Stack
-----
+ Calling a function creates a frame and adds it to the stack. The frame holds data, objects, and names associated with the function.
+ As fuctions finish running they are popped back off and the next fuction is brought back to the foreground
+ Stack space has limits!

::
    frame = sys.getframe(num)



