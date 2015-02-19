###Session 4
####Basics of Computer Networking  
Processes can communicate both inside a single machine and between multiple machines.

_TCP/IP -- transmission control protocol / internet protocol_  
The 'link' layer that deals with physical connections between machines. Packages data for physical transport.

**The TCP/IP Stack**

_Internet Layer_  
Deals with addressing and routing, where are we going and how do we get there. Still agnostic with regards to physical medium (radio, wire, pigeon).

There is no promise of reliability.

    _Addressing Systems_  
    * IPv4 internet protocol version 4 (going out of style, limited space)
    * IPv6 (future: a shit-butt-ton-of-addresses are available)

_Transport Layer_  
Transmission and reception of data, includes error correction, flow control, congestion management  
* TCP: transmission control protocol
* UDP: user datagram protocol

TCP makes sure that dropped packets are resent, there is a lot of back and forth between sender and recipient. UDP does not bother with this, it just fires off the packets and moves on.

Transport layers also establish the port, which is a way of addressing individual applications in a single host. The port is at the end of the address for both IPv4 and IPv6 separated from everything else by a colon.

Each application needs a port to keep data from getting confused.

_Application Layer_  
Data that is produced or consumed by an application. This is the layer that we will primarily be working at. 

Reads or writes data using a set of understood, well-defined protocols. This layer doesn't care about, or generally interact with lower layers. The only thing it needs is an IP:Port combination to dump data to.

A socket represents the IP:Port combination. The socket creates a transceiver that can send and or receive bytes at a given address.

####Python Sockets  
BSD sockets

```python
    import socket
    socket.getservbyname('ssh')
    socket.getservbyport(80)
    socket.gethostname()
    socket.gethostbyname(socket.gethostname())
    socket.gethostbyname_ex('google.com')

    foo=socket.socket()
    foo.family
    foo.type
    foo.proto

    def get_constants_26(prefix):
            return dict(
                (getattr(socket, n), n)
                for n in dir(socket)
                if n.startswith(prefix)
            )
    families = get_constants_26('AF_')
    get_constants_26('SOCK_')
    get_constants_26('IPPROTO_')

    # provides information about available connections on a given host
    socket.getaddrinfo('127.0.0.1', 80)
    """returns tuple of socket family, type, protocol, canonical name, address"""

    """communicating directly with a server"""
    import socket

    # sending a request
    streams = [info
        for info in socket.getaddrinfo('crisewing.com', 'http')
        if info[1] == socket.SOCK_STREAM]

    info = streams[0]
    cewing_socket = socket.socket(*info[:3])
    cewing_socket.connect(info[-1])
    msg = "GET / HTTP/1.1\r\n"
    msg += "Host: crisewing.com\r\n\r\n"
    cewing_socket.sendall(msg)

    # getting the response
    buffsize = 4096
    response = ''
    done = False
    while not done:
        msg_part = cewing_socket.recv(buffsize)
        if len(msg_part) < buffsize:
            done = True
            cewing_socket.close() # always close your sockets
        response += msg_part
    len(response)
```

####Server Side Operations
Always remember: an address is a tuple of IP and port

```python
address = ('127.0.0.1', 50000)
server_socket.bind(address)
server_socket.listen(1)

# accept incoming messages
connection, client_address = server_socket.accept() # this blocks until a client connects
connection.recv(16)

# send a response
connection.sendall("message received")

# clean up
connection.close()
```



