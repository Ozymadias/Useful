#!/bin/bash
#Autor: Dominik Walter
#Create .gitignore and fill it

for g in "*.class" ".idea/" ".classpath" ".project" "*.log" "*.jar" "target/"
do
echo -e $g >> .gitignore
done
>> .gitignore
