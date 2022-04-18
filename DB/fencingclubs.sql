-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fencingclubdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `fencingclubdb` ;

-- -----------------------------------------------------
-- Schema fencingclubdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fencingclubdb` DEFAULT CHARACTER SET utf8 ;
USE `fencingclubdb` ;

-- -----------------------------------------------------
-- Table `fencing_club`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fencing_club` ;

CREATE TABLE IF NOT EXISTS `fencing_club` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `rank` INT NULL,
  `state` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `rated_fencers` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS fencer@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'fencer'@'localhost' IDENTIFIED BY 'fencer';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'fencer'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `fencing_club`
-- -----------------------------------------------------
START TRANSACTION;
USE `fencingclubdb`;
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (1, 'Bluegrass Fencers Club', 15, 'KY', 'Lexington', 28);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (2, 'Fencers Club Inc', 1, 'NY', 'New York', 89);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (3, 'Silicon Valley Fencing Center', 2, 'CA', 'Sunnyvale', 66);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (4, 'Massialas Foundation', 3, 'CA', 'San Francisco', 60);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (5, 'Gutkovskiy Fencing Academy', 4, 'NJ', 'Fair Lawn', 44);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (6, 'Marx Fencing Academy', 5, 'MA', 'Concord', 47);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (7, 'Star Fencing Academy', 6, 'MA', 'Needham', 44);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (8, 'V Fencing Club', 7, 'NJ', 'Livingston', 40);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (9, 'Renaissance Fencing Club', 8, 'MI', 'Troy', 46);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (10, 'LA International Fencing', 9, 'CA', 'Los Angeles', 30);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (11, 'Brooklyn Bridge Fencing Club', 10, 'NY', 'Brooklyn', 33);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (12, 'Tim Morehouse Fencing Club (Port Chester)', 11, 'NY', 'Port Chester', 31);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (13, 'Golubitsky Fencing Center', 12, 'CA', 'Tustin', 35);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (14, 'Moe Fencing Club LLC', 13, 'MA', 'Somerville', 34);
INSERT INTO `fencing_club` (`id`, `name`, `rank`, `state`, `city`, `rated_fencers`) VALUES (15, 'East Coast Fencing Club', 14, 'NY', 'Roslyn', 23);

COMMIT;

