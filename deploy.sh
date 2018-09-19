#!/bin/bash

rsync -av --chown=root:logcheck ignore.d.server/ root@linode:/etc/logcheck/ignore.d.server
rsync -av --chown=root:logcheck ignore.d.server/ root@linode2:/etc/logcheck/ignore.d.server
rsync -av --chown=root:logcheck ignore.d.server/ root@adm:/etc/logcheck/ignore.d.server
rsync -av --chown=root:logcheck ignore.d.server/ root@edyta.org.pl:/etc/logcheck/ignore.d.server
