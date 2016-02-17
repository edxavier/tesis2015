
#####Instalacion de Postgres

```
sudo apt-get install libpq-dev python-dev
sudo apt-get install postgresql
sudo service postgresql status
sudo passwd postgres
pip install psycopg2
```

#####Agregar usuario
```console
su - postgres
createuser sgimuser
createdb sgimdb
psql sgimdb
ALTER USER sgimuser with password 'stecnica';
```
#####Correr por primera vez
```./manage.py migrate```


Capturas de pantalla
=======

####Login
![Listado de hosts](http://i.imgur.com/ZDFjlQY.png)
####Datos de usuario
![Datos de usuario](http://i.imgur.com/U8TWKrq.png)
####Historial de caraga de procesado
![Historial de caraga de procesador](http://i.imgur.com/qcNBeYc.png)

####Datos del host
![enter image description here](http://i.imgur.com/ut7LnVn.png)

####Listado de hosts
![Listado de hosts](http://i.imgur.com/8dxOV9v.png)
