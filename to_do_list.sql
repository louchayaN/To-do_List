-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema to_do_list
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema to_do_list
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `to_do_list` DEFAULT CHARACTER SET utf8mb4 ;
USE `to_do_list` ;

-- -----------------------------------------------------
-- Table `to_do_list`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `to_do_list`.`users` (
  `id_user` INT(11) NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(20) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `to_do_list`.`tasks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `to_do_list`.`tasks` (
  `id_task` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NULL,
  `short_name` VARCHAR(100) NULL,
  `location` VARCHAR(60) NULL,
  `description` VARCHAR(500) NULL,
  `start_date` TIMESTAMP NULL,
  `end_date` TIMESTAMP NULL,
  PRIMARY KEY (`id_task`),
  INDEX `id_user_idx` (`id_user` ASC),
  CONSTRAINT `id_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `to_do_list`.`users` (`id_user`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `to_do_list`.`users`
-- -----------------------------------------------------
START TRANSACTION;
USE `to_do_list`;
INSERT INTO `to_do_list`.`users` (`id_user`, `login`, `email`, `password`) VALUES (1, 'user', 'user@mail.ru', 'user');
INSERT INTO `to_do_list`.`users` (`id_user`, `login`, `email`, `password`) VALUES (2, 'petr', 'petr@mail.ru', 'petr');

COMMIT;


-- -----------------------------------------------------
-- Data for table `to_do_list`.`tasks`
-- -----------------------------------------------------
START TRANSACTION;
USE `to_do_list`;
INSERT INTO `to_do_list`.`tasks` (`id_task`, `id_user`, `short_name`, `location`, `description`, `start_date`, `end_date`) VALUES (1, 1, 'To make to-do List', NULL, NULL, NULL, NULL);
INSERT INTO `to_do_list`.`tasks` (`id_task`, `id_user`, `short_name`, `location`, `description`, `start_date`, `end_date`) VALUES (2, 2, 'Nothing to do..', NULL, NULL, NULL, NULL);

COMMIT;

