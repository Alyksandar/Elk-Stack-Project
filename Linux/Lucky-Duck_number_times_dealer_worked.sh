#!/bin/bash

echo "How many times the dealer worked when major losses occurred"

grep -w -i 'billy jones' Dealers_working_during_losses | wc -l

