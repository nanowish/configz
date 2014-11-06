CREATE DATABASE postfix;
GRANT ALL PRIVILEGES ON postfix.* TO 'postfix_admin'@'%' IDENTIFIED BY '{{ dbpassword.stdout.stdout }}';
GRANT SELECT ON postfix.* TO 'postfix'@'%' IDENTIFIED BY '{{ dbpassword.stdout.stdout }}';
FLUSH PRIVILEGES;