camper: /project$ psql --username=freecodecamp --dbname=postgres
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> CREATE DATABASE salon;
CREATE DATABASE
postgres=> \q
camper: /project$ psql --username=freecodecamp --dbname=salon
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

salon=> CREATE TABLE customers (
salon(>     customer_id SERIAL PRIMARY KEY,
salon(>     name VARCHAR(50),
salon(>     phone VARCHAR(20) UNIQUE
salon(> );
CREATE TABLE
salon=> CREATE TABLE services (
salon(>     service_id SERIAL PRIMARY KEY,
salon(>     name VARCHAR(50)
salon(> );
CREATE TABLE
salon=> CREATE TABLE appointments (
salon(>     appointment_id SERIAL PRIMARY KEY,
salon(>     customer_id INT REFERENCES customers(customer_id),
salon(>     service_id INT REFERENCES services(service_id),
salon(>     time VARCHAR(20)
salon(> );
CREATE TABLE
salon=> INSERT INTO services (name) VALUES 
salon-> ('Haircut'),
salon-> ('Shave'),
salon-> ('Massage');
INSERT 0 3
salon=> \dt
              List of relations
 Schema |     Name     | Type  |    Owner     
--------+--------------+-------+--------------
 public | appointments | table | freecodecamp
 public | customers    | table | freecodecamp
 public | services     | table | freecodecamp
(3 rows)

salon=> \q
camper: /project$ touch salon.sh
camper: /project$ chmod +x salon.sh
camper: /project$ nano salon.sh
camper: /project$ ./salon.sh

Welcome to the Salon! How may I help you?

1) Haircut
2) Shave
3) Massage

Please select a service by entering the corresponding number:

ERROR:  syntax error at end of input
LINE 1: SELECT service_id FROM services WHERE service_id = 
                                                           ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage
pg_dump -cC --inserts -U freecodecamp salon > salon.sql
ERROR:  column "pg_dump" does not exist
LINE 1: ...ELECT service_id FROM services WHERE service_id = pg_dump -c...
                                                             ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage

ERROR:  syntax error at end of input
LINE 1: SELECT service_id FROM services WHERE service_id = 
                                                           ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage

ERROR:  syntax error at end of input
LINE 1: SELECT service_id FROM services WHERE service_id = 
                                                           ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage

ERROR:  syntax error at end of input
LINE 1: SELECT service_id FROM services WHERE service_id = 
                                                           ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage

ERROR:  syntax error at end of input
LINE 1: SELECT service_id FROM services WHERE service_id = 
                                                           ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage

ERROR:  syntax error at end of input
LINE 1: SELECT service_id FROM services WHERE service_id = 
                                                           ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage

ERROR:  syntax error at end of input
LINE 1: SELECT service_id FROM services WHERE service_id = 
                                                           ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage

ERROR:  syntax error at end of input
LINE 1: SELECT service_id FROM services WHERE service_id = 
                                                           ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage
pg_dump -cC --inserts -U freecodecamp salon > salon.sql
ERROR:  column "pg_dump" does not exist
LINE 1: ...ELECT service_id FROM services WHERE service_id = pg_dump -c...
                                                             ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage

ERROR:  syntax error at end of input
LINE 1: SELECT service_id FROM services WHERE service_id = 
                                                           ^

Invalid selection. Please choose again:
1) Haircut
2) Shave
3) Massage
