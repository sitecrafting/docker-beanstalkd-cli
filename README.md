# docker-beanstalkd-cli

Run [beanstalkd-cli](https://github.com/schickling/beanstalkd-cli) on Docker

## Basic Usage

```
docker run -it sitecrafting/beanstalkd-cli beanstalkd-cli put 'Hello, Beanstalk!'
```

## With Dockerized beanstalkd

```
docker run -d -p 11300:11300 --name beanstalkd schickling/beanstalkd
docker run -it --link beanstalkd:beanstalkd sitecrafting/beanstalkd-cli \
beanstalkd-cli --host=beanstalkd put 'Hello, Beanstalk!'
```

This is just to demonstrate that linked hosts are available to the `beanstalkd-cli` binary running inside the container. Of course, this is just standard Docker stuff. You can inject any services you want and specify them in the `--host` CLI option.

## Acknowledgements

Thanks to Charles Duffy on Stack Overflow for the Dockerfile, from his helpful [answer](https://stackoverflow.com/questions/47600076/elf-not-found-and-syntax-error-unexepected-in-docker-container) and comments.

## LICENSE

Creative Commons Attribution-ShareAlike 2.5 Generic ([CC CY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/))

