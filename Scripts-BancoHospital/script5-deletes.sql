-- deletes tdadospessoa_has_talergia

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_talergia`
WHERE tdadospessoa_bdidPessoa = 1 AND talergia_bdidAlergia = 1;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_talergia`
WHERE tdadospessoa_bdidPessoa = 1 AND talergia_bdidAlergia = 2;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_talergia`
WHERE tdadospessoa_bdidPessoa = 1 AND talergia_bdidAlergia = 3;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_talergia`
WHERE tdadospessoa_bdidPessoa = 1 AND talergia_bdidAlergia = 4;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_talergia`
WHERE tdadospessoa_bdidPessoa = 1 AND talergia_bdidAlergia = 5;

-- deletes talergia

DELETE FROM `banco_sistema_hospital`.`talergia`
WHERE bdidAlergia = 1;

DELETE FROM `banco_sistema_hospital`.`talergia`
WHERE bdidAlergia = 2;

DELETE FROM `banco_sistema_hospital`.`talergia`
WHERE bdidAlergia = 3;

DELETE FROM `banco_sistema_hospital`.`talergia`
WHERE bdidAlergia = 4;

DELETE FROM `banco_sistema_hospital`.`talergia`
WHERE bdidAlergia = 5;

-- deletes tdadospessoa_has_tdoenca

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tdoenca`
WHERE tdadospessoa_bdidPessoa = 1 AND tdoenca_idDoenca = 1;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tdoenca`
WHERE tdadospessoa_bdidPessoa = 1 AND tdoenca_idDoenca = 2;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tdoenca`
WHERE tdadospessoa_bdidPessoa = 1 AND tdoenca_idDoenca = 3;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tdoenca`
WHERE tdadospessoa_bdidPessoa = 1 AND tdoenca_idDoenca = 4;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tdoenca`
WHERE tdadospessoa_bdidPessoa = 1 AND tdoenca_idDoenca = 5;

-- deletes tdoenca

DELETE FROM `banco_sistema_hospital`.`tdoenca`
WHERE idDoenca = 1;

DELETE FROM `banco_sistema_hospital`.`tdoenca`
WHERE idDoenca = 2;

DELETE FROM `banco_sistema_hospital`.`tdoenca`
WHERE idDoenca = 3;

DELETE FROM `banco_sistema_hospital`.`tdoenca`
WHERE idDoenca = 4;

DELETE FROM `banco_sistema_hospital`.`tdoenca`
WHERE idDoenca = 5;

-- deletes tdadospessoa_has_tplanosaude

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tplanosaude`
WHERE tdadospessoa_bdidPessoa = 1 AND tplanosaude_bdidPlanoSaude = 1;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tplanosaude`
WHERE tdadospessoa_bdidPessoa = 1 AND tplanosaude_bdidPlanoSaude = 2;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tplanosaude`
WHERE tdadospessoa_bdidPessoa = 1 AND tplanosaude_bdidPlanoSaude = 3;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tplanosaude`
WHERE tdadospessoa_bdidPessoa = 1 AND tplanosaude_bdidPlanoSaude = 4;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa_has_tplanosaude`
WHERE tdadospessoa_bdidPessoa = 1 AND tplanosaude_bdidPlanoSaude = 5;

-- deletes tplanosaude

DELETE FROM `banco_sistema_hospital`.`tplanosaude`
WHERE bdidPlanoSaude = 1;

DELETE FROM `banco_sistema_hospital`.`tplanosaude`
WHERE bdidPlanoSaude = 2;

DELETE FROM `banco_sistema_hospital`.`tplanosaude`
WHERE bdidPlanoSaude = 3;

DELETE FROM `banco_sistema_hospital`.`tplanosaude`
WHERE bdidPlanoSaude = 4;

DELETE FROM `banco_sistema_hospital`.`tplanosaude`
WHERE bdidPlanoSaude = 5;

-- deletes tdadospessoa

DELETE FROM `banco_sistema_hospital`.`tdadospessoa`
WHERE bdidPessoa = 3;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa`
WHERE bdidPessoa = 4;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa`
WHERE bdidPessoa = 5;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa`
WHERE bdidPessoa = 6;

DELETE FROM `banco_sistema_hospital`.`tdadospessoa`
WHERE bdidPessoa = 7;

-- deletes tendereco

DELETE FROM `banco_sistema_hospital`.`tendereco`
WHERE bdCep = 89046632;

DELETE FROM `banco_sistema_hospital`.`tendereco`
WHERE bdCep = 89046633;

DELETE FROM `banco_sistema_hospital`.`tendereco`
WHERE bdCep = 89046634;

DELETE FROM `banco_sistema_hospital`.`tendereco`
WHERE bdCep = 89046635;

DELETE FROM `banco_sistema_hospital`.`tendereco`
WHERE bdCep = 89046636;

-- deletes tcontatoseguranca

DELETE FROM `banco_sistema_hospital`.`tcontatoseguranca`
WHERE bdidContatoSeguranca = 4;

DELETE FROM `banco_sistema_hospital`.`tcontatoseguranca`
WHERE bdidContatoSeguranca = 5;

DELETE FROM `banco_sistema_hospital`.`tcontatoseguranca`
WHERE bdidContatoSeguranca = 6;

DELETE FROM `banco_sistema_hospital`.`tcontatoseguranca`
WHERE bdidContatoSeguranca = 7;

DELETE FROM `banco_sistema_hospital`.`tcontatoseguranca`
WHERE bdidContatoSeguranca = 8;