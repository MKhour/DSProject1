SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `banks` ;
CREATE SCHEMA IF NOT EXISTS `banks` DEFAULT CHARACTER SET latin1 ;
USE `banks` ;

CREATE TABLE IF NOT EXISTS `banks`.`users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `username` VARCHAR(25) NULL DEFAULT NULL,
  `password` VARCHAR(25) NULL DEFAULT NULL,
  `gender` VARCHAR(25) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `phone_number` VARCHAR(25) NULL DEFAULT NULL,
  `date_of_birth` VARCHAR(25) NULL DEFAULT NULL,
  `credit_card.cc_number` VARCHAR(25) NULL DEFAULT NULL,
  `age` INT(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE IF NOT EXISTS `banks`.`locations` (
  `ship_address` LONGTEXT NULL DEFAULT NULL,
  `ship_city` VARCHAR(50) NULL DEFAULT NULL,
  `ship_state_province` VARCHAR(50) NULL DEFAULT NULL,
  `zipcode` VARCHAR(15) NULL DEFAULT NULL,
  `ship_country_region` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`ship_address`, `ship_city`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE IF NOT EXISTS `banks`.`dates` (
  `date` DATETIME NULL DEFAULT NULL,
  `day` INT(2) NULL DEFAULT NULL,
  `month` VARCHAR(15) NULL DEFAULT NULL,
  `year` VARCHAR(5) NULL DEFAULT NULL,
  `week_day` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`date`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;