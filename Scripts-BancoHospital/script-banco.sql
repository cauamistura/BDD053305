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
  UNIQUE INDEX `bdidContatoSeguranca_UNIQUE` (`bdidContatoSeguranca` ASC) )
;

-- Tabela tDadosPessoa
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tDadosPessoa` (
  `bdidPessoa` INT NOT NULL,
  `bdNome` VARCHAR(255) NULL,
  `bdCpf` VARCHAR(18) NULL,
  `tContatoSeguranca_bdidContatoSeguranca` INT NOT NULL,
  PRIMARY KEY (`bdidPessoa`, `tContatoSeguranca_bdidContatoSeguranca`),
  UNIQUE INDEX `bdidPessoa_UNIQUE` (`bdidPessoa` ASC) ,
  INDEX `fk_tDadosPessoa_tContatoSeguranca1_idx` (`tContatoSeguranca_bdidContatoSeguranca` ASC) ,
  CONSTRAINT `fk_tDadosPessoa_tContatoSeguranca1`
    FOREIGN KEY (`tContatoSeguranca_bdidContatoSeguranca`)
    REFERENCES `Banco_Sistema_Hospital`.`tContatoSeguranca` (`bdidContatoSeguranca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

-- Tabela tPlanoSaude
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tPlanoSaude` (
  `bdidPlanoSaude` INT NOT NULL,
  `bdNomePlano` VARCHAR(100) NULL,
  `bdCobertura` VARCHAR(50) NULL,
  PRIMARY KEY (`bdidPlanoSaude`),
  UNIQUE INDEX `bdidPlanoSaude_UNIQUE` (`bdidPlanoSaude` ASC) )
;

-- Tabela tDadosPessoa_has_tPlanoSaude
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tDadosPessoa_has_tPlanoSaude` (
  `tDadosPessoa_bdidPessoa` INT NOT NULL,
  `tPlanoSaude_bdidPlanoSaude` INT NOT NULL,
  PRIMARY KEY (`tDadosPessoa_bdidPessoa`, `tPlanoSaude_bdidPlanoSaude`),
  INDEX `fk_tDadosPessoa_has_tPlanoSaude_tPlanoSaude1_idx` (`tPlanoSaude_bdidPlanoSaude` ASC) ,
  INDEX `fk_tDadosPessoa_has_tPlanoSaude_tDadosPessoa1_idx` (`tDadosPessoa_bdidPessoa` ASC) ,
  CONSTRAINT `fk_tDadosPessoa_has_tPlanoSaude_tDadosPessoa1`
    FOREIGN KEY (`tDadosPessoa_bdidPessoa`)
    REFERENCES `Banco_Sistema_Hospital`.`tDadosPessoa` (`bdidPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tDadosPessoa_has_tPlanoSaude_tPlanoSaude1`
    FOREIGN KEY (`tPlanoSaude_bdidPlanoSaude`)
    REFERENCES `Banco_Sistema_Hospital`.`tPlanoSaude` (`bdidPlanoSaude`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

-- Tabela tDoencas
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tHistoricoDoenca` (
  `idDoenca` INT NOT NULL,
  `bdComobirdade` VARCHAR(50) NULL,
  PRIMARY KEY (`idDoenca`),
  UNIQUE INDEX `idDoenca_UNIQUE` (`idDoenca` ASC) )
;

-- Tabela tDadosPessoa_has_tHistoricoDoenca
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tDadosPessoa_has_tHistoricoDoenca` (
  `tDadosPessoa_bdidPessoa` INT NOT NULL,
  `tHistoricoDoenca_idDoenca` INT NOT NULL,
  `bdDataAtendimento` DATE NULL,
  `bdCurado` TINYINT NULL,
  PRIMARY KEY (`tDadosPessoa_bdidPessoa`, `tHistoricoDoenca_idDoenca`),
  INDEX `fk_tDadosPessoa_has_tHistoricoDoenca_tHistoricoDoenca1_idx` (`tHistoricoDoenca_idDoenca` ASC) ,
  INDEX `fk_tDadosPessoa_has_tHistoricoDoenca_tDadosPessoa1_idx` (`tDadosPessoa_bdidPessoa` ASC) ,
  CONSTRAINT `fk_tDadosPessoa_has_tHistoricoDoenca_tDadosPessoa1`
    FOREIGN KEY (`tDadosPessoa_bdidPessoa`)
    REFERENCES `Banco_Sistema_Hospital`.`tDadosPessoa` (`bdidPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tDadosPessoa_has_tHistoricoDoenca_tHistoricoDoenca1`
    FOREIGN KEY (`tHistoricoDoenca_idDoenca`)
    REFERENCES `Banco_Sistema_Hospital`.`tHistoricoDoenca` (`idDoenca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

-- Tabela tAlergia
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tAlergia` (
  `bdidAlergia` INT NOT NULL,
  `bdAlergia` VARCHAR(45) NULL,
  PRIMARY KEY (`bdidAlergia`))
;

-- Tabela tDadosPessoa_has_tAlergia
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tDadosPessoa_has_tAlergia` (
  `tDadosPessoa_bdidPessoa` INT NOT NULL,
  `tAlergia_bdidAlergia` INT NOT NULL,
  PRIMARY KEY (`tDadosPessoa_bdidPessoa`, `tAlergia_bdidAlergia`),
  INDEX `fk_tDadosPessoa_has_tAlergia_tAlergia1_idx` (`tAlergia_bdidAlergia` ASC) ,
  INDEX `fk_tDadosPessoa_has_tAlergia_tDadosPessoa1_idx` (`tDadosPessoa_bdidPessoa` ASC) ,
  CONSTRAINT `fk_tDadosPessoa_has_tAlergia_tDadosPessoa1`
    FOREIGN KEY (`tDadosPessoa_bdidPessoa`)
    REFERENCES `Banco_Sistema_Hospital`.`tDadosPessoa` (`bdidPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tDadosPessoa_has_tAlergia_tAlergia1`
    FOREIGN KEY (`tAlergia_bdidAlergia`)
    REFERENCES `Banco_Sistema_Hospital`.`tAlergia` (`bdidAlergia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

-- Tabela tEndereco
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tEndereco` (
  `bdCep` INT NOT NULL,
  `bdCidade` VARCHAR(100) NULL,
  `bdBairro` VARCHAR(45) NULL,
  PRIMARY KEY (`bdCep`))
;

-- Tabela tEndereco_has_tDadosPessoa
CREATE TABLE IF NOT EXISTS `Banco_Sistema_Hospital`.`tEndereco_has_tDadosPessoa` (
  `tEndereco_bdidEndereco` INT NOT NULL,
  `tDadosPessoa_bdidPessoa` INT NOT NULL,
  `bdNumeroResidencia` INT NULL,
  PRIMARY KEY (`tEndereco_bdidEndereco`, `tDadosPessoa_bdidPessoa`),
  INDEX `fk_tEndereco_has_tDadosPessoa_tDadosPessoa1_idx` (`tDadosPessoa_bdidPessoa` ASC) ,
  INDEX `fk_tEndereco_has_tDadosPessoa_tEndereco1_idx` (`tEndereco_bdidEndereco` ASC) ,
  CONSTRAINT `fk_tEndereco_has_tDadosPessoa_tEndereco1`
    FOREIGN KEY (`tEndereco_bdidEndereco`)
    REFERENCES `Banco_Sistema_Hospital`.`tEndereco` (`bdCep`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tEndereco_has_tDadosPessoa_tDadosPessoa1`
    FOREIGN KEY (`tDadosPessoa_bdidPessoa`)
    REFERENCES `Banco_Sistema_Hospital`.`tDadosPessoa` (`bdidPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

