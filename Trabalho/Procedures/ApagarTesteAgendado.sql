-- Transação que apaga o agendamento de um teste
DELIMITER $$
CREATE PROCEDURE apaga_teste_agendado (IN idTCA INT)

BEGIN 
	DECLARE Erro BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET Erro = 1;
    START TRANSACTION;
    
-- insercao do teste
DELETE FROM TCAgendado WHERE idTCAgendado = idTCA;

IF Erro
THEN ROLLBACK;
ELSE COMMIT;
END IF;
END $$