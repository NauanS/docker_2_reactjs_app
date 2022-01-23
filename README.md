# docker_2_reactjs_app
Infrastructure with docker for react.js applications

1. After cloning the infrastructure, run the fetchFiles.sh file.

2. Run the command below to start the application.

~~~shell
./startApplication.sh 1$ 2$ $3
~~~ 

Note that the command accepts 3 parameters, the first must be (dev), indicates the environment that will run the application, in this case the environment is development, this is the only mandatory parameter.
The variations for this parameter are::
1. (dev) for development environment;

2. (app) for approval environment;

3. (prod) for production environment;

The second parameter must be (--build), it will only be informed if you want to recompile the image.

The third parameter must be (-d), informed only when you want to run the environment in demon mode (not recommended for development environment).

The complete command looks like this::
~~~shell
./startApplication.sh dev --build -d
~~~