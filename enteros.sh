#Guzman Espinosa
while :
do
	echo
	echo "**********************************************************************"
	echo "*    Introduzca una de las siguientes opciones                       *"
	echo "*                                                                    *"
	echo "*    1) Suma de los N primeros números naturales                     *"
	echo "*    2) Suma de los N primeros números naturales pares               *"
	echo "*    3) Listar las N primeras líneas de un archivo en un directorio  *"
	echo "*    4) Fin                                                          *"
	echo "**********************************************************************"
	echo
	echo "Opción: "
	read OPTION
	echo
	case $OPTION in
		1)
			echo "N: "
			read N
			echo
			SUM=0
			for (( i=1; i<=N; i++ ))
			do
				let SUM=SUM+i;
			done
			echo "La suma da $SUM"
			;;
		2)
			echo "N: "
			read N
			echo
			SUM=0
			for (( i=1; i<=N; i++ ))
			do
				let SUM=SUM+i*2;
			done
			echo "La suma da $SUM"
			;;
		3)	
			echo "N: "
			read N
			echo "Digite la ubicación y nombre de archivo: "
			read LOCATION
			echo
			head -n $N $LOCATION
			;;
		4)
			echo "Fin del programa"
			break
			;;
	esac
done
	
