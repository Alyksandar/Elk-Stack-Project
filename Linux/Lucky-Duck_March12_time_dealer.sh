#!/bin/bash

echo "March 12"

awk '/0[58].+ AM|(0[28]|11).+ PM/ {print $1,$2,$3,$4}' March_12_roulette_schedule

