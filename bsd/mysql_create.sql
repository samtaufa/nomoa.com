# mysql_create.sql 
# derived from the horde/scripts/database/mysql_create.sql
#
# You can simply direct this file to mysql as STDIN:
# > mysql (user/pass/host args) < mysql_create.sql

CONNECT mysql;

INSERT INTO user ( host, user, password )
   VALUES (
      'localhost',
      'twig_user',
      password('twig_password')
   );

INSERT INTO db (
      host, db, user,
         Select_priv, Insert_priv, Update_priv, Delete_priv,
         Create_priv, Drop_priv )
      VALUES (
      'localhost',
      'twig_db',
      'twig_user',
      'Y', 'Y', 'Y', 'Y',
      'Y', 'Y'
        );

CREATE DATABASE twig_db;
CONNECT twig_db;

FLUSH PRIVILEGES;

# done!
