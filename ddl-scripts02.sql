/* Source-Staging of admissions_info */ 

CREATE TABLE `Stg_admissions_info` (
  `application_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `creation_date` CHAR(10) CHARACTER SET utf8 DEFAULT NULL,
  `last_updated_date` CHAR(10) CHARACTER SET utf8 DEFAULT NULL,
  `submitted_date` CHAR(10) CHARACTER SET utf8 DEFAULT NULL,
  `fee_payment_type` VARCHAR(16) CHARACTER SET utf8 DEFAULT NULL,
  `payment_card_type` VARCHAR(16) CHARACTER SET utf8 DEFAULT NULL,
  `applicant_last_name` VARCHAR(19) NOT NULL DEFAULT '',
  `applicant_first_name` VARCHAR(20) NOT NULL DEFAULT '',
  `applicant_middle_name` VARCHAR(21) NOT NULL DEFAULT '',
  `current_city` VARCHAR(32) CHARACTER SET utf8   DEFAULT '',
  `current_state_province` VARCHAR(32) CHARACTER SET utf8   DEFAULT '',
  `current_country` VARCHAR(32) CHARACTER SET utf8   DEFAULT '',
  `current_zipcode` VARCHAR(32) CHARACTER SET utf8   DEFAULT '',
  `email_address` VARCHAR(25)   DEFAULT '',
  `permanent_city` VARCHAR(32) CHARACTER SET utf8   DEFAULT '',
  `permanent_state_province` VARCHAR(32) CHARACTER SET utf8   DEFAULT '',
  `permanent_country` VARCHAR(32) CHARACTER SET utf8  DEFAULT '',
  `permanent_zipcode` VARCHAR(32) CHARACTER SET utf8 DEFAULT '',
  `country_of_citizenship` VARCHAR(32) CHARACTER SET utf8 DEFAULT NULL,
  `ethnicity_indian` VARCHAR(32) CHARACTER SET utf8 DEFAULT NULL,
  `ethnicity_asian` VARCHAR(32) CHARACTER SET utf8 DEFAULT NULL,
  `ethnicity_black` VARCHAR(32) CHARACTER SET utf8 DEFAULT NULL,
  `ethnicity_hawaiian` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `ethnicity_white` VARCHAR(32) CHARACTER SET utf8 DEFAULT NULL,
  `ethnicity_hispanic` VARCHAR(8) CHARACTER SET utf8 DEFAULT NULL,
  `gender` VARCHAR(16) CHARACTER SET utf8 DEFAULT NULL,
  `date_of_birth` VARCHAR(10) DEFAULT NULL,
  `department_name` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `intended_entry_term` VARCHAR(16) CHARACTER SET utf8 DEFAULT NULL,
  `program` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `current_county` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `gre_quantitative_perc` INT(8) DEFAULT NULL,
  `gre_analytical_perc` INT(8) DEFAULT NULL,
  `gre_verbal_perc` INT(8) DEFAULT NULL,
  `college_name_1` VARCHAR(128) CHARACTER SET utf8 DEFAULT NULL,
  `college_country_1` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `international_1` VARCHAR(1) DEFAULT NULL,
  `college_name_2` VARCHAR(128) CHARACTER SET utf8 DEFAULT NULL,
  `college_country_2` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `international_2` VARCHAR(1) DEFAULT NULL,
  `college_name_3` VARCHAR(128) CHARACTER SET utf8 DEFAULT NULL,
  `college_country_3` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `international_3` VARCHAR(1) DEFAULT NULL,
  `rec_firstname_1` VARCHAR(17) DEFAULT NULL,
  `rec_lastname_1` VARCHAR(16) DEFAULT NULL,
  `rec_country_1` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `rec_lttr_received_dt_1` VARCHAR(20) CHARACTER SET utf8 DEFAULT NULL,
  `rec_firstname_2` VARCHAR(17) DEFAULT NULL,
  `rec_lastname_2` VARCHAR(16) DEFAULT NULL,
  `rec_country_2` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `rec_lttr_received_dt_2` VARCHAR(20) CHARACTER SET utf8 DEFAULT NULL,
  `rec_firstname_3` VARCHAR(17) DEFAULT NULL,
  `rec_lastname_3` VARCHAR(16) DEFAULT NULL,
  `rec_country_3` VARCHAR(64) CHARACTER SET utf8 DEFAULT NULL,
  `rec_lttr_received_dt_3` VARCHAR(20) CHARACTER SET utf8 DEFAULT NULL,
  `prog_actn` VARCHAR(8) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Dim_Date*/ 

CREATE TABLE `dim_date` (
  `date_key` INT(11) DEFAULT NULL,
  `the_date` VARCHAR(30),
  `the_year` SMALLINT(6) DEFAULT NULL,
  `the_quarter` TINYINT(4) DEFAULT NULL,
  `the_month` TINYINT(4) DEFAULT NULL,
  `the_week` TINYINT(4) DEFAULT NULL,
  `day_of_year` SMALLINT(6) DEFAULT NULL,
  `day_of_month` TINYINT(4) DEFAULT NULL,
  `day_of_week` TINYINT(4) DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

/* Dim_Department */

CREATE TABLE `dim_department` (
  `Dept_ID` VARCHAR(16) NOT NULL,
  `department_name` VARCHAR(64) DEFAULT NULL,
  `program` VARCHAR(64) DEFAULT NULL,
  PRIMARY KEY (`Dept_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/* Dim_Prg_act */

CREATE TABLE `dim_prg_act` (
  `prog_actn_ID` VARCHAR(8) NOT NULL,
  `prog_actn` VARCHAR(8) DEFAULT NULL,
  `is_applied` BINARY(1) DEFAULT NULL,
  `is_admitted` BINARY(1) DEFAULT NULL,
  `is_accepted` BINARY(1) DEFAULT NULL,
  PRIMARY KEY (`prog_actn_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Dim_region*/

CREATE TABLE `dim_region` (
  `Region_ID` INT AUTO_INCREMENT,
  `country` VARCHAR(32)  DEFAULT '' ,
  `state` VARCHAR(32)  DEFAULT '',
  `city` VARCHAR(32)  DEFAULT '',
  `zipcode` VARCHAR(32)  DEFAULT '',
  PRIMARY KEY (`Region_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Dim_stud_application*/

CREATE TABLE `dim_stud_application` (
 `application_id` INT(10) NOT NULL,
 `applicant_last_name` VARCHAR(19) NOT NULL DEFAULT '',
 `applicant_first_name` VARCHAR(20) NOT NULL DEFAULT '',
 `applicant_middle_name` VARCHAR(21) NOT NULL DEFAULT '',
 `name_prefix` VARCHAR(8) DEFAULT NULL,
 `email_address` VARCHAR(25) NOT NULL DEFAULT '',
 `gender` VARCHAR(16) DEFAULT NULL,
 `date_of_birth` VARCHAR(10) DEFAULT NULL,
 `country_of_citizenship` VARCHAR(32) DEFAULT NULL,
 `native_language_response` VARCHAR(64) DEFAULT NULL,
 `financial_aid_response` VARCHAR(8) DEFAULT NULL,
 `external_support` VARCHAR(8) DEFAULT NULL,
 `current_city` VARCHAR(32) DEFAULT NULL,
 `current_state_province` VARCHAR(32) DEFAULT NULL,
 `current_country` VARCHAR(32) DEFAULT NULL,
 `current_zipcode` VARCHAR(32) DEFAULT NULL,
 `permanent_city` VARCHAR(32) DEFAULT NULL,
 `permanent_state_province` VARCHAR(32) DEFAULT NULL,
 `permanent_zipcode` VARCHAR(32) DEFAULT NULL,
 `permanent_county` VARCHAR(32) DEFAULT NULL,
 `current_county` VARCHAR(32) DEFAULT NULL,
 `college_name_1` VARCHAR(128) DEFAULT NULL,
 `college_country_1` VARCHAR(64) DEFAULT NULL,
 `international_1` VARCHAR(1) DEFAULT NULL,
 `college_name_2` VARCHAR(128) DEFAULT NULL,
 `college_country_2` VARCHAR(64) DEFAULT NULL,
 `international_2` VARCHAR(1) DEFAULT NULL,
 `college_name_3` VARCHAR(128) DEFAULT NULL,
 `college_country_3` VARCHAR(64) DEFAULT NULL,
 `international_3` VARCHAR(1) DEFAULT NULL,
 `rec_firstname_1` VARCHAR(17) DEFAULT NULL,
 `rec_lastname_1` VARCHAR(16) DEFAULT NULL,
 `rec_country_1` VARCHAR(64) DEFAULT NULL,
 `rec_lttr_received_dt_1` VARCHAR(20) DEFAULT NULL,
 `rec_firstname_2` VARCHAR(17) DEFAULT NULL,
 `rec_lastname_2` VARCHAR(16) DEFAULT NULL,
 `rec_country_2` VARCHAR(64) DEFAULT NULL,
 `rec_lttr_received_dt_2` VARCHAR(20) DEFAULT NULL,
 `rec_firstname_3` VARCHAR(17) DEFAULT NULL,
 `rec_lastname_3` VARCHAR(16) DEFAULT NULL,
 `rec_country_3` VARCHAR(64) DEFAULT NULL,
 `rec_lttr_received_dt_3` VARCHAR(20) DEFAULT NULL,
 `gre_quantitative_perc` INT(8) DEFAULT NULL,
 `gre_analytical_perc` INT(8) DEFAULT NULL,
 `gre_verbal_perc` INT(8) DEFAULT NULL,
 `intended_entry_term` VARCHAR(16) DEFAULT NULL,
 PRIMARY KEY (`application_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
/*Dim_Junk*/

CREATE TABLE dim_junked
( Junk_Id INT(50) NOT NULL AUTO_INCREMENT,
group_key VARCHAR(50),
`ethnicity_indian` VARCHAR(50) NOT NULL DEFAULT ' ',
`ethnicity_asian` VARCHAR(50) NOT NULL DEFAULT ' ',
`ethnicity_black` VARCHAR(50) NOT NULL DEFAULT ' ',
`ethnicity_hawaiian` VARCHAR(50) NOT NULL DEFAULT ' ',
`ethnicity_white` VARCHAR(50) NOT NULL DEFAULT ' ',
`ethnicity_hispanic` VARCHAR(50) NOT NULL DEFAULT ' ',
PRIMARY KEY (Junk_id));

/*Fact_application*/

CREATE TABLE `fact_application` (
  `FID` INT(11) NOT NULL AUTO_INCREMENT,
  `application_id` INT(10) ,
  `Dept_ID` VARCHAR(16) ,
  `Junk_ID` VARCHAR(50) ,
  `prog_actn_ID` VARCHAR(8) ,
  `Created_date_key` INT(11) ,
  `Submitted_date_key` INT(11) ,
  `Last_Updated_date_key` INT(11) ,
  `Region_ID` INT(11) ,
    `gre_quantitative_perc` INT(8) ,
  `gre_analytical_perc` INT(8) ,
  `gre_verbal_perc` INT(8) ,
  `intended_entry_term` VARCHAR(16) ,
  `is_applied` BINARY(1) ,
  `is_admitted` BINARY(1) ,
  `is_accepted` BINARY(1) ,
  PRIMARY KEY (`FID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

 


  
