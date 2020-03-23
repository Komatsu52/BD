SELECT COUNT(idTCAgendado) AS ConsultasAgendadas
FROM TCAgendado AS TCA
	INNER JOIN Medico AS M
	ON Medico_idMedico = '15'
    WHERE TCA.data BETWEEN '2020-07-25 16:00:00' AND '2020-07-25 17:00:00' 