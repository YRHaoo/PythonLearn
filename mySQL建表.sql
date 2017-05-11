create database university;   #创建数据库
use university;
CREATE TABLE `university`.`department` (       #建表主键是dept_name
  `dept_name` VARCHAR(15) NOT NULL,
  `building budget` INT UNSIGNED NULL,
  PRIMARY KEY (`dept_name`),
  UNIQUE INDEX `dept_name_UNIQUE` (`dept_name` ASC))ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `university`.`student` (           #建表主键是ID外键是dept_name
  `ID` INT UNSIGNED NOT NULL,
  `name` VARCHAR(25) NULL,
  `sex` CHAR(1) NULL,
  `age` INT UNSIGNED NULL,
  `emotion_state` VARCHAR(45) NULL,
  `dept_name` VARCHAR(15) NULL,
  PRIMARY KEY (`ID`),
  INDEX `1_idx` (`dept_name` ASC),
  CONSTRAINT `1`
    FOREIGN KEY (`dept_name`)
    REFERENCES `university`.`department` (`dept_name`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
CREATE TABLE `university`.`exam` (
  `student_ID` INT(10) UNSIGNED NOT NULL,
  `exam_name` VARCHAR(45) NOT NULL,
  `grade` INT UNSIGNED NULL,
  PRIMARY KEY (`student_ID`, `exam_name`),
  CONSTRAINT `fk_exam_1`
    FOREIGN KEY (`student_ID`)
    REFERENCES `university`.`student` (`ID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)ENGINE=InnoDB DEFAULT CHARSET=utf8;

