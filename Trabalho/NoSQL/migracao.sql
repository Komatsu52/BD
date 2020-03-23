USE mieicare;

SELECT * FROM Atleta AS A
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/atleta.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM Clinica AS C
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clinica.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM CodigoPostal AS CP
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/codigopostal.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM Contacto AS C
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/contacto.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM Equipamento AS E
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/equipamento.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM EquipamentoDisponivel AS ED
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/equipamentodisponivel.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM EquipamentoNecessario AS EN
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/equipamentonecessario.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM EquipamentoUtilizado AS EU
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/equipamentoutilizado.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM Medico AS M
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/medico.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM Modalidade AS Mo
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/modalidade.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM TCAgendado AS TCA
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tcagendado.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM TCRealizado AS TCR
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tcrealizado.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';

SELECT * FROM TesteClinico AS TC
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/testeclinico.csv'
FIELDS ENCLOSED BY '"' TERMINATED BY ',' ESCAPED BY ''
LINES TERMINATED BY '\r\n';