SELECT M.nome, COUNT(*) AS TestesRealizados FROM TCRealizado AS TCR
	INNER JOIN Medico as M
    ON TCR.Medico_idMedico = M.idMedico
    INNER JOIN TesteClinico AS T
    ON TCR.TesteClinico_idTesteClinico = T.idTesteClinico
WHERE T.designacao = 'Urina' AND (TIMESTAMPDIFF(YEAR, M.ddn, CURDATE()) BETWEEN 45 AND 60)
GROUP BY M.nome
ORDER BY M.nome