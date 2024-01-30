#!/bin/bash

rm transitions_wall.dat

touch transitions_wall.dat

for i in {01..20}
do
	tail -n 1 $i/time_wall >> transitions_wall.dat	
done	
