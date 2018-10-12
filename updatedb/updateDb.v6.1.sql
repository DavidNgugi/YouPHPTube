SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `videos` 
ADD COLUMN `trailer1` VARCHAR(255) NULL DEFAULT NULL,
ADD COLUMN `trailer2` VARCHAR(255) NULL DEFAULT NULL,
ADD COLUMN `trailer3` VARCHAR(255) NULL DEFAULT NULL,
ADD COLUMN `rate` FLOAT(4,2) NULL DEFAULT NULL;

UPDATE configurations SET  version = '6.1', modified = now() WHERE id = 1;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;