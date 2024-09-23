ls -la
#!/bin/bash
var1=$1
echo $var1

#ввод расширения файла

echo "Введите формат файла"
read f
result=$(find . -wholename "*.$f")

#поиск файла по введённому расширению и его копирование в новую папку

if [[ -z $result ]]; then
echo "Файл с данным расширением не найден"
else
mkdir ~/only_$f && cp $result only_$f
fi