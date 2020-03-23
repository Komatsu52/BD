CREATE USER 'atleta'@'localhost'
	identified BY 'atletapassword';

GRANT SELECT ON mieicare.TesteClinico to 'atleta'@'localhost';
GRANT SELECT, DELETE, UPDATE ON mieicare.Atleta[idAtleta_atleta, email_atleta, password_atleta, nome_atleta, nºCC_atleta, nif_atleta, ddn_atleta, genero_atleta, rua_atleta, CodigoPostal_idCodigoPostal_atleta, equipa_atleta, contacto_atleta, Modalidade_idModalidade_atleta]
TO 'atleta'@'localhost';
GRANT SELECT, INSERT, UPDATE ON mieicare.Atleta to 'atleta'@'localhost';

REVOKE DROP, CREATE, DELETE, UPDATE, INSERT
ON mieicare.TestesClinicos
FROM 'atleta'@'localhost';

REVOKE DROP, CREATE
ON mieicare.Atleta
FROM 'atleta'@'localhost';