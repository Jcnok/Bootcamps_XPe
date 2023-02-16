-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema e-commerce-xpe
-- -----------------------------------------------------
-- Desafio prático do módulo 2 - BootCamp Analista de Banco de Dados.

-- -----------------------------------------------------
-- Schema e-commerce-xpe
--
-- Desafio prático do módulo 2 - BootCamp Analista de Banco de Dados.
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `e-commerce-xpe` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `e-commerce-xpe` ;

-- -----------------------------------------------------
-- Table `e-commerce-xpe`.`CLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `e-commerce-xpe`.`CLIENTE` (
  `COD_CLIENTE` INT NOT NULL,
  `NOM_CLIENTE` VARCHAR(100) NOT NULL,
  `NUM_CPF_CNPJ` DECIMAL(15) NULL,
  `DSC_ENDERECO_COBRANCA` VARCHAR(1000) NOT NULL,
  `NUM_TELEFONE` DECIMAL(14) NOT NULL,
  PRIMARY KEY (`COD_CLIENTE`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `e-commerce-xpe`.`FORMA_PAGAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `e-commerce-xpe`.`FORMA_PAGAMENTO` (
  `COD_FORMA_PAGAMENTO` INT NOT NULL,
  `DSC_FORMA_PAGAMENTO` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`COD_FORMA_PAGAMENTO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `e-commerce-xpe`.`PEDIDO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `e-commerce-xpe`.`PEDIDO` (
  `NUM_PEDIDO` VARCHAR(45) NOT NULL,
  `COD_CLIENTE_FK` INT NOT NULL,
  `DAT_PEDIDO` DATE NOT NULL,
  `VLR_TOTAL_PEDIDO` DECIMAL(10,2) NULL,
  `COD_FORMA_PAGAMENTO_FK` INT NOT NULL,
  PRIMARY KEY (`NUM_PEDIDO`),
  INDEX `fk_CLIENTE_has_FORMA_PAGAMENTO_FORMA_PAGAMENTO1_idx` (`COD_FORMA_PAGAMENTO_FK` ASC) VISIBLE,
  INDEX `fk_CLIENTE_has_FORMA_PAGAMENTO_CLIENTE_idx` (`COD_CLIENTE_FK` ASC) VISIBLE,
  CONSTRAINT `fk_CLIENTE_has_FORMA_PAGAMENTO_CLIENTE`
    FOREIGN KEY (`COD_CLIENTE_FK`)
    REFERENCES `e-commerce-xpe`.`CLIENTE` (`COD_CLIENTE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CLIENTE_has_FORMA_PAGAMENTO_FORMA_PAGAMENTO1`
    FOREIGN KEY (`COD_FORMA_PAGAMENTO_FK`)
    REFERENCES `e-commerce-xpe`.`FORMA_PAGAMENTO` (`COD_FORMA_PAGAMENTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `e-commerce-xpe`.`FORNECEDOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `e-commerce-xpe`.`FORNECEDOR` (
  `COD_FORNECEDOR` INT NOT NULL,
  `NOM_FORNECEDOR` VARCHAR(100) NOT NULL,
  `NUM_CNPJ` DECIMAL(15) NULL,
  `DSC_ENDERECO` VARCHAR(1000) NOT NULL,
  `NUM_TELEFONE` DECIMAL(14) NOT NULL,
  PRIMARY KEY (`COD_FORNECEDOR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `e-commerce-xpe`.`SERVICO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `e-commerce-xpe`.`SERVICO` (
  `COD_SERVICO` INT NOT NULL,
  `COD_FORNECEDOR_FK` INT NOT NULL,
  `DSC_SERVICO` VARCHAR(500) NOT NULL,
  `TIP_SERVICO` VARCHAR(50) NOT NULL,
  `VLR_SERVICO` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`COD_SERVICO`),
  INDEX `fk_SERVICO_FORNECEDOR1_idx` (`COD_FORNECEDOR_FK` ASC) VISIBLE,
  CONSTRAINT `fk_SERVICO_FORNECEDOR1`
    FOREIGN KEY (`COD_FORNECEDOR_FK`)
    REFERENCES `e-commerce-xpe`.`FORNECEDOR` (`COD_FORNECEDOR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `e-commerce-xpe`.`ITEM_PEDIDO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `e-commerce-xpe`.`ITEM_PEDIDO` (
  `NUM_PEDIDO_FK` VARCHAR(45) NOT NULL,
  `COD_ITEM_PEDIDO` INT NOT NULL,
  `COD_SERVICO_FK` INT NOT NULL,
  `QTD_SERVICO` DECIMAL(2) NOT NULL,
  `VLR_TOTAL_ITEM` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`NUM_PEDIDO_FK`, `COD_ITEM_PEDIDO`),
  INDEX `fk_SERVICO_has_PEDIDO_PEDIDO1_idx` (`NUM_PEDIDO_FK` ASC) VISIBLE,
  INDEX `fk_SERVICO_has_PEDIDO_SERVICO1_idx` (`COD_SERVICO_FK` ASC) VISIBLE,
  CONSTRAINT `fk_SERVICO_has_PEDIDO_SERVICO1`
    FOREIGN KEY (`COD_SERVICO_FK`)
    REFERENCES `e-commerce-xpe`.`SERVICO` (`COD_SERVICO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SERVICO_has_PEDIDO_PEDIDO1`
    FOREIGN KEY (`NUM_PEDIDO_FK`)
    REFERENCES `e-commerce-xpe`.`PEDIDO` (`NUM_PEDIDO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
