
# Hello IIS Express!

This repository is created just for playing with IIS Express.

***

IIS Express is a lightweight, self-contained version of IIS optimized for developers.

1. Add this folder C:\Program Files (x86)\IIS Express\ or C:\Program Files\IIS Express\ (depends on version architecture you prefer) to your PATH environment variable if it's not there yet.

***

`iisexpress` to run the first website in the default configuration file. The default configuration is the IISExpress\config\applicationhost.config file that is located in the user's Documents folder. If there is no site defined in the configuration file it throws the Invalid Index error.

`iisexpress /site:<website>` to run the <website> defined in the default configuration file. If there is no such a site it throws an error.
