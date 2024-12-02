SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema parking_university
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `parking_university` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `parking_university` ;

-- -----------------------------------------------------
-- Table `parking_university`.`datospersonales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parking_university`.`datospersonales` (
  `Cedula` BIGINT NOT NULL,
  `Nombre` VARCHAR(50) NULL DEFAULT NULL,
  `Apellido` VARCHAR(50) NULL DEFAULT NULL,
  `ID_Rol_Usuario` INT NULL DEFAULT NULL,
  `ID_Universidad` INT NULL DEFAULT NULL,
  `ID_Facultad` INT NULL DEFAULT NULL,
  `ID_TipoVehiculo` INT NULL DEFAULT NULL,
  `Imagen_Persona` VARCHAR(255) NULL DEFAULT NULL,
  `Id_registro` INT NULL,
  PRIMARY KEY (`Cedula`),
  CONSTRAINT `fk_rol_usuario` FOREIGN KEY (`ID_Rol_Usuario`) REFERENCES `parking_university`.`tablaroles`(`ID_Rol_Usuario`),
  CONSTRAINT `fk_universidad` FOREIGN KEY (`ID_Universidad`) REFERENCES `parking_university`.`tablauniversidades`(`Id_Universidad`),
  CONSTRAINT `fk_facultad` FOREIGN KEY (`ID_Facultad`) REFERENCES `parking_university`.`tablafacultades`(`Id_Universidad`),
  CONSTRAINT `fk_tipo_vehiculo` FOREIGN KEY (`ID_TipoVehiculo`) REFERENCES `parking_university`.`tablavehiculos`(`ID_TIpoVehiculo`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `parking_university`.`datosvehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parking_university`.`datosvehiculo` (
  `Id_Vehiculo` INT NULL DEFAULT NULL,
  `Tipo_Vehiculo` TEXT NULL DEFAULT NULL,
  `Placa` TEXT NULL DEFAULT NULL,
  `Marca` TEXT NULL DEFAULT NULL,
  `Modelo` TEXT NULL DEFAULT NULL,
  `Color` TEXT NULL DEFAULT NULL,
  `Imagen_Vehiculo` TEXT NULL DEFAULT NULL
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `parking_university`.`registroingresoysalida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parking_university`.`registroingresoysalida` (
  `Id_registros` INT NULL DEFAULT NULL,
  `Hora_Entrada` TEXT NULL DEFAULT NULL,
  `Hora_Salida` TEXT NULL DEFAULT NULL,
  `Tiempo_Estadia` DOUBLE NULL DEFAULT NULL,
  `Fecha Ingreso` TEXT NULL DEFAULT NULL,
  CONSTRAINT `fk_registro_persona` FOREIGN KEY (`Id_registros`) REFERENCES `parking_university`.`datospersonales`(`Cedula`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `parking_university`.`tablafacultades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parking_university`.`tablafacultades` (
  `Id_Universidad` INT NULL DEFAULT NULL,
  `Facultad` TEXT NULL DEFAULT NULL
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `parking_university`.`tablaroles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parking_university`.`tablaroles` (
  `ID_Rol_Usuario` INT NULL DEFAULT NULL,
  `Rol_Usuario` TEXT NULL DEFAULT NULL,
  INDEX `ID_Rol_Usuario` (`ID_Rol_Usuario` ASC) VISIBLE
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `parking_university`.`tablauniversidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parking_university`.`tablauniversidades` (
  `Id_Universidad` INT NULL DEFAULT NULL,
  `Universidad` TEXT NULL DEFAULT NULL,
  INDEX `Id_Universidad` (`Id_Universidad` ASC) VISIBLE
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `parking_university`.`tablavehiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parking_university`.`tablavehiculos` (
  `ID_TIpoVehiculo` INT NULL DEFAULT NULL,
  `Tipo_Vehiculo` TEXT NULL DEFAULT NULL
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Modificaciones para establecer relaciones en el diagrama EER
-- -----------------------------------------------------

--

