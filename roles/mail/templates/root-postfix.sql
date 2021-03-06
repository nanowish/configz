DROP DATABASE IF EXISTS postfix;
CREATE DATABASE postfix;
GRANT ALL PRIVILEGES ON postfix.* TO 'postfix'@'%' IDENTIFIED BY '{{ dbpassword.stdout }}';
GRANT SELECT ON postfix.* TO 'postfix'@'%' IDENTIFIED BY '{{ dbpassword.stdout }}';
FLUSH PRIVILEGES;
