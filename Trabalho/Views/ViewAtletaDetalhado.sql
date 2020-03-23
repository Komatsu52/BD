CREATE VIEW Atleta_detalhado AS 
SELECT A.email AS Email, A.nome AS Nome, A.nºCC AS CC, A.nif AS Nif, A.ddn AS DataNascimento, 
	   A.genero AS Género, A.rua AS Rua, A.CodigoPostal_codigoPostal AS CódigoPostal, 
	   A.equipa AS Equipa, A.contacto AS Contacto, M.nome AS Modalidade 
FROM Atleta AS A
	INNER JOIN Modalidade AS M
    ON A.Modalidade_idModalidade = M.idModalidade
ORDER BY A.nome