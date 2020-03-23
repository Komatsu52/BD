CREATE VIEW Medico_detalhado AS 
SELECT M.email AS Email, M.nome AS Nome, M.nºCC AS CC, M.cedula AS Cédula, 
	   M.ddn AS DataNascimento, M.genero AS Género, M.rua AS Rua, 
	   M.CodigoPostal_codigoPostal AS CódigoPostal, M.contacto AS Contacto, C.nome AS Clínica 
FROM Medico AS M
	INNER JOIN Clinica AS C
    ON M.Clinica_idClinica = C.idClinica
ORDER BY M.nome