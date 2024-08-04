-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LibraryManagement
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LibraryManagement
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LibraryManagement` DEFAULT CHARACTER SET utf8 ;
USE `LibraryManagement` ;

-- -----------------------------------------------------
-- Table `LibraryManagement`.`authors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibraryManagement`.`authors` (
  `author_id` INT NOT NULL AUTO_INCREMENT,
  `author_name` VARCHAR(45) NULL,
  PRIMARY KEY (`author_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibraryManagement`.`genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibraryManagement`.`genres` (
  `genre_id` INT NOT NULL AUTO_INCREMENT,
  `genre_name` VARCHAR(45) NULL,
  PRIMARY KEY (`genre_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibraryManagement`.`books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibraryManagement`.`books` (
  `book_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `publication_year` YEAR NULL,
  `author_id` INT NULL,
  `genre_id` INT NULL,
  PRIMARY KEY (`book_id`),
  INDEX `fk_author_idx` (`author_id` ASC) VISIBLE,
  INDEX `fk_genre_idx` (`genre_id` ASC) VISIBLE,
  CONSTRAINT `fk_author`
    FOREIGN KEY (`author_id`)
    REFERENCES `LibraryManagement`.`authors` (`author_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_genre`
    FOREIGN KEY (`genre_id`)
    REFERENCES `LibraryManagement`.`genres` (`genre_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibraryManagement`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibraryManagement`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibraryManagement`.`borrowed_books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibraryManagement`.`borrowed_books` (
  `borrow_id` INT NOT NULL AUTO_INCREMENT,
  `book_id` INT NULL,
  `user_id` INT NULL,
  `borrow_date` DATE NULL,
  `return_date` DATE NULL,
  PRIMARY KEY (`borrow_id`),
  INDEX `fk_book_idx` (`book_id` ASC) VISIBLE,
  INDEX `fk_user_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_book`
    FOREIGN KEY (`book_id`)
    REFERENCES `LibraryManagement`.`books` (`book_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `LibraryManagement`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
