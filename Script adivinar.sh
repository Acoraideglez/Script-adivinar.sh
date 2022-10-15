#!/bin/bash
aleatorio=$(( $RANDOM % 100 + 1 ))
contado=1
while :
do
	read -p "Introduce un numero entre 1 y 100; " numero
	if [ "$numero" -ne "$aleatorio" ]
	then
		contador=$((contador+1))
		echo "Fallaste"
		if [ "$numero" -gt "$aleatorio" ]
		then
			echo "el numero es menor al introducido"
		else
			echo "el numero es mayor al introducido"
		fi
	else
		figlet ganaste
		echo "numero de intentos; $contador"
		break
	fi
done
