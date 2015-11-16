build-in-jenkins-slave
======================

This subproject of [easy-build](https://github.com/gmacario/easy-build)
extends the easy-build base image to implement a [Jenkins](http://jenkins-ci.org/) slave node.

See <https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds> to learn
about the architecture of Jenkins distributed builds.

### Building the Docker image

    $ docker build -t gmacario/build-in-jenkins-slave .

### Running the slave as a Docker container

    $ docker run [docker-run-opts] \
      gmacario/build-in-jenkins-slave jenkins-slave \
      -url $JENKINS_SERVER_URL \
      $SECRET $SLAVE_NAME

Example:

    $ docker run -d --name my-slave-01 -u jenkins \
      gmacario/build-in-jenkins-slave jenkins-slave \
      -url http://mv-linux-powerhorse.solarma.it:9080/ \
      mysecret my-slave-01

<!-- EOF -->