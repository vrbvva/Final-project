#!/bin/bash
var1=$1
echo $var1

#ввод расширения файла

echo "Введите формат файла"
read var1
result=$(find . -wholename "*.$var1")

#поиск файла по введённому расширению и его копирование в новую папку

if [[ -z $result ]]; then
echo "Файл с данным расширением не найден"
else
mkdir ./only_$var1 && cp $result ./only_$var1
fi