#!/bin/bash

tar cvWf /var/backups/home.tar /home*
mv /var/backups/home.tar /var/backups/home.=$(date).tar
ls -lh /var/backups >> /var/backups/file_report.txt
free -h >> /var/backups/disk_report.txt
                                             