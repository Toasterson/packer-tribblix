#!/usr/bin/env bash

echo "==> Enabling SSH"
sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config
svcadm enable ssh

