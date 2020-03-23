CREATE USER 'Administrador'@'localhost'
	identified by 'adminpassword';

GRANT SELECT, INSERT, DELETE, UPDATE ON *.* TO 'Administrador'@'localhost';

REVOKE DROP, CREATE ON *.* FROM 'Administrador'@'localhost';
