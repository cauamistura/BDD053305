-- Criação do Banco de Dados para sistema Hospitalar, da unidade curricular de Banco de Dados 01
-- Profª Bruna Russi
-- 30/11 - ESTUDO DE CASO 03 (FINAL) - BD
-- Cração do Banco

drop database `banco_sistema_hospital`;

CREATE SCHEMA IF NOT EXISTS `banco_sistema_hospital` DEFAULT CHARACTER SET utf8 ;
USE `banco_sistema_hospital`;

-- Tabela tcontatoseguranca
CREATE TABLE IF NOT EXISTS `banco_sistema_hospital`.`tcontatoseguranca` (
  `bdidContatoSeguranca` INT NOT NULL,
  `bdNomeContato` 		 VARCHAR(255) NULL,
  `bdCpfContato`     	 VARCHAR(18) NULL,
  `bdTelefoneContato` 	 VARCHAR(20) NULL,
  PRIMARY KEY (`bdidContatoSeguranca`),
  UNIQUE INDEX `bdidContatoSeguranca_UNIQUE` (`bdidContatoSeguranca` ASC) 
);

-- Tabela tendereco
CREATE TABLE IF NOT EXISTS `banco_sistema_hospital`.`tendereco` (
  `bdCep` INT NOT NULL,
  `bdCidade` VARCHAR(100) NULL,
  `bdBairro` VARCHAR(45) NULL,
  PRIMARY KEY (`bdCep`)
);

-- Tabela tdadospessoa
CREATE TABLE IF NOT EXISTS `banco_sistema_hospital`.`tdadospessoa` (
  `bdidPessoa` INT NOT NULL,
  `bdNome` VARCHAR(255) NULL,
  `bdCpf` VARCHAR(18) NULL,
  `tendereco_bdCep` INT NOT NULL,
  `tcontatoseguranca_bdidContatoSeguranca` INT NOT NULL,
  PRIMARY KEY (`bdidPessoa`, `tcontatoseguranca_bdidContatoSeguranca`),

    FOREIGN KEY (`tcontatoseguranca_bdidContatoSeguranca`)
    REFERENCES `banco_sistema_hospital`.`tcontatoseguranca` (`bdidContatoSeguranca`),

    FOREIGN KEY (`tendereco_bdCep`)
    REFERENCES `banco_sistema_hospital`.`tendereco` (`bdCep`)
);

-- Tabela tplanosaude
CREATE TABLE IF NOT EXISTS `banco_sistema_hospital`.`tplanosaude` (
  `bdidPlanoSaude` INT NOT NULL,
  `bdNomePlano` VARCHAR(100) NULL,
  `bdCobertura` VARCHAR(50) NULL,
  PRIMARY KEY (`bdidPlanoSaude`),
  UNIQUE INDEX `bdidPlanoSaude_UNIQUE` (`bdidPlanoSaude` ASC) 
);

-- Tabela tdadospessoa_has_tplanosaude
CREATE TABLE IF NOT EXISTS `banco_sistema_hospital`.`tdadospessoa_has_tplanosaude` (
  `tdadospessoa_bdidPessoa` INT NOT NULL,
  `tplanosaude_bdidPlanoSaude` INT NOT NULL,
  PRIMARY KEY (`tdadospessoa_bdidPessoa`, `tplanosaude_bdidPlanoSaude`),

    FOREIGN KEY (`tdadospessoa_bdidPessoa`)
    REFERENCES `banco_sistema_hospital`.`tdadospessoa` (`bdidPessoa`),

    FOREIGN KEY (`tplanosaude_bdidPlanoSaude`)
    REFERENCES `banco_sistema_hospital`.`tplanosaude` (`bdidPlanoSaude`)
);

-- Tabela tdoencas
CREATE TABLE IF NOT EXISTS `banco_sistema_hospital`.`tdoenca` (
  `idDoenca` INT NOT NULL,
  `bdComobirdade` VARCHAR(50) NULL,
  PRIMARY KEY (`idDoenca`)
);

-- Tabela tdadospessoa_has_tdoenca
CREATE TABLE IF NOT EXISTS `banco_sistema_hospital`.`tdadospessoa_has_tdoenca` (
  `tdadospessoa_bdidPessoa` INT NOT NULL,
  `tdoenca_idDoenca` INT NOT NULL,
  `bdDataAtendimento` DATE NULL,
  `bdCurado` TINYINT NULL,
  PRIMARY KEY (`tdadospessoa_bdidPessoa`, `tdoenca_idDoenca`),

    FOREIGN KEY (`tdadospessoa_bdidPessoa`)
    REFERENCES `banco_sistema_hospital`.`tdadospessoa` (`bdidPessoa`),

    FOREIGN KEY (`tdoenca_idDoenca`)
    REFERENCES `banco_sistema_hospital`.`tdoenca` (`idDoenca`)
);

-- Tabela talergia
CREATE TABLE IF NOT EXISTS `banco_sistema_hospital`.`talergia` (
  `bdidAlergia` INT NOT NULL,
  `bdAlergia` VARCHAR(45) NULL,
  PRIMARY KEY (`bdidAlergia`)
);

-- Tabela tdadospessoa_has_talergia
CREATE TABLE IF NOT EXISTS `banco_sistema_hospital`.`tdadospessoa_has_talergia` (
  `tdadospessoa_bdidPessoa` INT NOT NULL,
  `talergia_bdidAlergia` INT NOT NULL,
  PRIMARY KEY (`tdadospessoa_bdidPessoa`, `talergia_bdidAlergia`),

    FOREIGN KEY (`tdadospessoa_bdidPessoa`)
    REFERENCES `banco_sistema_hospital`.`tdadospessoa` (`bdidPessoa`),

    FOREIGN KEY (`talergia_bdidAlergia`)
    REFERENCES `banco_sistema_hospital`.`talergia` (`bdidAlergia`)
);