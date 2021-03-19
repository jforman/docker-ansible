FROM python:3-slim

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install -y --no-install-recommends openssh-client sshpass
	&& pip install pip --upgrade \
	&& pip install ansible \
	&& useradd -g users -m ansible

USER ansible
WORKDIR /home/ansible
RUN mkdir .ssh && echo "UserKnownHostsFile=/dev/null" > .ssh/config \
	&& echo "StrictHostKeyChecking=noknown_hosts" >> .ssh/config