# Python for Everybody Toolbox

The python-for-everybody-toolbox repository makes it easy to create a Docker
container for use during the 
[Python for Everybody Specialization](https://www.coursera.org/specializations/python).

Download and install the [Docker](https://www.docker.com/) software for Apple
Mac OS X, GNU/Linux or Microsoft Windows following the
[instructions](http://docs.docker.com/linux/started/) at the website.

Retrieve the
[python-for-everybody-toolbox](https://github.com/gdhorne/python-for-everybody-toolbox)
build repository to create the container. Git, Python, SQLite, and SQLite Web
are installed as part of the image.

	$ git clone https://github.com/gdhorne/python-for-everybody-toolbox

For ease of instantiating an instance of the container image a script named
'container.sh' can be used to manage the entire lifecycle. For Microsoft Windows
users it is recommended that [Git Bash](https://git-for-windows.github.io/) be
installed instead of the standard [Git](https://git-scm.com) software because
it provides an *nix-like command line environment.

Create the container, optionally mapping a host file system share for storage.
The file system share name '/home/me/projects' is user selectable and host
file system dependent. If no local file system share is desired simply omit the
fourth argument '/home/me/projects'. The container instance name 'toolbox',
in these instructions, is user selectable at time of creation.

     $ ./container.sh create toolbox gdhorne/python-for-everybody-toolbox /home/me/projects  

*Apple Mac OS X: /Users/username/directory*
*GNU/Linux: /home/username/directory*
*Microsoft Windows: /c/Users/directory (allegedly)*

Verify the container 'toolbox' has been successfully created and is running

     $ ./container.sh status

Stop the container 'toolbox'.

	$ ./container.sh stop toolbox

Start the container 'toolbox'.

	$ ./container.sh start toolbox

To learn more about the container lifecycle management features supported by 'container.sh' type,

	$ ./container.sh --help


## Applications

After creating the container these applications are accessible within a web 
browser.

	Git:		Accessible via WeTTY

	Python:		Accessible via WeTTY

	SQLite Web:	http://127.0.0.1:8003

	WeTTY:		http://127.0.0.1:8002

				UserID: pythonista
				Password: python 

				To enable the terminal/console management utility 
				type 'screen' and press ENTER.


Alternatively, the python-for-everybody-toolbox image provides a traditional 
command line interface, without WeTTY, to some applications such as Git, 
Python, SQLite, and vim. For convenience the terminal/console management utility 
'screen' has been installed and starts automatically.

	$ ./container.sh attach toolbox

Press ENTER if the container's shell prompt does not appear. To exit the 
container and leave it running press CTRL+P, CTRL+Q; this is the preferred 
method. To exit the container and stop it type 'exit'.

Start the SQLite Web database browser by accessing the command line via WeTTY as indicated above and typing,

	$ sqlite_web.sh DATABASE_NAME
Replace DATABASE_NAME with the name of an existing SQLite database (database.sqlite). Access the database browser as indicated above.
