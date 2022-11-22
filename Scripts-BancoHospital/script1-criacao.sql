-- Criação do Banco de Dados para sistema Hospitalar, da unidade curricular de Banco de Dados 01
-- Profª Bruna Russi
-- 30/11 - ESTUDO DE CASO 03 (FINAL) - BD
-- Cração do Banco

CREATE SCHEMA IF NOT EXISTS `Banco_Sistema_Hospital` DEFAULT CHARACTER SET utf8 ;
USE `Banco_Sistema_Hospital` ;

-- Tabela tContatoSeguranca
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tContatoSeguranca` (
  `bdidContatoSeguranca` INT NOT NULL,
  `bdNomeContato` 		 VARCHAR(255) NULL,
  `bdCpfContato`     	 VARCHAR(18) NULL,
  `bdTelefoneContato` 	 VARCHAR(20) NULL,
  PRIMARY KEY (`bdidContatoSeguranca`),
  UNIQUE INDEX `bdidContatoSeguranca_UNIQUE` (`bdidContatoSeguranca` ASC) 
);

-- Tabela tDadosPessoa
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tDadosPessoa` (
  `bdidPessoa` INT NOT NULL,
  `bdNome` VARCHAR(255) NULL,
  `bdCpf` VARCHAR(18) NULL,
  `tContatoSeguranca_bdidContatoSeguranca` INT NOT NULL,
  PRIMARY KEY (`bdidPessoa`, `tContatoSeguranca_bdidContatoSeguranca`),

    FOREIGN KEY (`tContatoSeguranca_bdidContatoSeguranca`)
    REFERENCES `Banco_Sistema_Hospital`.`tContatoSeguranca` (`bdidContatoSeguranca`)
);

-- Tabela tPlanoSaude
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tPlanoSaude` (
  `bdidPlanoSaude` INT NOT NULL,
  `bdNomePlano` VARCHAR(100) NULL,
  `bdCobertura` VARCHAR(50) NULL,
  PRIMARY KEY (`bdidPlanoSaude`),
  UNIQUE INDEX `bdidPlanoSaude_UNIQUE` (`bdidPlanoSaude` ASC) 
);

-- Tabela tDadosPessoa_has_tPlanoSaude
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tDadosPessoa_has_tPlanoSaude` (
  `tDadosPessoa_bdidPessoa` INT NOT NULL,
  `tPlanoSaude_bdidPlanoSaude` INT NOT NULL,
  PRIMARY KEY (`tDadosPessoa_bdidPessoa`, `tPlanoSaude_bdidPlanoSaude`),

    FOREIGN KEY (`tDadosPessoa_bdidPessoa`)
    REFERENCES `Banco_Sistema_Hospital`.`tDadosPessoa` (`bdidPessoa`),

    FOREIGN KEY (`tPlanoSaude_bdidPlanoSaude`)
    REFERENCES `Banco_Sistema_Hospital`.`tPlanoSaude` (`bdidPlanoSaude`)
);

-- Tabela tDoencas
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tDoenca` (
  `idDoenca` INT NOT NULL,
  `bdComobirdade` VARCHAR(50) NULL,
  PRIMARY KEY (`idDoenca`),
  UNIQUE INDEX `idDoenca_UNIQUE` (`idDoenca` ASC) 
);

-- Tabela tDadosPessoa_has_tDoenca
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tDadosPessoa_has_tDoenca` (
  `tDadosPessoa_bdidPessoa` INT NOT NULL,
  `tDoenca_idDoenca` INT NOT NULL,
  `bdDataAtendimento` DATE NULL,
  `bdCurado` TINYINT NULL,
  PRIMARY KEY (`tDadosPessoa_bdidPessoa`, `tDoenca_idDoenca`),

    FOREIGN KEY (`tDadosPessoa_bdidPessoa`)
    REFERENCES `Banco_Sistema_Hospital`.`tDadosPessoa` (`bdidPessoa`),

    FOREIGN KEY (`tDoenca_idDoenca`)
    REFERENCES `Banco_Sistema_Hospital`.`tDoenca` (`idDoenca`)
);

-- Tabela tAlergia
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tAlergia` (
  `bdidAlergia` INT NOT NULL,
  `bdAlergia` VARCHAR(45) NULL,
  PRIMARY KEY (`bdidAlergia`)
);

-- Tabela tDadosPessoa_has_tAlergia
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tDadosPessoa_has_tAlergia` (
  `tDadosPessoa_bdidPessoa` INT NOT NULL,
  `tAlergia_bdidAlergia` INT NOT NULL,
  PRIMARY KEY (`tDadosPessoa_bdidPessoa`, `tAlergia_bdidAlergia`),

    FOREIGN KEY (`tDadosPessoa_bdidPessoa`)
    REFERENCES `Banco_Sistema_Hospital`.`tDadosPessoa` (`bdidPessoa`),

    FOREIGN KEY (`tAlergia_bdidAlergia`)
    REFERENCES `Banco_Sistema_Hospital`.`tAlergia` (`bdidAlergia`)
);

-- Tabela tEndereco
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tEndereco` (
  `bdCep` INT NOT NULL,
  `bdCidade` VARCHAR(100) NULL,
  `bdBairro` VARCHAR(45) NULL,
  PRIMARY KEY (`bdCep`)
);

-- Tabela tEndereco_has_tDadosPessoa
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tEndereco_has_tDadosPessoa` (
  `tEndereco_bdidEndereco` INT NOT NULL,
  `tDadosPessoa_bdidPessoa` INT NOT NULL,
  `bdNumeroResidencia` INT NULL,

    FOREIGN KEY (`tEndereco_bdidEndereco`)
    REFERENCES `Banco_Sistema_Hospital`.`tEndereco` (`bdCep`),

    FOREIGN KEY (`tDadosPessoa_bdidPessoa`)
    REFERENCES `Banco_Sistema_Hospital`.`tDadosPessoa` (`bdidPessoa`)
);

