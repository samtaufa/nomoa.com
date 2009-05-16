# phpnuke_mysql_create.sql 
# derived from the horde/scripts/database/mysql_create.sql
#
# You can simply direct this file to mysql at STDIN:
#  mysql --user username --password --host host < phpnuke_mysql_create.sql

CONNECT mysql;

INSERT INTO user ( host, user, password )
   VALUES (
      'localhost',
      'QSCuser',
      password('QSCspat')
   );

INSERT INTO db (
      host, db, user,
         Select_priv, Insert_priv, Update_priv, Delete_priv,
         Create_priv, Drop_priv )
      VALUES (
      'localhost',
      'nukeQSC',
      'QSCuser',
      'Y', 'Y', 'Y', 'Y',
      'Y', 'Y'
        );

CREATE DATABASE nukeQSC;

FLUSH PRIVILEGES;

# done!

