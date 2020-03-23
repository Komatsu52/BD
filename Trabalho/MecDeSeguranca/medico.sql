CREATE USER 'medico'@'localhost'
	identified BY 'medicopassword';

GRANT SELECT ON mieicare.TesteClinico to 'medico'@'localhost';
GRANT SELECT, DELETE, UPDATE ON mieicare.Medico[idMedico_medico, email_medico, password_medico, nome_medico, nºCC_medico, cedula_medico, ddn_medico, genero_medico, rua_medico, CodigoPostal_idCodigoPostal_medico, contacto_medico, Clinica_idClinica_medico]
TO 'medico'@'localhost';
GRANT SELECT, INSERT, UPDATE ON mieicare.Medico to 'medico'@'localhost';

REVOKE DROP, CREATE, DELETE, UPDATE, INSERT
ON mieicare.TestesClinicos
FROM 'medico'@'localhost';

REVOKE DROP, CREATE
ON mieicare.Medico
FROM 'medico'@'localhost';