#!/bin/bash

rsync -av --delete-after ignore.d.server ignore.d.workstation violations.ignore.d root@linode:/etc/logcheck/
rsync -av --delete-after ignore.d.server ignore.d.workstation violations.ignore.d root@adm:/etc/logcheck/
rsync -av --delete-after ignore.d.server ignore.d.workstation violations.ignore.d root@edyta.org.pl:/etc/logcheck/
