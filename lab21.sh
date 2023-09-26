#!/bin/bash

#Лабораторная работа №21. Вариант 4
#Выполнил студент группы М8О-104Б-22
#Тесля Данила Сергеевич

dir="/home/tesla-2002/labs/21laba"   
suff=".txt"                           
pref="renamed_"                           

cd "$dir" || exit 1

for file in *"$suff"; do

    if [ -e "$file" ]; then
        filename=$(basename "$file")
        filerename="$pref$filename"
        mv "$file" "$filerename"
        echo "Файл: $filename был переименован в : $filerename"
    fi

done
