FROM ubuntu:16.04

# https://stackoverflow.com/questions/47600076/elf-not-found-and-syntax-error-unexepected-in-docker-container"
LABEL maintainer="Coby Tamayo <ctamayo@sitecrafting.com>" \
      license="CC BY-SA 2.5" \
      attribution="Charles Duffy / Stack Overflow"

# Install openssl, beanstalkd-cli
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://github.com/schickling/beanstalkd-cli/releases/download/0.3.0/beanstalkd-cli-linux.tar.gz && \
  tar -xvzf beanstalkd-cli-linux.tar.gz && \
  chmod +x beanstalkd-cli && \
  mv beanstalkd-cli /usr/local/bin/beanstalkd-cli && \
  rm beanstalkd-cli-linux.tar.gz

CMD ["/usr/local/bin/beanstalkd-cli"]

