##Ver en que carpeta en local estamos 
pwd
##Listar carpeta en local
ls
#crear una ruta donde guardaremos nuestra data 
mkdir data
#validamos que exista nuestra carpeta data
ls
#Movernos a la carpeta data que creamos 
cd data

##Obtener archivo de una ruta de web en local
wget https://raw.githubusercontent.com/futurexskill/bigdata/master/retailstore.csv
##Validar la subida correcta del archivo en la ruta local
ls 
#Creamos la carpeta alexis en hdfs
hadoop fs -mkdir /user/alexis
#Creamos la carpeta data en hdfs
hadoop fs -mkdir /user/alexis/data
#Subir el archivo  cargado en local a nuestra ruta creada /user/alexis/data
hadoop fs -put retailstore.csv /user/alexis/data
#Validar que el archivo se haya subido en la ruta
hadoop fs -ls /user/alexis/data
# Eliminamos el archivo de la ruta local
rm retailstore.csv
# Con el comnado get obtendremos el archivo de hadoop  a nuestra ruta que indiquemos (/home/user/data)
hadoop fs -get /user/alexis/data/retailstore.csv /home/user/data
