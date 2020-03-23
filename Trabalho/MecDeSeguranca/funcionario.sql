CREATE USER 'clinica'@'localhost'
	identified BY 'clinicapassword';

GRANT SELECT ON mieicare.TesteClinico to 'clinica'@'localhost';
GRANT SELECT ON mieicare.Atleta to 'clinica'@'localhost';
GRANT SELECT ON mieicare.Medico to 'clinica'@'localhost';
GRANT SELECT ON mieicare.TCAgendado to 'clinica'@'localhost';
GRANT SELECT ON mieicare.TCRealizado to 'clinica'@'localhost';

REVOKE DROP, CREATE, DELETE, UPDATE, INSERT
ON mieicare.TestesClinicos
FROM 'clinica'@'localhost';

REVOKE DROP, CREATE, DELETE, UPDATE, INSERT
ON mieicare.Atleta
FROM 'clinica'@'localhost';

REVOKE DROP, CREATE, DELETE, UPDATE, INSERT
ON mieicare.Medico
FROM 'clinica'@'localhost';

REVOKE DROP, CREATE, DELETE, UPDATE, INSERT
ON mieicare.TCAgendado
FROM 'clinica'@'localhost';

REVOKE DROP, CREATE, DELETE, UPDATE, INSERT
ON mieicare.TCRealizado
FROM 'clinica'@'localhost';