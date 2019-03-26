#!/bin/bash
# Created by Yevgeniy Goncharov, https://sys-adm.in

# Envs
# ---------------------------------------------------\
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)


# Update engines
# ---------------------------------------------------\
/usr/sbin/greenbone-nvt-sync
/usr/sbin/greenbone-certdata-sync
/usr/sbin/greenbone-scapdata-sync

# Rebuild / Update
# ---------------------------------------------------\
/usr/sbin/openvasmd --rebuild --update --verbose --progress