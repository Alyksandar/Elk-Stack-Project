#!/bin/bash

if [ $4 = roulette ]
then
 grep $2 $1_Dealer_schedule | grep $3 | awk -F" " '{print $1, $2, $5, $6}' 

elif [ $4 = blackjack ]
then
 grep $2 $1_Dealer_schedule | grep $3 | awk -F" " '{print $1, $2, $3, $4}'

elif [ $4 = texas ]
then
 grep $2 $1_Dealer_schedule | grep $3 | awk -F" " '{print $1, $2, $7, $8}'
fi


