#!/bin/bash

# all packages are installed as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# default params
MAJOR="8.6.0"
MINOR="592E"
ARCH="amd64"

# download
curl -O https://packages.diladele.com/websafety-ui/$MAJOR.$MINOR/$ARCH/release/redhat9/websafety-ui-${MAJOR}-${MINOR}.x86_64.rpm

# install
dnf -y install websafety-ui-${MAJOR}-${MINOR}.x86_64.rpm
