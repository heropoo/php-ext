#!/bin/sh

# generate host keys if not present
ssh-keygen -A

# check wether a random root-password is provided
if [ ! -z ${ROOT_PASSWORD} ] && [ "${ROOT_PASSWORD}" != "123456" ]; then
    echo "root:${ROOT_PASSWORD}" | chpasswd
fi

mkdir -p /run/sshd

# do not detach (-D), log to stderr (-e), passthrough other arguments
exec /usr/sbin/sshd -D -e "$@"
