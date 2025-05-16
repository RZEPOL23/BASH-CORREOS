#!/bin/bash

echo -e "\e[33mВⷡAͣS͛нⷩ CͨOͦRͬRͬEͤOͦS͛\e[0m"

echo -e "\e[1;33mGENERADOR DE CORREOS R.ZEPOL\e[0m"

echo "Ingrese la cantidad de correos a generar:"
read cantidad

simbolos=("." "_" "-" "")

for (( i=1; i<=$cantidad; i++ ))
do
    nombre=$(shuf -n1 nombres_latinos.txt)
    apellido=$(shuf -n1 apellidos_latinos.txt)
    numero=$(( RANDOM%100 + 1 ))
    simbolo=${simbolos[$(( RANDOM % ${#simbolos[@]} ))]}
    correo="${nombre}${simbolo}${apellido}${numero}@dominio.com"
    
    echo $correo >> /sdcard/correos_generados.txt
done

echo "Correos generados correctamente. Puedes encontrarlos en /sdcard/correos_generados.txt"