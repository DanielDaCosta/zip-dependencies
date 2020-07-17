# zip-dependecies
Shell script to zip python packages for lambda using Docker.

You must have Docker installed in order to execute the script.

Uses python3.7.

# Usage

Save your python dependencies in ```requirements.txt```.

Make ```build.sh``` an executable using:

```
chmod +x build.sh
```

Execute the script ```./build.sh```

Your dependencies will be save in ```build/```.
