#!/bin/bash

HOSTS=(
    linode2
    linode
    adm
    edyta
)

for host in ${HOSTS[*]}; do
    echo "syncing ${host}"
    rsync -av --chown=root:logcheck ignore.d.server/ root@${host}:/etc/logcheck/ignore.d.server
done

# rsync -av --chown=root:logcheck ignore.d.server/ root@linode2:/etc/logcheck/ignore.d.server
# rsync -av --chown=root:logcheck ignore.d.server/ root@adm:/etc/logcheck/ignore.d.server
# rsync -av --chown=root:logcheck ignore.d.server/ root@edyta.org.pl:/etc/logcheck/ignore.d.server
