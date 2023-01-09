#!/bin/bash
shopt -s nullglob
sum=0
for a in {1..100..1}
do
	sum=$sum+$a
done
echo -n "If you want answer press [enter]"
read line
echo $((sum))
