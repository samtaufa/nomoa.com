# phpnuke_mysql_create.sql 
# derived from the horde/scripts/database/mysql_create.sql
#
# You can simply direct this file to mysql at STDIN:
#  mysql --user username --password --host host < phpnuke_mysql_create.sql

CONNECT mysql;

INSERT INTO user ( host, user, password )
   VALUES (
      'localhost',
      'php_user',
      password('php_password')
   );

INSERT INTO db (
      host, db, user,
         Select_priv, Insert_priv, Update_priv, Delete_priv,
         Create_priv, Drop_priv )
      VALUES (
      'localhost',
      'nuke',
      'php_user',
      'Y', 'Y', 'Y', 'Y',
      'Y', 'Y'
        );

CREATE DATABASE nuke;

FLUSH PRIVILEGES;

# done!

