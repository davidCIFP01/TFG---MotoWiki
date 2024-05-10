-- MySQL Script generado por MySQL Workbench
-- Fri May 10 20:19:14 2024
-- Modelo: Nuevo Modelo    Versión: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Esquema MotoWiki
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `MotoWiki`;

CREATE SCHEMA IF NOT EXISTS `MotoWiki` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;

USE `MotoWiki`;

-- -----------------------------------------------------
-- Tabla `usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usuario`;

CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` INT AUTO_INCREMENT PRIMARY KEY,
  `nombreUsuario` VARCHAR(45),
  `apellido1` VARCHAR(45),
  `apellido2` VARCHAR(45),
  `username` VARCHAR(45) NOT NULL UNIQUE,
  `email` VARCHAR(45) NOT NULL UNIQUE,
  `password` VARCHAR(45) NOT NULL,
  `fechaRegistro` DATE NOT NULL,
  `fechaNacimiento` DATE,
  `betado` TINYINT NOT NULL
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla `fabricante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fabricante`;

CREATE TABLE IF NOT EXISTS `fabricante` (
  `idFabricante` INT AUTO_INCREMENT PRIMARY KEY,
  `nombreFabricante` VARCHAR(45) NOT NULL,
  `paisOrigen` VARCHAR(45),
  `fechaFundada` INT,
  `sitioWeb` VARCHAR(150),
  `descripcion1` VARCHAR(45),
  `descripcion2` VARCHAR(45),
  `imagenFabricante` VARCHAR(120),
  `suspendido` TINYINT NOT NULL
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla `registros`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `registros`;

CREATE TABLE IF NOT EXISTS `registros` (
  `idRegistro` INT AUTO_INCREMENT PRIMARY KEY,
  `fechaCambio` DATE NOT NULL,
  `tipoCambio` ENUM("usuario", "moto", "fabricante") NOT NULL,
  `descripcionCambios` VARCHAR(150) NOT NULL,
  `idUsuario` INT NOT NULL,
  CONSTRAINT `fk_registros_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla `motocicleta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `motocicleta`;

CREATE TABLE IF NOT EXISTS `motocicleta` (
  `idMoto` INT AUTO_INCREMENT PRIMARY KEY,
  `nombreModelo` VARCHAR(45) NOT NULL,
  `fechaFabricacion` DATE,
  `tipoMoto` VARCHAR(45),
  `cilindrada` INT,
  `potencia1` INT,
  `potencia2` INT,
  `refrigeracion` VARCHAR(45),
  `tipoMotor` VARCHAR(45),
  `marchas` INT,
  `transmision` VARCHAR(45),
  `capacidad` VARCHAR(45),
  `arranque` VARCHAR(45),
  `tag` VARCHAR(45) NOT NULL,
  `tipoCarnet` ENUM("AM", "A1", "A2", "A") NOT NULL,
  `popularidad` INT NOT NULL,
  `precioMin` FLOAT,
  `precioMax` FLOAT,
  `descripcion` VARCHAR(150),
  `imagenMoto` VARCHAR(150),
  `suspendida` TINYINT NOT NULL,
  `idFabricante` INT NOT NULL,
  CONSTRAINT `fk_motocicleta_fabricante` FOREIGN KEY (`idFabricante`) REFERENCES `fabricante` (`idFabricante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla `favoritas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `favoritas`;

CREATE TABLE IF NOT EXISTS `favoritas` (
  `idUsuario` INT NOT NULL,
  `idMoto` INT NOT NULL,
  PRIMARY KEY (`idUsuario`, `idMoto`),
  CONSTRAINT `fk_favoritas_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_favoritas_motocicleta` FOREIGN KEY (`idMoto`) REFERENCES `motocicleta` (`idMoto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla `noticias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `noticias`;

CREATE TABLE IF NOT EXISTS `noticias` (
  `idNoticias` INT AUTO_INCREMENT PRIMARY KEY,
  `tituloNoticia` VARCHAR(45) NOT NULL,
  `entrada1` VARCHAR(100) NOT NULL,
  `entrada2` VARCHAR(100),
  `entrada3` VARCHAR(100),
  `fechaPublicacion` DATE,
  `imagenNoticia` VARCHAR(100),
  `idUsuario` INT NOT NULL,
  CONSTRAINT `fk_noticias_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla `ofertas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ofertas`;

CREATE TABLE IF NOT EXISTS `ofertas` (
  `idOfertas` INT AUTO_INCREMENT PRIMARY KEY,
  `enlaceOferta` VARCHAR(150),
  `precio` FLOAT,
  `idMoto` INT NOT NULL,
  CONSTRAINT `fk_ofertas_motocicleta` FOREIGN KEY (`idMoto`) REFERENCES `motocicleta` (`idMoto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
