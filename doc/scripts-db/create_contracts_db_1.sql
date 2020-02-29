-- This scrypt (create_contracts_db_1.sql) creates user darek.

CREATE USER darek IDENTIFIED BY password;
GRANT connect, resource TO darek;
ALTER USER darek QUOTA 10M on users;
connect darek/password;