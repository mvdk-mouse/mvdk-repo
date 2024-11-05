#!/bin/bash

get_size (){
        local path="$1"
        local size=$(du -hs "$path" 2>/dev/null | cut -f1)
        echo $size
        }

items=$(ls -A)
for item in $items; do
# В цикл добавляем переменную, используя созданную функцию
        size=$(get_size "$item")
# Выводим получившийся результат
        echo -e "$size\t$item"
done | sort -rh -k1,1
