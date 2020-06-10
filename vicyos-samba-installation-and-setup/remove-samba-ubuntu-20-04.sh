#!/bin/bash

sudo apt-get remove --purge samba

#But, if you are having client problems, it would be more like:
sudo apt-get remove --purge smbclient libsmbclient
