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
-- Inserts `cleaners_management`.`cleaner`
-- -----------------------------------------------------
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Maria costa','02328865475');
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Jhullia costa','3123213123');
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Thamiris costa','23333233111');
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Yasmin costa','33342564653');
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Leonardo costa','346677888898');
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Ricardo costa','458978798');
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Renan costa','951445456');
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Juliane costa','1111222777');
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Carlos costa','3333675845');
INSERT INTO `cleaners_management`.`cleaner`(`name`,`cpf`)VALUES('Raimundo costa','7584895563');

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
-- Inserts `cleaners_management`.`house_owner`
-- -----------------------------------------------------
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 1','1111114785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 2','2222224785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 2','3333334785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 3','4444444785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 4','5555554785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 5','6666664785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 6','7777774785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 7','8888884785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 8','99999994785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 9','10101104785');
INSERT INTO `cleaners_management`.`house_owner`(`name`,`cpf`)VALUES('Proprietario 10','1112114785');


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
-- Inserts `cleaners_management`.`house`
-- -----------------------------------------------------
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Condor','Vila 1',66,'esquina','small',1);
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Jurunas','Vila 2',77,'esquina','average',2);
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Guama','Vila 3',88,'esquina','large',1);
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Cremacao','Vila 4',99,'esquina','small',3);
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Curio','Vila 5',1010,'esquina','large',4);
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Satélite','Vila 6',1111,'esquina','average',5);
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Perimetral','Vila 7',1212,'esquina','large',6);
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Condor','Vila 8',1313,'esquina','large',6);
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Cremacao','Vila 9',1414,'esquina','small',1);
INSERT INTO `cleaners_management`.`house`(`city`,`neighborhood`,`street`,`number`,`additional_address`,`type`,`house_owner_id`)VALUES('Belém','Satélite','Vila 10',1515,'esquina','small',10);

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
-- Inserts `cleaners_management`.`cleaning_schedule`
-- -----------------------------------------------------
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100000,1,'2022-08-01');
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100001,2,'2022-07-01');
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100002,3,'2022-10-01');
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100003,4,'2022-10-10');
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100004,5,'2022-08-11');
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100005,6,'2022-08-29');
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100006,7,'2022-09-18');
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100007,8,'2022-08-13');
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100008,9,'2022-08-14');
INSERT INTO `cleaners_management`.`cleaning_schedule`(`cleaner_id`,`house_id`,`date_cleaning`)VALUES(100009,10,'2022-08-17');

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
