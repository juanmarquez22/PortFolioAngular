-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`persona` (
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `dni` VARCHAR(45) NOT NULL,
  `fecha_nac` DATE NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `imagen` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpersona`),
  UNIQUE INDEX `idpersona_UNIQUE` (`idpersona` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`estudios_grado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`estudios_grado` (
  `idgrado` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `institucion` VARCHAR(45) NOT NULL,
  `carrera` VARCHAR(45) NOT NULL,
  `estudios_gradocol` VARCHAR(45) NOT NULL,
  `imagen` VARCHAR(45) NOT NULL,
  `ingreso` DATE NOT NULL,
  `egreso` DATE NOT NULL,
  `persona_idpersona` INT NOT NULL,
  PRIMARY KEY (`idgrado`, `persona_idpersona`),
  UNIQUE INDEX `id_UNIQUE` (`idgrado` ASC) VISIBLE,
  INDEX `fk_estudios_grado_persona_idx` (`persona_idpersona` ASC) VISIBLE,
  CONSTRAINT `fk_estudios_grado_persona`
    FOREIGN KEY (`persona_idpersona`)
    REFERENCES `mydb`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`estudios_pregrado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`estudios_pregrado` (
  `idpregrado` INT NOT NULL,
  `titulo` VARCHAR(45) NULL,
  `institucion` VARCHAR(45) NULL,
  `imagen` VARCHAR(45) NULL,
  `egreso` DATE NULL,
  `promedio` VARCHAR(10) NULL,
  `persona_idpersona` INT NOT NULL,
  PRIMARY KEY (`idpregrado`, `persona_idpersona`),
  UNIQUE INDEX `id_UNIQUE` (`idpregrado` ASC) VISIBLE,
  INDEX `fk_estudios_pregrado_persona1_idx` (`persona_idpersona` ASC) VISIBLE,
  CONSTRAINT `fk_estudios_pregrado_persona1`
    FOREIGN KEY (`persona_idpersona`)
    REFERENCES `mydb`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`idioma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`idioma` (
  `ididioma` INT NOT NULL,
  `idioma` VARCHAR(45) NULL,
  `nivel` VARCHAR(45) NULL,
  `institucion` VARCHAR(45) NULL,
  `imagen` VARCHAR(45) NULL,
  `persona_idpersona` INT NOT NULL,
  PRIMARY KEY (`ididioma`, `persona_idpersona`),
  UNIQUE INDEX `ididioma_UNIQUE` (`ididioma` ASC) VISIBLE,
  INDEX `fk_idioma_persona1_idx` (`persona_idpersona` ASC) VISIBLE,
  CONSTRAINT `fk_idioma_persona1`
    FOREIGN KEY (`persona_idpersona`)
    REFERENCES `mydb`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`experiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`experiencia` (
  `idexperiencia` INT NOT NULL,
  `empresa` VARCHAR(45) NULL,
  `periodo` VARCHAR(45) NULL,
  `descripcion` VARCHAR(255) NULL,
  `imagen` VARCHAR(45) NULL,
  `persona_idpersona` INT NOT NULL,
  PRIMARY KEY (`idexperiencia`, `persona_idpersona`),
  UNIQUE INDEX `idexperiencia_UNIQUE` (`idexperiencia` ASC) VISIBLE,
  INDEX `fk_experiencia_persona1_idx` (`persona_idpersona` ASC) VISIBLE,
  CONSTRAINT `fk_experiencia_persona1`
    FOREIGN KEY (`persona_idpersona`)
    REFERENCES `mydb`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cursos` (
  `idcursos` INT NOT NULL,
  `curso` VARCHAR(45) NULL,
  `certificado` VARCHAR(45) NULL,
  `detalle` VARCHAR(255) NULL,
  `imagen` VARCHAR(45) NULL,
  `persona_idpersona` INT NOT NULL,
  PRIMARY KEY (`idcursos`, `persona_idpersona`),
  UNIQUE INDEX `idcursos_UNIQUE` (`idcursos` ASC) VISIBLE,
  INDEX `fk_cursos_persona1_idx` (`persona_idpersona` ASC) VISIBLE,
  CONSTRAINT `fk_cursos_persona1`
    FOREIGN KEY (`persona_idpersona`)
    REFERENCES `mydb`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
