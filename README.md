
Instalacion de Postgres

sudo apt-get install libpq-dev python-dev
sudo apt-get install postgresql
sudo service postgresql status
sudo passwd postgres

pip install psycopg2

Agregar usuario

su - postgres
createuser sgimuser
createdb sgimdb
psql sgimdb
ALTER USER sgimuser with password 'stecnica';

Correr por primera vez
./manage.py migrate
