#!/bin/bash
#Autor: Dominik Walter

git init

cat ~/Useful/gitInitFile.txt > .gitignore

git add .gitignore pom.xml

git commit -m "Initial commit"
