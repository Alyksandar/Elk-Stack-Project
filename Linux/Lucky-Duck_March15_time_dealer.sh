#!/bin/bash
echo "March 15"
awk '/0[58].+ AM|02.+ PM/ {print $1,$2,$3,$4}' March_15_roulette_schedule
