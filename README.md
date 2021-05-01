# Zipping Python Dependecies
Shell script to zip python dependencies when uploading them to lambda.

You must have Docker installed in order to execute the script.

Uses python3.7. You can change for any other python version changing the docker image ```python:3.7-slim```
in ```build.sh```.

# Usage

Save your python dependencies in ```requirements.txt```.

Make ```build.sh``` an executable using:

```
chmod +x build.sh
```

Execute the script ```./build.sh```

Your dependencies will be save in the following folder: ```build/```.
