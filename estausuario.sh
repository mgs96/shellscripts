#Guzman Espinosa
if [ $# != 1 ]; then
  echo "Este script solo acepta un parametro. Modo de uso: ./estausuario nombre"
else
  cat /etc/passwd | nawk -F":" -v name="$1" '{
      if ($1==name) {
        flag=1
        if($3<1000) {
          print "Usuario creado en el sistema"
        }
        else{
          print "Usuario no creado en el sistema"
        }
      }
  }
  END{
      if (flag==0)
      print "Este usuario no existe"
  }'

fi
