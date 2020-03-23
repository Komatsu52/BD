USE mieicare;

SET SQL_SAFE_UPDATES = 0;
SET GLOBAL log_bin_trust_function_creators = 1;

-- Determina o id do teste com uma dada designacao
DELIMITER $$
CREATE FUNCTION mieicare.escolheTeste(des VARCHAR(45)) RETURNS INT
	BEGIN
		DECLARE resultado INT;
        
        SELECT idTesteClinico INTO resultado FROM TesteClinico
        WHERE designacao = des;
        
        return resultado;
END $$

-- Determina o preco do teste com uma dada designacao
DELIMITER $$
CREATE FUNCTION mieicare.precoTeste(des VARCHAR(45)) RETURNS FLOAT
	BEGIN
		DECLARE resultado FLOAT;
        
        SELECT preco INTO resultado FROM TesteClinico
        WHERE designacao = des;
        
        return resultado;
END $$

-- Calcula o valor total faturado por uma clinica
DELIMITER $$
CREATE FUNCTION mieicare.faturacaoClinica(idC INT) RETURNS FLOAT 
	BEGIN
		DECLARE resultado FLOAT;
        
        SELECT SUM(TC.preco) INTO resultado FROM TCRealizado AS TCR
			INNER JOIN TesteClinico AS TC
            ON TCR.TesteClinico_idTesteClinico = TC.idTesteClinico
            WHERE TCR.Clinica_idClinica = idC;
            
        RETURN resultado;
END $$

USE mieicare;

SET SQL_SAFE_UPDATES = 0;
SET GLOBAL log_bin_trust_function_creators = 1;

-- Calcula o valor total faturado por todas as clinicas
DELIMITER $$
CREATE FUNCTION mieicare.faturacaoTotal() RETURNS FLOAT 
	BEGIN
		DECLARE resultado FLOAT;
        
        SELECT SUM(TC.preco) INTO resultado FROM TCRealizado AS TCR
			INNER JOIN TesteClinico AS TC
            ON TCR.TesteClinico_idTesteClinico = TC.idTesteClinico;
            
        RETURN resultado;
END $$