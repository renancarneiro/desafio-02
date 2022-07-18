-- MySQL Script generated by MySQL Workbench
-- Sun Jul 17 17:03:23 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cleaners_management
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cleaners_management
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cleaners_management` DEFAULT CHARACTER SET utf8 ;
USE `cleaners_management` ;

-- -----------------------------------------------------
-- Table `cleaners_management`.`cleaner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cleaners_management`.`cleaner` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cleaners_management`.`house_owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cleaners_management`.`house_owner` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cleaners_management`.`house`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cleaners_management`.`house` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(100) NOT NULL,
  `neighborhood` VARCHAR(45) NOT NULL,
  `street` VARCHAR(90) NOT NULL,
  `number` INT NOT NULL,
  `additional_address` VARCHAR(100) NULL,
  `type` ENUM('small', 'average', 'large') NULL,
  `house_owner_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_house_house_owner_idx` (`house_owner_id` ASC),
  CONSTRAINT `fk_house_house_owner`
    FOREIGN KEY (`house_owner_id`)
    REFERENCES `cleaners_management`.`house_owner` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cleaners_management`.`cleaning_schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cleaners_management`.`cleaning_schedule` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cleaner_id` INT UNSIGNED NOT NULL,
  `house_id` INT UNSIGNED NOT NULL,
  `date_cleaning` DATE NULL,
  PRIMARY KEY (`id`, `cleaner_id`, `house_id`),
  INDEX `fk_cleaner_has_house_house1_idx` (`house_id` ASC),
  INDEX `fk_cleaner_has_house_cleaner1_idx` (`cleaner_id` ASC),
  CONSTRAINT `fk_cleaner_has_house_cleaner1`
    FOREIGN KEY (`cleaner_id`)
    REFERENCES `cleaners_management`.`cleaner` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cleaner_has_house_house1`
    FOREIGN KEY (`house_id`)
    REFERENCES `cleaners_management`.`house` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cleaners_management`.`feedback_cleaning_service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cleaners_management`.`feedback_cleaning_service` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `finished_cleaning` TINYINT NOT NULL,
  `payment` FLOAT NULL,
  `feedback` VARCHAR(255) NULL,
  `cleaning_schedule_id` INT UNSIGNED NOT NULL,
  `cleaning_schedule_cleaner_id` INT UNSIGNED NOT NULL,
  `cleaning_schedule_house_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_feedback_cleaning_service_cleaning_schedule1_idx` (`cleaning_schedule_id` ASC, `cleaning_schedule_cleaner_id` ASC, `cleaning_schedule_house_id` ASC),
  CONSTRAINT `fk_feedback_cleaning_service_cleaning_schedule1`
    FOREIGN KEY (`cleaning_schedule_id` , `cleaning_schedule_cleaner_id` , `cleaning_schedule_house_id`)
    REFERENCES `cleaners_management`.`cleaning_schedule` (`id` , `cleaner_id` , `house_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
