#!/bin/bash

echo "March 10"

awk '/0[58].+ AM|(0[28]|11).+ PM/ {print $1,$2,$3,$4}' March_10_roulette_schedule
