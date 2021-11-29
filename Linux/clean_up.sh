#!/bin/bash

rm /tmp/* -r
rm /var/tmp/* -r
apt clean -y
rm ~/.cache/thumbnails/* -r
