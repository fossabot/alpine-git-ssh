FROM alpine

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

RUN ["chmod", "+x", "/init-git.sh"]
RUN ["chmod", "+x", "/init-ssh.sh"]

ENTRYPOINT ["/init-ssh.sh"]
