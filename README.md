# Docker image for SciTools Understand

This project aims to provide a simple Docker image to encapsulate and run a [Understand](https://scitools.com/features/) analysis through Docker.

### Run Understand

#### Run core checks
Assuming current directory contains the source code to analyze, simply run the following command:
```Dockerfile
docker run --rm -v ${PWD}:/src facthunder/understand:latest und create -languages c++ -db understand-database.udb
docker run --rm -v ${PWD}:/src facthunder/understand:latest und settings -AddMode Relative -db understand-database.udb
docker run --rm -v ${PWD}:/src facthunder/understand:latest und add -db understand-database.udb .
docker run --rm -v ${PWD}:/src facthunder/understand:latest und analyze -db understand-database.udb
docker run --rm -v ${PWD}:/src facthunder/understand:latest und codecheck -flattentree -db understand-database.udb UnderstandCodecheckConfiguration.ini .
```

### Versions matrix
Here is the versions matrix of the image:

|                            TAG                             |                                       UNDERSTAND VERSION                                           |                           BASE IMAGE                        |
|:----------------------------------------------------------:|:--------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------:|
|  [latest](https://hub.docker.com/r/facthunder/understand)  | [1029](http://builds.scitools.com/all_builds/b1004/Understand/Understand-5.1.1029-Linux-64bit.tgz) | [python:3.8.5-slim-buster](https://hub.docker.com/_/python) |
|   [1029](https://hub.docker.com/r/facthunder/understand)   | [1029](http://builds.scitools.com/all_builds/b1029/Understand/Understand-5.1.1029-Linux-64bit.tgz) | [python:3.8.5-slim-buster](https://hub.docker.com/_/python) |
|   [1004](https://hub.docker.com/r/facthunder/understand)   | [1004](http://builds.scitools.com/all_builds/b1004/Understand/Understand-5.1.1004-Linux-64bit.tgz) | [python:3.8.5-slim-buster](https://hub.docker.com/_/python) |

### How to contribute
If you experienced a problem with the plugin please open an issue. Inside this issue please explain us how to reproduce this issue and paste the log.

If you want to do a PR, please put inside of it the reason of this pull request. If this pull request fix an issue please insert the number of the issue or explain inside of the PR how to reproduce this issue.

### License
Copyright 2020 Facthunder.

Licensed under the [GNU General Public License, Version 3.0](https://www.gnu.org/licenses/gpl.txt)

