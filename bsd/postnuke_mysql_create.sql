# postnuke_mysql_create.sql 
#
# You can simply direct this file to mysql at STDIN:
# mysql --user username --password --host host < nuke_NOMOA.sql
# . username will need to have privileges to create a database and change mysql
# . root access is the simplest if you run your own server, otherwise you can modify
# . this script as you need and ask the ISP/Site Manager to configure your database
# . for you.
#============================================================================
# YOU WILL WANT TO CHANGE -
#
# NOMOA      -to- the username you wish to use (occurs TWICE) [16 character field]
# rogue_db   -to- the database name you wish to use. (occurs TWICE) [64 character field]
# password -to- the Password you wish to encrypt (occurs ONCE)[16 character field]
#============================================================================

 

CONNECT mysql; 

 

INSERT INTO user ( host, user, password )
  VALUES (
    'localhost',
    'NOMOA',
    password('password')
  );

 

INSERT INTO db (
    host, db, user,
    Select_priv, Insert_priv, Update_priv, Delete_priv,
    Create_priv, Drop_priv )
  VALUES (
    'localhost',
    'rogue_db',
    'NOMOA',
    'Y', 'Y', 'Y', 'Y',
    'Y', 'Y'
  );

 

CREATE DATABASE rogue_db;

FLUSH PRIVILEGES;

 

# done!
