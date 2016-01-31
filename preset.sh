#!/bin/sh
adduser --disabled-password --gecos "" ansible-user
mkdir -p /home/ansible-user/.ssh
chown ansible-user:ansible-user /home/ansible-user/.ssh
chmod 700 /home/ansible-user/.ssh
cat << EOF >/home/ansible-user/.ssh/authorized_keys
[put ansible-user keys]
EOF
chown ansible-user:ansible-user /home/ansible-user/.ssh/authorized_keys
chmod 600 /home/ansible-user/.ssh/authorized_keys
/bin/echo "ansible-user    ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
