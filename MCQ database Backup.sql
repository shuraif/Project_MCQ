--------------------------------------------------------
--  File created - Monday-July-22-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence APPLY_ID
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."APPLY_ID"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 220 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EASY_QUESTION_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EASY_QUESTION_SEQUENCE"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 340 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HARD_QUESTION_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."HARD_QUESTION_SEQUENCE"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 220 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ID"  MINVALUE 1000 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence IDGEN
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."IDGEN"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 140 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence M
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."M"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence M1
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."M1"  MINVALUE 1000 MAXVALUE 9999 INCREMENT BY 1 START WITH 1020 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MED_QUESTION_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."MED_QUESTION_SEQUENCE"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 240 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RANDOMNUM
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."RANDOMNUM"  MINVALUE 1000 MAXVALUE 9999 INCREMENT BY 1 START WITH 1002 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RANDOMNUM2
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."RANDOMNUM2"  MINVALUE 1000 MAXVALUE 9999 INCREMENT BY 1 START WITH 1000 CACHE 20 NOORDER  CYCLE ;
--------------------------------------------------------
--  DDL for Sequence RAND_QUESTION_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."RAND_QUESTION_SEQUENCE"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 600 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SCHEDULE_PASS_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SCHEDULE_PASS_SEQUENCE"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 340 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SCHEDULE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SCHEDULE_SEQUENCE"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 500 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SCORE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SCORE_SEQUENCE"  MINVALUE 100 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 320 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."USER_SEQUENCE"  MINVALUE 1 MAXVALUE 1000000 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMIN_LOGIN
--------------------------------------------------------

  CREATE TABLE "HR"."ADMIN_LOGIN" 
   (	"ADMIN_ID" VARCHAR2(20 BYTE), 
	"ADMIN_PASSWORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BANK_AC
--------------------------------------------------------

  CREATE TABLE "HR"."BANK_AC" 
   (	"CUSTOMER_ID" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"CARD_NO" NUMBER, 
	"PIN_NUMBER" NUMBER, 
	"BALANCE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COM
--------------------------------------------------------

  CREATE TABLE "HR"."COM" 
   (	"EMAIL" VARCHAR2(60 BYTE), 
	"DEPARTMENT" VARCHAR2(20 BYTE), 
	"COMPLAINT" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMP_USER
--------------------------------------------------------

  CREATE TABLE "HR"."COMP_USER" 
   (	"EMAIL" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------

  CREATE TABLE "HR"."COUNTRIES" 
   (	"COUNTRY_ID" CHAR(2 BYTE), 
	"COUNTRY_NAME" VARCHAR2(40 BYTE), 
	"REGION_ID" NUMBER, 
	 CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 PCTTHRESHOLD 50;

   COMMENT ON COLUMN "HR"."COUNTRIES"."COUNTRY_ID" IS 'Primary key of countries table.';
   COMMENT ON COLUMN "HR"."COUNTRIES"."COUNTRY_NAME" IS 'Country name';
   COMMENT ON COLUMN "HR"."COUNTRIES"."REGION_ID" IS 'Region ID for the country. Foreign key to region_id column in the departments table.';
   COMMENT ON TABLE "HR"."COUNTRIES"  IS 'country table. Contains 25 rows. References with locations table.';
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "HR"."DEPARTMENTS" 
   (	"DEPARTMENT_ID" NUMBER(4,0), 
	"DEPARTMENT_NAME" VARCHAR2(30 BYTE), 
	"MANAGER_ID" NUMBER(6,0), 
	"LOCATION_ID" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."DEPARTMENTS"."DEPARTMENT_ID" IS 'Primary key column of departments table.';
   COMMENT ON COLUMN "HR"."DEPARTMENTS"."DEPARTMENT_NAME" IS 'A not null column that shows name of a department. Administration,
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public
Relations, Sales, Finance, and Accounting. ';
   COMMENT ON COLUMN "HR"."DEPARTMENTS"."MANAGER_ID" IS 'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.';
   COMMENT ON COLUMN "HR"."DEPARTMENTS"."LOCATION_ID" IS 'Location id where a department is located. Foreign key to location_id column of locations table.';
   COMMENT ON TABLE "HR"."DEPARTMENTS"  IS 'Departments table that shows details of departments where employees
work. Contains 27 rows; references with locations, employees, and job_history tables.';
--------------------------------------------------------
--  DDL for Table EASY_QUESTION
--------------------------------------------------------

  CREATE TABLE "HR"."EASY_QUESTION" 
   (	"QUESTION_ID" VARCHAR2(20 BYTE), 
	"QUESTION" VARCHAR2(2048 BYTE), 
	"OPTION_A" VARCHAR2(1024 BYTE), 
	"OPTION_B" VARCHAR2(1024 BYTE), 
	"OPTION_C" VARCHAR2(1024 BYTE), 
	"OPTION_D" VARCHAR2(1024 BYTE), 
	"ANSWER" VARCHAR2(3 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "HR"."EMPLOYEE" 
   (	"EMPID" NUMBER(6,0), 
	"EMPNAME" VARCHAR2(25 BYTE), 
	"SALARY" NUMBER(20,0), 
	"CITY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "HR"."EMPLOYEES" 
   (	"EMPLOYEE_ID" NUMBER(6,0), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE), 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"HIRE_DATE" DATE, 
	"JOB_ID" VARCHAR2(10 BYTE), 
	"SALARY" NUMBER(8,2), 
	"COMMISSION_PCT" NUMBER(2,2), 
	"MANAGER_ID" NUMBER(6,0), 
	"DEPARTMENT_ID" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."EMPLOYEES"."EMPLOYEE_ID" IS 'Primary key of employees table.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."FIRST_NAME" IS 'First name of the employee. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."LAST_NAME" IS 'Last name of the employee. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."EMAIL" IS 'Email id of the employee';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."PHONE_NUMBER" IS 'Phone number of the employee; includes country code and area code';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."HIRE_DATE" IS 'Date when the employee started on this job. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."JOB_ID" IS 'Current job of the employee; foreign key to job_id column of the
jobs table. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."SALARY" IS 'Monthly salary of the employee. Must be greater
than zero (enforced by constraint emp_salary_min)';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."COMMISSION_PCT" IS 'Commission percentage of the employee; Only employees in sales
department elgible for commission percentage';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."MANAGER_ID" IS 'Manager id of the employee; has same domain as manager_id in
departments table. Foreign key to employee_id column of employees table.
(useful for reflexive joins and CONNECT BY query)';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."DEPARTMENT_ID" IS 'Department id where employee works; foreign key to department_id
column of the departments table';
   COMMENT ON TABLE "HR"."EMPLOYEES"  IS 'employees table. Contains 107 rows. References with departments,
jobs, job_history tables. Contains a self reference.';
--------------------------------------------------------
--  DDL for Table EMPLOYEE_SPRING
--------------------------------------------------------

  CREATE TABLE "HR"."EMPLOYEE_SPRING" 
   (	"ID" NUMBER(10,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"SALARY" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXAM_REGISTRATION
--------------------------------------------------------

  CREATE TABLE "HR"."EXAM_REGISTRATION" 
   (	"EXAM_REG_ID" VARCHAR2(20 BYTE), 
	"EXAM_ID" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"STATUS" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXAM_SCHEDULE
--------------------------------------------------------

  CREATE TABLE "HR"."EXAM_SCHEDULE" 
   (	"EXAM_ID" VARCHAR2(20 BYTE), 
	"EXAM_DATE" DATE, 
	"EXAM_TIME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXAM_TABLE
--------------------------------------------------------

  CREATE TABLE "HR"."EXAM_TABLE" 
   (	"EXAM_ID" VARCHAR2(20 BYTE), 
	"EXAM_DATE" VARCHAR2(20 BYTE), 
	"START_TIME" VARCHAR2(20 BYTE), 
	"END_TIME" VARCHAR2(20 BYTE), 
	"SEAT" NUMBER, 
	"EXAM_PASS" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HARD_QUESTION
--------------------------------------------------------

  CREATE TABLE "HR"."HARD_QUESTION" 
   (	"QUESTION_ID" VARCHAR2(20 BYTE), 
	"QUESTION" VARCHAR2(2048 BYTE), 
	"OPTION_A" VARCHAR2(1024 BYTE), 
	"OPTION_B" VARCHAR2(1024 BYTE), 
	"OPTION_C" VARCHAR2(1024 BYTE), 
	"OPTION_D" VARCHAR2(1024 BYTE), 
	"ANSWER" VARCHAR2(3 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------

  CREATE TABLE "HR"."ITEM" 
   (	"ID" NUMBER, 
	"ITEM_NAME" VARCHAR2(20 BYTE), 
	"ITEM_PRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JOBS
--------------------------------------------------------

  CREATE TABLE "HR"."JOBS" 
   (	"JOB_ID" VARCHAR2(10 BYTE), 
	"JOB_TITLE" VARCHAR2(35 BYTE), 
	"MIN_SALARY" NUMBER(6,0), 
	"MAX_SALARY" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."JOBS"."JOB_ID" IS 'Primary key of jobs table.';
   COMMENT ON COLUMN "HR"."JOBS"."JOB_TITLE" IS 'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';
   COMMENT ON COLUMN "HR"."JOBS"."MIN_SALARY" IS 'Minimum salary for a job title.';
   COMMENT ON COLUMN "HR"."JOBS"."MAX_SALARY" IS 'Maximum salary for a job title';
   COMMENT ON TABLE "HR"."JOBS"  IS 'jobs table with job titles and salary ranges. Contains 19 rows.
References with employees and job_history table.';
--------------------------------------------------------
--  DDL for Table JOB_HISTORY
--------------------------------------------------------

  CREATE TABLE "HR"."JOB_HISTORY" 
   (	"EMPLOYEE_ID" NUMBER(6,0), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"JOB_ID" VARCHAR2(10 BYTE), 
	"DEPARTMENT_ID" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."JOB_HISTORY"."EMPLOYEE_ID" IS 'A not null column in the complex primary key employee_id+start_date.
Foreign key to employee_id column of the employee table';
   COMMENT ON COLUMN "HR"."JOB_HISTORY"."START_DATE" IS 'A not null column in the complex primary key employee_id+start_date.
Must be less than the end_date of the job_history table. (enforced by
constraint jhist_date_interval)';
   COMMENT ON COLUMN "HR"."JOB_HISTORY"."END_DATE" IS 'Last day of the employee in this job role. A not null column. Must be
greater than the start_date of the job_history table.
(enforced by constraint jhist_date_interval)';
   COMMENT ON COLUMN "HR"."JOB_HISTORY"."JOB_ID" IS 'Job role in which the employee worked in the past; foreign key to
job_id column in the jobs table. A not null column.';
   COMMENT ON COLUMN "HR"."JOB_HISTORY"."DEPARTMENT_ID" IS 'Department id in which the employee worked in the past; foreign key to deparment_id column in the departments table';
   COMMENT ON TABLE "HR"."JOB_HISTORY"  IS 'Table that stores job history of the employees. If an employee
changes departments within the job or changes jobs within the department,
new rows get inserted into this table with old job information of the
employee. Contains a complex primary key: employee_id+start_date.
Contains 25 rows. References with jobs, employees, and departments tables.';
--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------

  CREATE TABLE "HR"."LOCATIONS" 
   (	"LOCATION_ID" NUMBER(4,0), 
	"STREET_ADDRESS" VARCHAR2(40 BYTE), 
	"POSTAL_CODE" VARCHAR2(12 BYTE), 
	"CITY" VARCHAR2(30 BYTE), 
	"STATE_PROVINCE" VARCHAR2(25 BYTE), 
	"COUNTRY_ID" CHAR(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."LOCATIONS"."LOCATION_ID" IS 'Primary key of locations table';
   COMMENT ON COLUMN "HR"."LOCATIONS"."STREET_ADDRESS" IS 'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';
   COMMENT ON COLUMN "HR"."LOCATIONS"."POSTAL_CODE" IS 'Postal code of the location of an office, warehouse, or production site
of a company. ';
   COMMENT ON COLUMN "HR"."LOCATIONS"."CITY" IS 'A not null column that shows city where an office, warehouse, or
production site of a company is located. ';
   COMMENT ON COLUMN "HR"."LOCATIONS"."STATE_PROVINCE" IS 'State or Province where an office, warehouse, or production site of a
company is located.';
   COMMENT ON COLUMN "HR"."LOCATIONS"."COUNTRY_ID" IS 'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';
   COMMENT ON TABLE "HR"."LOCATIONS"  IS 'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. Contains 23 rows; references with the
departments and countries tables. ';
--------------------------------------------------------
--  DDL for Table MED_QUESTION
--------------------------------------------------------

  CREATE TABLE "HR"."MED_QUESTION" 
   (	"QUESTION_ID" VARCHAR2(20 BYTE), 
	"QUESTION" VARCHAR2(2048 BYTE), 
	"OPTION_A" VARCHAR2(1024 BYTE), 
	"OPTION_B" VARCHAR2(1024 BYTE), 
	"OPTION_C" VARCHAR2(1024 BYTE), 
	"OPTION_D" VARCHAR2(1024 BYTE), 
	"ANSWER" VARCHAR2(3 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MYTABLE
--------------------------------------------------------

  CREATE TABLE "HR"."MYTABLE" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------

  CREATE TABLE "HR"."PRODUCTS" 
   (	"PRODUCT_ID" NUMBER(10,0), 
	"SUPPLIER_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PURCHASE
--------------------------------------------------------

  CREATE TABLE "HR"."PURCHASE" 
   (	"ID" NUMBER, 
	"COUNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QWE
--------------------------------------------------------

  CREATE TABLE "HR"."QWE" 
   (	"EMP_ID" NUMBER, 
	"DEPT_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RANDOM_QUESTION
--------------------------------------------------------

  CREATE TABLE "HR"."RANDOM_QUESTION" 
   (	"ROW_ID" VARCHAR2(20 BYTE), 
	"EXAM_ID" VARCHAR2(20 BYTE), 
	"QUESTION_ID" VARCHAR2(20 BYTE), 
	"TYPE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------

  CREATE TABLE "HR"."REGIONS" 
   (	"REGION_ID" NUMBER, 
	"REGION_NAME" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REGISTER
--------------------------------------------------------

  CREATE TABLE "HR"."REGISTER" 
   (	"NAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"COUNTRY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SCORE
--------------------------------------------------------

  CREATE TABLE "HR"."SCORE" 
   (	"SCORE_ID" VARCHAR2(20 BYTE), 
	"SCHEDULE_ID" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"SCORE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEQUENCE
--------------------------------------------------------

  CREATE TABLE "HR"."SEQUENCE" 
   (	"SEQ_NAME" VARCHAR2(50 BYTE), 
	"SEQ_COUNT" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "HR"."STUDENT" 
   (	"STUDENTID" NUMBER(19,0), 
	"STUDENTNAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TEMP
--------------------------------------------------------

  CREATE TABLE "HR"."TEMP" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TEST
--------------------------------------------------------

  CREATE TABLE "HR"."TEST" 
   (	"EMPLOYEE_ID" NUMBER(6,0), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"SALARY" NUMBER(8,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_LOGIN
--------------------------------------------------------

  CREATE TABLE "HR"."USER_LOGIN" 
   (	"ID" NUMBER(10,0), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"USER_PASSWORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_REGISTRATION
--------------------------------------------------------

  CREATE TABLE "HR"."USER_REGISTRATION" 
   (	"USER_ID" NUMBER(10,0), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"MOBILE" VARCHAR2(20 BYTE), 
	"STATUS" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_TABLE
--------------------------------------------------------

  CREATE TABLE "HR"."USER_TABLE" 
   (	"USER_NAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"TYPE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY
;
REM INSERTING into HR.ADMIN_LOGIN
SET DEFINE OFF;
Insert into HR.ADMIN_LOGIN (ADMIN_ID,ADMIN_PASSWORD) values ('admin','admin');
REM INSERTING into HR.BANK_AC
SET DEFINE OFF;
Insert into HR.BANK_AC (CUSTOMER_ID,NAME,CARD_NO,PIN_NUMBER,BALANCE) values (123,'qwe',123,123,935500);
REM INSERTING into HR.COM
SET DEFINE OFF;
Insert into HR.COM (EMAIL,DEPARTMENT,COMPLAINT) values ('q@gmail','java','this may work');
REM INSERTING into HR.COMP_USER
SET DEFINE OFF;
Insert into HR.COMP_USER (EMAIL) values ('abc');
Insert into HR.COMP_USER (EMAIL) values ('abc@gmail');
Insert into HR.COMP_USER (EMAIL) values ('qwe@gmail.com');
Insert into HR.COMP_USER (EMAIL) values ('q@gmail.com');
REM INSERTING into HR.COUNTRIES
SET DEFINE OFF;
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AR','Argentina',2);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AU','Australia',3);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BE','Belgium',1);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BR','Brazil',2);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CA','Canada',2);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CH','Switzerland',1);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CN','China',3);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DE','Germany',1);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DK','Denmark',1);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('EG','Egypt',4);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('FR','France',1);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IL','Israel',4);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IN','India',3);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IT','Italy',1);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('JP','Japan',3);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('KW','Kuwait',4);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ML','Malaysia',3);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('MX','Mexico',2);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NG','Nigeria',4);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NL','Netherlands',1);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('SG','Singapore',3);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('UK','United Kingdom',1);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('US','United States of America',2);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZM','Zambia',4);
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZW','Zimbabwe',4);
REM INSERTING into HR.DEPARTMENTS
SET DEFINE OFF;
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (10,'Administration',200,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (20,'Marketing',201,1800);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (30,'Purchasing',114,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (40,'Human Resources',203,2400);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (50,'Shipping',121,1500);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (60,'IT',103,1400);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (70,'Public Relations',204,2700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (80,'Sales',145,2500);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (90,'Executive',100,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (100,'Finance',108,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (110,'Accounting',205,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (120,'Treasury',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (130,'Corporate Tax',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (140,'Control And Credit',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (150,'Shareholder Services',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (160,'Benefits',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (170,'Manufacturing',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (180,'Construction',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (190,'Contracting',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (200,'Operations',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (210,'IT Support',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (220,'NOC',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (230,'IT Helpdesk',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (240,'Government Sales',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (250,'Retail Sales',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (260,'Recruiting',null,1700);
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (270,'Payroll',null,1700);
REM INSERTING into HR.EASY_QUESTION
SET DEFINE OFF;
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_106','	
What is the numerical range of a char.?','-128 to 127',' -(215) to (215) - 1','0 to 32767',' 0 to 65535','d');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_110','Which cause a compiler error?','int[ ] scores = {3, 5, 7};','int [ ][ ] scores = {2,7,6}, {9,3,45};','String cats[ ] = {"Fluffy", "Spot", "Zeus"};','boolean results[ ] = new boolean [] {true, false, true};','b');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_116','What will be printed as the output of the following program?public class testincr{public static void main(String args[]){int i = 0;i = i++ + i;System.out.println(?I = ? +i);}}',' I = 0','   I = 1',' I = 2','  Compile-time Error.','b');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_118','Consider the two methods (within the same class)
public static int foo(int a, String s)
{
s = ?Yellow?;
a=a+2;
return a;
}
public static void bar()
{
int a=3;
String s = ?Blue?;
a = foo(a,s);
System.out.println(?a=?+a+? s=?+s);
}
public static void main(String args[])
{
bar();
}

What is printed on execution of these methods?',' a = 3 s = Blue','a = 5 s = Yellow','a = 3 s = Yellow','a = 5 s = Blue','d');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_102','Which is a reserved word in the Java programming language?','method','native','subclasses','reference','b');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_107','You want subclasses in any package to have access to members of a superclass. Which is the most restrictive access that accomplishes this objective?','public','private','protected','transient','c');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_112','class A 
{  
    protected int method1(int a, int b) 
    {
        return 0; 
    } 
}
Which is valid in a class that extends class A?','public int method1(int a, int b) {return 0; }','private int method1(int a, int b) { return 0; }','public short method1(int a, int b) { return 0; }','static protected int method1(int a, int b) { return 0; }','a');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_117','What is the output of the following program:

public class testmeth
{
static int i = 1;
public static void main(String args[])
{
System.out.println(i+? , ?);
m(i);
System.out.println(i);
}
public void m(int i)
{
i += 2;
}
}',' 1 , 3',' 3 , 1',' 1 , 1 ',' none of the above.','c');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_120','	
What will be the output of the program?

class Test 
{
    public static void main(String [] args) 
    {
        Test p = new Test();
        p.start();
    }

    void start() 
    {
        boolean b1 = false;
        boolean b2 = fix(b1);
        System.out.println(b1 + " " + b2);
    }

    boolean fix(boolean b1) 
    {
        b1 = true;
        return b1;
    }
}','true true','false true','true false','false false','b');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_103','Which is a valid keyword in java?','interface','string','Float','unsigned','a');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_108','public class Outer 
{ 
    public void someOuterMethod() 
    {
        //Line 5 
    } 
    public class Inner { } 

    public static void main(String[] argv) 
    {
        Outer ot = new Outer(); 
        //Line 10
    } 
} ','new Inner(); //At line 5','new Inner(); //At line 10','new out.Inner(); //At line 10','new Outer.Inner(); //At line 10','a');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_113','	
Which one creates an instance of an array?','int[ ] ia = new int[15];','float fa = new float[20];','char[ ] ca = "Some String";','int ia[ ] [ ] = { 4, 5, 6 }, { 1,2,3 };','a');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_115',' The default value of a static integer variable of a class in Java is,','0','1','Garbage value','Null','a');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_100','Which one of these lists contains only Java programming language keywords?','class, if, void, long, Int, continue','goto, instanceof, native, finally, default, throws','try, virtual, throw, final, volatile, transient','strictfp, constant, super, implements, do','b');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_104','Which is the valid declarations within an interface definition?','public double methoda();','public final double methoda();','static void methoda(double d1);','protected void methoda(double d1);','a');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_111','	
What is the widest valid returnType for methodA in line 3?

public class ReturnIt 
{ 
    returnType methodA(byte x, double y) /* Line 3 */
    { 
        return (long)x / y * 2; 
    } 
}','int','byte','long','double','d');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_119','What is the output of the following code:

class eq
{
public static void main(String args[])
{
String s1 = ?Hello?;
String s2 = new String(s1);
System.out.println(s1==s2);
}
}','true ','false','0','1','b');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_101','Which will legally declare, construct, and initialize an array?','int [] myList = {"1", "2", "3"};','int [] myList = (5, 8, 2);','int myList [] [] = {4,9,7,0};','int myList [] = {4, 3, 7};','d');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_105','	
Which is a valid declarations of a String?','String s1 = null;','String s2 = ''null'';','String s3 = (String) ''abc'';','String s4 = (String) ''\ufeed'';','a');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_109','public class Test { }
What is the prototype of the default constructor?','Test( )','Test(void)','public Test( )','public Test(void)','c');
Insert into HR.EASY_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('easy_114','	
Which one cause a compiler error..?','float[ ] f = new float(3);',' float[ ]f1 = new float[3];','float f3[ ] = new float[3];',' float f5[ ] = {1.0f, 2.0f, 2.0f};','a');
REM INSERTING into HR.EMPLOYEE
SET DEFINE OFF;
Insert into HR.EMPLOYEE (EMPID,EMPNAME,SALARY,CITY) values (1001,'jack',2500,'chennai');
Insert into HR.EMPLOYEE (EMPID,EMPNAME,SALARY,CITY) values (1003,'sparow',7500,'dreamland');
Insert into HR.EMPLOYEE (EMPID,EMPNAME,SALARY,CITY) values (1,'govind',10000,'alappy');
Insert into HR.EMPLOYEE (EMPID,EMPNAME,SALARY,CITY) values (100,'shuru',99999,'kannur');
Insert into HR.EMPLOYEE (EMPID,EMPNAME,SALARY,CITY) values (2,'aaaaaa',0,'bbbbb');
Insert into HR.EMPLOYEE (EMPID,EMPNAME,SALARY,CITY) values (3,'shanib',10000,'tpba');
Insert into HR.EMPLOYEE (EMPID,EMPNAME,SALARY,CITY) values (5,'jaban',3000,'jajaj');
REM INSERTING into HR.EMPLOYEES
SET DEFINE OFF;
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (100,'Steven','King','SKING','515.123.4567',to_date('17-JUN-03','DD-MON-RR'),'AD_PRES',24000,null,null,90);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (101,'Neena','Kochhar','NKOCHHAR','515.123.4568',to_date('21-SEP-05','DD-MON-RR'),'AD_VP',17000,null,100,90);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (102,'Lex','De Haan','LDEHAAN','515.123.4569',to_date('13-JAN-01','DD-MON-RR'),'AD_VP',17000,null,100,90);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (103,'Alexander','Hunold','AHUNOLD','590.423.4567',to_date('03-JAN-06','DD-MON-RR'),'IT_PROG',9000,null,102,60);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (104,'Bruce','Ernst','BERNST','590.423.4568',to_date('21-MAY-07','DD-MON-RR'),'IT_PROG',6000,null,103,60);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (105,'David','Austin','DAUSTIN','590.423.4569',to_date('25-JUN-05','DD-MON-RR'),'IT_PROG',4800,null,103,60);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (106,'Valli','Pataballa','VPATABAL','590.423.4560',to_date('05-FEB-06','DD-MON-RR'),'IT_PROG',4800,null,103,60);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (107,'Diana','Lorentz','DLORENTZ','590.423.5567',to_date('07-FEB-07','DD-MON-RR'),'IT_PROG',4200,null,103,60);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (108,'Nancy','Greenberg','NGREENBE','515.124.4569',to_date('17-AUG-02','DD-MON-RR'),'FI_MGR',12008,null,101,100);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (109,'Daniel','Faviet','DFAVIET','515.124.4169',to_date('16-AUG-02','DD-MON-RR'),'FI_ACCOUNT',9000,null,108,100);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (110,'John','Chen','JCHEN','515.124.4269',to_date('28-SEP-05','DD-MON-RR'),'FI_ACCOUNT',8200,null,108,100);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (111,'Ismael','Sciarra','ISCIARRA','515.124.4369',to_date('30-SEP-05','DD-MON-RR'),'FI_ACCOUNT',7700,null,108,100);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (112,'Jose Manuel','Urman','JMURMAN','515.124.4469',to_date('07-MAR-06','DD-MON-RR'),'FI_ACCOUNT',7800,null,108,100);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (113,'Luis','Popp','LPOPP','515.124.4567',to_date('07-DEC-07','DD-MON-RR'),'FI_ACCOUNT',6900,null,108,100);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (114,'Den','Raphaely','DRAPHEAL','515.127.4561',to_date('07-DEC-02','DD-MON-RR'),'PU_MAN',11000,null,100,30);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (115,'Alexander','Khoo','AKHOO','515.127.4562',to_date('18-MAY-03','DD-MON-RR'),'PU_CLERK',3100,null,114,30);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (116,'Shelli','Baida','SBAIDA','515.127.4563',to_date('24-DEC-05','DD-MON-RR'),'PU_CLERK',2900,null,114,30);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (117,'Sigal','Tobias','STOBIAS','515.127.4564',to_date('24-JUL-05','DD-MON-RR'),'PU_CLERK',2800,null,114,30);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (118,'Guy','Himuro','GHIMURO','515.127.4565',to_date('15-NOV-06','DD-MON-RR'),'PU_CLERK',2600,null,114,30);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (119,'Karen','Colmenares','KCOLMENA','515.127.4566',to_date('10-AUG-07','DD-MON-RR'),'PU_CLERK',2500,null,114,30);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (120,'Matthew','Weiss','MWEISS','650.123.1234',to_date('18-JUL-04','DD-MON-RR'),'ST_MAN',8000,null,100,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (121,'Adam','Fripp','AFRIPP','650.123.2234',to_date('10-APR-05','DD-MON-RR'),'ST_MAN',8200,null,100,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (122,'Payam','Kaufling','PKAUFLIN','650.123.3234',to_date('01-MAY-03','DD-MON-RR'),'ST_MAN',7900,null,100,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (123,'Shanta','Vollman','SVOLLMAN','650.123.4234',to_date('10-OCT-05','DD-MON-RR'),'ST_MAN',6500,null,100,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (124,'Kevin','Mourgos','KMOURGOS','650.123.5234',to_date('16-NOV-07','DD-MON-RR'),'ST_MAN',5800,null,100,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (125,'Julia','Nayer','JNAYER','650.124.1214',to_date('16-JUL-05','DD-MON-RR'),'ST_CLERK',3200,null,120,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (126,'Irene','Mikkilineni','IMIKKILI','650.124.1224',to_date('28-SEP-06','DD-MON-RR'),'ST_CLERK',2700,null,120,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (127,'James','Landry','JLANDRY','650.124.1334',to_date('14-JAN-07','DD-MON-RR'),'ST_CLERK',2400,null,120,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (128,'Steven','Markle','SMARKLE','650.124.1434',to_date('08-MAR-08','DD-MON-RR'),'ST_CLERK',2200,null,120,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (129,'Laura','Bissot','LBISSOT','650.124.5234',to_date('20-AUG-05','DD-MON-RR'),'ST_CLERK',3300,null,121,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (130,'Mozhe','Atkinson','MATKINSO','650.124.6234',to_date('30-OCT-05','DD-MON-RR'),'ST_CLERK',2800,null,121,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (131,'James','Marlow','JAMRLOW','650.124.7234',to_date('16-FEB-05','DD-MON-RR'),'ST_CLERK',2500,null,121,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (132,'TJ','Olson','TJOLSON','650.124.8234',to_date('10-APR-07','DD-MON-RR'),'ST_CLERK',2100,null,121,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (133,'Jason','Mallin','JMALLIN','650.127.1934',to_date('14-JUN-04','DD-MON-RR'),'ST_CLERK',3300,null,122,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (134,'Michael','Rogers','MROGERS','650.127.1834',to_date('26-AUG-06','DD-MON-RR'),'ST_CLERK',2900,null,122,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (135,'Ki','Gee','KGEE','650.127.1734',to_date('12-DEC-07','DD-MON-RR'),'ST_CLERK',2400,null,122,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (136,'Hazel','Philtanker','HPHILTAN','650.127.1634',to_date('06-FEB-08','DD-MON-RR'),'ST_CLERK',2200,null,122,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (137,'Renske','Ladwig','RLADWIG','650.121.1234',to_date('14-JUL-03','DD-MON-RR'),'ST_CLERK',3600,null,123,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (138,'Stephen','Stiles','SSTILES','650.121.2034',to_date('26-OCT-05','DD-MON-RR'),'ST_CLERK',3200,null,123,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (139,'John','Seo','JSEO','650.121.2019',to_date('12-FEB-06','DD-MON-RR'),'ST_CLERK',2700,null,123,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (140,'Joshua','Patel','JPATEL','650.121.1834',to_date('06-APR-06','DD-MON-RR'),'ST_CLERK',2500,null,123,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (141,'Trenna','Rajs','TRAJS','650.121.8009',to_date('17-OCT-03','DD-MON-RR'),'ST_CLERK',3500,null,124,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (142,'Curtis','Davies','CDAVIES','650.121.2994',to_date('29-JAN-05','DD-MON-RR'),'ST_CLERK',3100,null,124,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (143,'Randall','Matos','RMATOS','650.121.2874',to_date('15-MAR-06','DD-MON-RR'),'ST_CLERK',2600,null,124,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (144,'Peter','Vargas','PVARGAS','650.121.2004',to_date('09-JUL-06','DD-MON-RR'),'ST_CLERK',2500,null,124,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (145,'John','Russell','JRUSSEL','011.44.1344.429268',to_date('01-OCT-04','DD-MON-RR'),'SA_MAN',14000,0.4,100,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (146,'Karen','Partners','KPARTNER','011.44.1344.467268',to_date('05-JAN-05','DD-MON-RR'),'SA_MAN',13500,0.3,100,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278',to_date('10-MAR-05','DD-MON-RR'),'SA_MAN',12000,0.3,100,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268',to_date('15-OCT-07','DD-MON-RR'),'SA_MAN',11000,0.3,100,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018',to_date('29-JAN-08','DD-MON-RR'),'SA_MAN',10500,0.2,100,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (150,'Peter','Tucker','PTUCKER','011.44.1344.129268',to_date('30-JAN-05','DD-MON-RR'),'SA_REP',10000,0.3,145,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (151,'David','Bernstein','DBERNSTE','011.44.1344.345268',to_date('24-MAR-05','DD-MON-RR'),'SA_REP',9500,0.25,145,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (152,'Peter','Hall','PHALL','011.44.1344.478968',to_date('20-AUG-05','DD-MON-RR'),'SA_REP',9000,0.25,145,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (153,'Christopher','Olsen','COLSEN','011.44.1344.498718',to_date('30-MAR-06','DD-MON-RR'),'SA_REP',8000,0.2,145,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668',to_date('09-DEC-06','DD-MON-RR'),'SA_REP',7500,0.2,145,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508',to_date('23-NOV-07','DD-MON-RR'),'SA_REP',7000,0.15,145,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (156,'Janette','King','JKING','011.44.1345.429268',to_date('30-JAN-04','DD-MON-RR'),'SA_REP',10000,0.35,146,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (157,'Patrick','Sully','PSULLY','011.44.1345.929268',to_date('04-MAR-04','DD-MON-RR'),'SA_REP',9500,0.35,146,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (158,'Allan','McEwen','AMCEWEN','011.44.1345.829268',to_date('01-AUG-04','DD-MON-RR'),'SA_REP',9000,0.35,146,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (159,'Lindsey','Smith','LSMITH','011.44.1345.729268',to_date('10-MAR-05','DD-MON-RR'),'SA_REP',8000,0.3,146,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (160,'Louise','Doran','LDORAN','011.44.1345.629268',to_date('15-DEC-05','DD-MON-RR'),'SA_REP',7500,0.3,146,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (161,'Sarath','Sewall','SSEWALL','011.44.1345.529268',to_date('03-NOV-06','DD-MON-RR'),'SA_REP',7000,0.25,146,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (162,'Clara','Vishney','CVISHNEY','011.44.1346.129268',to_date('11-NOV-05','DD-MON-RR'),'SA_REP',10500,0.25,147,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (163,'Danielle','Greene','DGREENE','011.44.1346.229268',to_date('19-MAR-07','DD-MON-RR'),'SA_REP',9500,0.15,147,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (164,'Mattea','Marvins','MMARVINS','011.44.1346.329268',to_date('24-JAN-08','DD-MON-RR'),'SA_REP',7200,0.1,147,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (165,'David','Lee','DLEE','011.44.1346.529268',to_date('23-FEB-08','DD-MON-RR'),'SA_REP',6800,0.1,147,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (166,'Sundar','Ande','SANDE','011.44.1346.629268',to_date('24-MAR-08','DD-MON-RR'),'SA_REP',6400,0.1,147,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (167,'Amit','Banda','ABANDA','011.44.1346.729268',to_date('21-APR-08','DD-MON-RR'),'SA_REP',6200,0.1,147,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (168,'Lisa','Ozer','LOZER','011.44.1343.929268',to_date('11-MAR-05','DD-MON-RR'),'SA_REP',11500,0.25,148,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (169,'Harrison','Bloom','HBLOOM','011.44.1343.829268',to_date('23-MAR-06','DD-MON-RR'),'SA_REP',10000,0.2,148,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (170,'Tayler','Fox','TFOX','011.44.1343.729268',to_date('24-JAN-06','DD-MON-RR'),'SA_REP',9600,0.2,148,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (171,'William','Smith','WSMITH','011.44.1343.629268',to_date('23-FEB-07','DD-MON-RR'),'SA_REP',7400,0.15,148,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (172,'Elizabeth','Bates','EBATES','011.44.1343.529268',to_date('24-MAR-07','DD-MON-RR'),'SA_REP',7300,0.15,148,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (173,'Sundita','Kumar','SKUMAR','011.44.1343.329268',to_date('21-APR-08','DD-MON-RR'),'SA_REP',6100,0.1,148,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (174,'Ellen','Abel','EABEL','011.44.1644.429267',to_date('11-MAY-04','DD-MON-RR'),'SA_REP',11000,0.3,149,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266',to_date('19-MAR-05','DD-MON-RR'),'SA_REP',8800,0.25,149,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265',to_date('24-MAR-06','DD-MON-RR'),'SA_REP',8600,0.2,149,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (177,'Jack','Livingston','JLIVINGS','011.44.1644.429264',to_date('23-APR-06','DD-MON-RR'),'SA_REP',8400,0.2,149,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (178,'Kimberely','Grant','KGRANT','011.44.1644.429263',to_date('24-MAY-07','DD-MON-RR'),'SA_REP',7000,0.15,149,null);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (179,'Charles','Johnson','CJOHNSON','011.44.1644.429262',to_date('04-JAN-08','DD-MON-RR'),'SA_REP',6200,0.1,149,80);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (180,'Winston','Taylor','WTAYLOR','650.507.9876',to_date('24-JAN-06','DD-MON-RR'),'SH_CLERK',3200,null,120,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (181,'Jean','Fleaur','JFLEAUR','650.507.9877',to_date('23-FEB-06','DD-MON-RR'),'SH_CLERK',3100,null,120,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (182,'Martha','Sullivan','MSULLIVA','650.507.9878',to_date('21-JUN-07','DD-MON-RR'),'SH_CLERK',2500,null,120,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (183,'Girard','Geoni','GGEONI','650.507.9879',to_date('03-FEB-08','DD-MON-RR'),'SH_CLERK',2800,null,120,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (184,'Nandita','Sarchand','NSARCHAN','650.509.1876',to_date('27-JAN-04','DD-MON-RR'),'SH_CLERK',4200,null,121,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (185,'Alexis','Bull','ABULL','650.509.2876',to_date('20-FEB-05','DD-MON-RR'),'SH_CLERK',4100,null,121,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (186,'Julia','Dellinger','JDELLING','650.509.3876',to_date('24-JUN-06','DD-MON-RR'),'SH_CLERK',3400,null,121,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (187,'Anthony','Cabrio','ACABRIO','650.509.4876',to_date('07-FEB-07','DD-MON-RR'),'SH_CLERK',3000,null,121,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (188,'Kelly','Chung','KCHUNG','650.505.1876',to_date('14-JUN-05','DD-MON-RR'),'SH_CLERK',3800,null,122,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (189,'Jennifer','Dilly','JDILLY','650.505.2876',to_date('13-AUG-05','DD-MON-RR'),'SH_CLERK',3600,null,122,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (190,'Timothy','Gates','TGATES','650.505.3876',to_date('11-JUL-06','DD-MON-RR'),'SH_CLERK',2900,null,122,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (191,'Randall','Perkins','RPERKINS','650.505.4876',to_date('19-DEC-07','DD-MON-RR'),'SH_CLERK',2500,null,122,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (192,'Sarah','Bell','SBELL','650.501.1876',to_date('04-FEB-04','DD-MON-RR'),'SH_CLERK',4000,null,123,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (193,'Britney','Everett','BEVERETT','650.501.2876',to_date('03-MAR-05','DD-MON-RR'),'SH_CLERK',3900,null,123,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (194,'Samuel','McCain','SMCCAIN','650.501.3876',to_date('01-JUL-06','DD-MON-RR'),'SH_CLERK',3200,null,123,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (195,'Vance','Jones','VJONES','650.501.4876',to_date('17-MAR-07','DD-MON-RR'),'SH_CLERK',2800,null,123,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (196,'Alana','Walsh','AWALSH','650.507.9811',to_date('24-APR-06','DD-MON-RR'),'SH_CLERK',3100,null,124,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (197,'Kevin','Feeney','KFEENEY','650.507.9822',to_date('23-MAY-06','DD-MON-RR'),'SH_CLERK',3000,null,124,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (198,'Donald','OConnell','DOCONNEL','650.507.9833',to_date('21-JUN-07','DD-MON-RR'),'SH_CLERK',2600,null,124,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (199,'Douglas','Grant','DGRANT','650.507.9844',to_date('13-JAN-08','DD-MON-RR'),'SH_CLERK',2600,null,124,50);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (200,'Jennifer','Whalen','JWHALEN','515.123.4444',to_date('17-SEP-03','DD-MON-RR'),'AD_ASST',4400,null,101,10);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (201,'Michael','Hartstein','MHARTSTE','515.123.5555',to_date('17-FEB-04','DD-MON-RR'),'MK_MAN',13000,null,100,20);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (202,'Pat','Fay','PFAY','603.123.6666',to_date('17-AUG-05','DD-MON-RR'),'MK_REP',6000,null,201,20);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (203,'Susan','Mavris','SMAVRIS','515.123.7777',to_date('07-JUN-02','DD-MON-RR'),'HR_REP',6500,null,101,40);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (204,'Hermann','Baer','HBAER','515.123.8888',to_date('07-JUN-02','DD-MON-RR'),'PR_REP',10000,null,101,70);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (205,'Shelley','Higgins','SHIGGINS','515.123.8080',to_date('07-JUN-02','DD-MON-RR'),'AC_MGR',12008,null,101,110);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (206,'William','Gietz','WGIETZ','515.123.8181',to_date('07-JUN-02','DD-MON-RR'),'AC_ACCOUNT',8300,null,205,110);
REM INSERTING into HR.EMPLOYEE_SPRING
SET DEFINE OFF;
Insert into HR.EMPLOYEE_SPRING (ID,NAME,SALARY) values (102,'shuraif2',99999);
Insert into HR.EMPLOYEE_SPRING (ID,NAME,SALARY) values (102,'jaba n',3500);
Insert into HR.EMPLOYEE_SPRING (ID,NAME,SALARY) values (102,'jaba n',3500);
Insert into HR.EMPLOYEE_SPRING (ID,NAME,SALARY) values (102,'jaba n',3500);
Insert into HR.EMPLOYEE_SPRING (ID,NAME,SALARY) values (110,'shuraif3',5009);
Insert into HR.EMPLOYEE_SPRING (ID,NAME,SALARY) values (102,'jaba n',3500);
Insert into HR.EMPLOYEE_SPRING (ID,NAME,SALARY) values (102,'jaba n',3500);
Insert into HR.EMPLOYEE_SPRING (ID,NAME,SALARY) values (102,'jaba n',3500);
REM INSERTING into HR.EXAM_REGISTRATION
SET DEFINE OFF;
Insert into HR.EXAM_REGISTRATION (EXAM_REG_ID,EXAM_ID,USER_ID,STATUS) values ('202','schedule_480','pavitra','Applied');
Insert into HR.EXAM_REGISTRATION (EXAM_REG_ID,EXAM_ID,USER_ID,STATUS) values ('200','schedule_480','shuraif','Applied');
Insert into HR.EXAM_REGISTRATION (EXAM_REG_ID,EXAM_ID,USER_ID,STATUS) values ('204','schedule_480','jaya','Applied');
Insert into HR.EXAM_REGISTRATION (EXAM_REG_ID,EXAM_ID,USER_ID,STATUS) values ('201','schedule_480','jasma','Applied');
Insert into HR.EXAM_REGISTRATION (EXAM_REG_ID,EXAM_ID,USER_ID,STATUS) values ('203','schedule_480','pavitra','Applied');
REM INSERTING into HR.EXAM_SCHEDULE
SET DEFINE OFF;
REM INSERTING into HR.EXAM_TABLE
SET DEFINE OFF;
Insert into HR.EXAM_TABLE (EXAM_ID,EXAM_DATE,START_TIME,END_TIME,SEAT,EXAM_PASS) values ('schedule_484','2019-07-29','13:00','14:59',40,'324');
Insert into HR.EXAM_TABLE (EXAM_ID,EXAM_DATE,START_TIME,END_TIME,SEAT,EXAM_PASS) values ('schedule_480','2019-07-21','19:00','22:30',50,'320');
Insert into HR.EXAM_TABLE (EXAM_ID,EXAM_DATE,START_TIME,END_TIME,SEAT,EXAM_PASS) values ('schedule_481','2019-08-12','13:30','14:30',25,'321');
Insert into HR.EXAM_TABLE (EXAM_ID,EXAM_DATE,START_TIME,END_TIME,SEAT,EXAM_PASS) values ('schedule_460','2019-07-20','01:30','03:30',50,'300');
Insert into HR.EXAM_TABLE (EXAM_ID,EXAM_DATE,START_TIME,END_TIME,SEAT,EXAM_PASS) values ('schedule_482','2019-08-26','09:30','11:00',40,'322');
Insert into HR.EXAM_TABLE (EXAM_ID,EXAM_DATE,START_TIME,END_TIME,SEAT,EXAM_PASS) values ('schedule_483','2019-09-16','11:00','13:30',60,'323');
REM INSERTING into HR.HARD_QUESTION
SET DEFINE OFF;
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_100','What will be the output of the program?

public class If2 
{
    static boolean b1, b2;
    public static void main(String [] args) 
    {
        int x = 0;
        if ( !b1 ) /* Line 7 */
        {
            if ( !b2 ) /* Line 9 */
            {
                b1 = true;
                x++;
                if ( 5 > 6 ) 
                {
                    x++;
                }
                if ( !b1 ) 
                    x = x + 10;
                else if ( b2 = true ) /* Line 19 */
                    x = x + 100;
                else if ( b1 | b2 ) /* Line 21 */
                    x = x + 1000;
            }
        }
        System.out.println(x);
    }
}','0','1','11','111','c');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_105','What will be the output of the program?

public class X 
{  
    public static void main(String [] args) 
    {
        try 
        {
            badMethod(); /* Line 7 */
            System.out.print("A"); 
        } 
        catch (Exception ex) /* Line 10 */
        {
            System.out.print("B"); /* Line 12 */
        } 
        finally /* Line 14 */
        {
            System.out.print("C"); /* Line 16 */
        }  
        System.out.print("D"); /* Line 18 */
    } 
    public static void badMethod() 
    {
        throw new RuntimeException(); 
    } 
}','AB','BC','ABC','BCD','d');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_110','What will be the output of the program?

class MyThread extends Thread 
{ 
    MyThread() {} 
    MyThread(Runnable r) {super(r); } 
    public void run() 
    { 
        System.out.print("Inside Thread ");
    } 
} 
class MyRunnable implements Runnable 
{ 
    public void run() 
    { 
        System.out.print(" Inside Runnable"); 
    } 
} 
class Test 
{  
    public static void main(String[] args) 
    { 
        new MyThread().start(); 
        new MyThread(new MyRunnable()).start(); 
    } 
}','Prints "Inside Thread Inside Thread"','Prints "Inside Thread Inside Runnable"','Does not compile','Throws exception at runtime','a');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_115',' 	
What will be the output of the program?

public class SyncTest 
{
    public static void main (String [] args) 
    {
        Thread t = new Thread() 
        {
            Foo f = new Foo();
            public void run() 
            {
                f.increase(20);
            }
        };
    t.start();
    }
}
class Foo 
{
    private int data = 23;
    public void increase(int amt) 
    {
        int x = data;
        data = x + amt;
    }
}

and assuming that data must be protected from corruption, what?if anything?can you add to the preceding code to ensure the integrity of data?','Synchronize the run method.','Wrap a synchronize(this) around the call to f.increase().','The existing code will cause a runtime exception.','Synchronize the increase() method','d');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_120','What will be the output of the program?

String x = new String("xyz");
String y = "abc";
x = x + y;
How many String objects have been created?','2','3
','4
','5','c');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_102','public class MyProgram 
{
    public static void throwit() 
    {
        throw new RuntimeException();
    }
    public static void main(String args[])
    {
        try 
        {
            System.out.println("Hello world ");
            throwit();
            System.out.println("Done with try block ");
        }
        finally 
        {
            System.out.println("Finally executing ");
        }
    }
}
which answer most closely indicates the behavior of the program?','The program will not compile.','The program will print Hello world, then will print that a RuntimeException has occurred, then will print Done with try block, and then will print Finally executing.','The program will print Hello world, then will print that a RuntimeException has occurred, and then will print Finally executing.','The program will print Hello world, then will print Finally executing, then will print that a RuntimeException has occurred.','d');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_106','What will be the output of the program?

package foo; 
import java.util.Vector; /* Line 2 */
private class MyVector extends Vector 
{
    int i = 1; /* Line 5 */
    public MyVector() 
    { 
        i = 2; 
    } 
} 
public class MyNewVector extends MyVector 
{
    public MyNewVector () 
    { 
        i = 4; /* Line 15 */
    } 
    public static void main (String args []) 
    { 
        MyVector v = new MyNewVector(); /* Line 19 */
    } 
}','Compilation will succeed.','Compilation will fail at line 3.','Compilation will fail at line 5.','Compilation will fail at line 15.','b');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_111','What will be the output of the program?

class s1 extends Thread
{ 
    public void run() 
    { 
        for(int i = 0; i < 3; i++) 
        { 
            System.out.println("A"); 
            System.out.println("B"); 
        } 
    } 
} 
class Test120 extends Thread 
{ 
    public void run() 
    { 
        for(int i = 0; i < 3; i++) 
        { 
            System.out.println("C"); 
            System.out.println("D"); 
        } 
    } 
    public static void main(String args[]) 
        { 
        s1 t1 = new s1(); 
        Test120 t2 = new Test120(); 
        t1.start(); 
        t2.start(); 
    } 
}','Compile time Error There is no start() method','Will print in this order AB CD AB...','Will print but not be able to predict the Order','Will print in this order ABCD...ABCD...','c');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_116','What will be the output of the program?

class Happy extends Thread 
{ 
    final StringBuffer sb1 = new StringBuffer(); 
    final StringBuffer sb2 = new StringBuffer(); 

    public static void main(String args[]) 
    { 
        final Happy h = new Happy(); 

        new Thread() 
        { 
            public void run() 
            { 
                synchronized(this) 
                { 
                    h.sb1.append("A"); 
                    h.sb2.append("B"); 
                    System.out.println(h.sb1); 
                    System.out.println(h.sb2); 
                } 
            } 
        }.start(); 

        new Thread() 
        { 
            public void run() 
            { 
                synchronized(this) 
                { 
                    h.sb1.append("D"); 
                    h.sb2.append("C"); 
                    System.out.println(h.sb2); 
                    System.out.println(h.sb1); 
                } 
            } 
        }.start(); 
    } 
}','ABBCAD','ABCBCAD','CDADACB
','Output determined by the underlying platform.
','d');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_121','What will be the output of the program?

public class WrapTest 
{
    public static void main(String [] args) 
    {
        int result = 0;
        short s = 42;
        Long x = new Long("42");
        Long y = new Long(42);
        Short z = new Short("42");
        Short x2 = new Short(s);
        Integer y2 = new Integer("42");
        Integer z2 = new Integer(42);

        if (x == y) /* Line 13 */
            result = 1;
        if (x.equals(y) ) /* Line 15 */
            result = result + 10;
        if (x.equals(z) ) /* Line 17 */
            result = result + 100;
        if (x.equals(x2) ) /* Line 19 */
            result = result + 1000;
        if (x.equals(z2) ) /* Line 21 */
            result = result + 10000;

        System.out.println("result = " + result);
    }
}','result = 1','result = 10','result = 11','result = 11010','b');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_119','	
What will be the output of the program?

class Test116 
{ 
static final StringBuffer sb1 = new StringBuffer(); 
static final StringBuffer sb2 = new StringBuffer(); 
public static void main(String args[]) 
{ 
    new Thread() 
    { 
        public void run() 
        { 
            synchronized(sb1) 
            { 
                sb1.append("A"); 
                sb2.append("B"); 
            } 
        } 
    }.start(); 

    new Thread() 
    { 
        public void run() 
        { 
            synchronized(sb1) 
            { 
                sb1.append("C"); 
                sb2.append("D"); 
            } 
        } 
    }.start(); /* Line 28 */

    System.out.println (sb1 + " " + sb2); 
    } 
}','main() will finish before starting threads.','main() will finish in the middle of one thread.','main() will finish after one thread.','Cannot be determined.','d');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_103','System.out.print("Start ");
try 
{
    System.out.print("Hello world");
    throw new FileNotFoundException();
}
System.out.print(" Catch Here "); /* Line 7 */
catch(EOFException e) 
{
    System.out.print("End of file exception");
}
catch(FileNotFoundException e) 
{
    System.out.print("File not found");
}
and given that EOFException and FileNotFoundException are both subclasses of IOException, and further assuming this block of code is placed into a class, which statement is most true concerning this code?','The code will not compile.','Code output: Start Hello world File Not Found.','Code output: Start Hello world End of file exception.','Code output: Start Hello world Catch Here File not found.','a');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_107','What will be the output of the program?

public class HorseTest 
{
    public static void main (String [] args) 
    {
        class Horse 
        {
            public String name; /* Line 7 */
            public Horse(String s) 
            {
                name = s;
            }
        } /* class Horse ends */

        Object obj = new Horse("Zippo"); /* Line 13 */
        Horse h = (Horse) obj; /* Line 14 */
        System.out.println(h.name);
    }
} /* class HorseTest ends */','An exception occurs at runtime at line 10.','It prints "Zippo".','Compilation fails because of an error on line 7.','Compilation fails because of an error on line 13.','b');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_112','What will be the output of the program?

class s implements Runnable 
{ 
    int x, y; 
    public void run() 
    { 
        for(int i = 0; i < 1000; i++) 
            synchronized(this) 
            { 
                x = 12; 
                y = 12; 
            } 
        System.out.print(x + " " + y + " "); 
    } 
    public static void main(String args[]) 
    { 
        s run = new s(); 
        Thread t1 = new Thread(run); 
        Thread t2 = new Thread(run); 
        t1.start(); 
        t2.start(); 
    } 
}','DeadLock','It print 12 12 12 12','Compilation Error','Cannot determine output.','b');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_118','What will be the output of the program?

class MyThread extends Thread 
{
    public static void main(String [] args) 
    {
        MyThread t = new MyThread(); /* Line 5 */
        t.run();  /* Line 6 */
    }

    public void run() 
    {
        for(int i=1; i < 3; ++i) 
        {
            System.out.print(i + "..");
        }
    }
}','This code will not compile due to line 5.','This code will not compile due to line 6.','1..2..','1..2..3..','c');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_101','import java.io.*;
public class MyProgram 
{
    public static void main(String args[])
    {
        FileOutputStream out = null;
        try 
        {
            out = new FileOutputStream("test.txt");
            out.write(122);
        }
        catch(IOException io) 
        {
            System.out.println("IO Error.");
        }
        finally 
        {
            out.close();
        }
    }
}
and given that all methods of class FileOutputStream, including close(), throw an IOException, which of these is true?','This program will compile successfully.','This program fails to compile due to an error at line 4.','This program fails to compile due to an error at line 6.','This program fails to compile due to an error at line 18.','d');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_108','What will be the output of the program?

public abstract class AbstractTest 
{
    public int getNum() 
    {
        return 45;
    }
    public abstract class Bar 
    {
        public int getNum() 
        {
            return 38;
        }
    }
    public static void main (String [] args) 
    {
        AbstractTest t = new AbstractTest() 
        {
            public int getNum() 
            {
                return 22;
            }
        };
        AbstractTest.Bar f = t.new Bar() 
        {
            public int getNum() 
            {
                return 57;
            }
        };

        System.out.println(f.getNum() + " " + t.getNum());
    }
}','57 22','45 38','45 57','An exception occurs at runtime.','a');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_113','What will be the output of the program?

public class ThreadDemo 
{ 
    private int count = 1; 
    public synchronized void doSomething() 
    { 
        for (int i = 0; i < 10; i++) 
            System.out.println(count++); 
    } 
    public static void main(String[] args) 
    { 
        ThreadDemo demo = new ThreadDemo(); 
        Thread a1 = new A(demo); 
        Thread a2 = new A(demo); 
        a1.start(); 
        a2.start(); 
    } 
} 
class A extends Thread 
{ 
    ThreadDemo demo; 
    public A(ThreadDemo td) 
    { 
        demo = td; 
    } 
    public void run() 
    { 
        demo.doSomething(); 
    } 
}','It will print the numbers 0 to 19 sequentially','It will print the numbers 1 to 20 sequentially','It will print the numbers 1 to 20, but the order cannot be determined','The code will not compile.','b');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_104','What will be the output of the program?

public class RTExcept 
{
    public static void throwit () 
    {
        System.out.print("throwit ");
        throw new RuntimeException();
    }
    public static void main(String [] args) 
    {
        try 
        {
            System.out.print("hello ");
            throwit();
        }
        catch (Exception re ) 
        {
            System.out.print("caught ");
        }
        finally 
        {
            System.out.print("finally ");
        }
        System.out.println("after ");
    }
}','hello throwit caught','Compilation fails','hello throwit RuntimeException caught after','hello throwit caught finally after','d');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_109','What will be the output of the program?

class MyThread extends Thread 
{
    MyThread() 
    {
        System.out.print(" MyThread");
    }
    public void run() 
    {
        System.out.print(" bar");
    }
    public void run(String s) 
    {
        System.out.println(" baz");
    }
}
public class TestThreads 
{
    public static void main (String [] args) 
    {
        Thread t = new MyThread() 
        {
            public void run() 
            {
                System.out.println(" foo");
            }
        };
        t.start();
    }
}','foo','MyThread foo','MyThread bar
','foo bar','b');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_114','What will be the output of the program?

public class WaitTest 
{
    public static void main(String [] args) 
    {
        System.out.print("1 ");
        synchronized(args)
        {
            System.out.print("2 ");
            try 
            {
                    args.wait(); /* Line 11 */
            }
            catch(InterruptedException e){ }
        }
        System.out.print("3 ");
    }
}','It fails to compile because the IllegalMonitorStateException of wait() is not dealt with in line 11.','1 2 3','1 3','1 2','d');
Insert into HR.HARD_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('hard_117','class Test 
{
    public static void main(String [] args) 
    {
        printAll(args);
    }

    public static void printAll(String[] lines) 
    {
        for(int i = 0; i < lines.length; i++)
        {
            System.out.println(lines[i]);
            Thread.currentThread().sleep(1000);
        }
    }
}
the static method Thread.currentThread() returns a reference to the currently executing Thread object. What is the result of this code?','Each String in the array lines will output, with a 1-second pause.','Each String in the array lines will output, with no pause in between because this method is not executed in a Thread.','Each String in the array lines will output, and there is no guarantee there will be a pause because currentThread() may not retrieve this thread.','This code will not compile.','d');
REM INSERTING into HR.ITEM
SET DEFINE OFF;
Insert into HR.ITEM (ID,ITEM_NAME,ITEM_PRICE) values (122,'pendrive',490);
Insert into HR.ITEM (ID,ITEM_NAME,ITEM_PRICE) values (121,'sdcard',500);
Insert into HR.ITEM (ID,ITEM_NAME,ITEM_PRICE) values (102,'headset',350);
REM INSERTING into HR.JOBS
SET DEFINE OFF;
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AD_PRES','President',20080,40000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AD_VP','Administration Vice President',15000,30000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AD_ASST','Administration Assistant',3000,6000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('FI_MGR','Finance Manager',8200,16000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('FI_ACCOUNT','Accountant',4200,9000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AC_MGR','Accounting Manager',8200,16000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AC_ACCOUNT','Public Accountant',4200,9000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('SA_MAN','Sales Manager',10000,20080);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('SA_REP','Sales Representative',6000,12008);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('PU_MAN','Purchasing Manager',8000,15000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('PU_CLERK','Purchasing Clerk',2500,5500);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('ST_MAN','Stock Manager',5500,8500);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('ST_CLERK','Stock Clerk',2008,5000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('SH_CLERK','Shipping Clerk',2500,5500);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('IT_PROG','Programmer',4000,10000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('MK_MAN','Marketing Manager',9000,15000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('MK_REP','Marketing Representative',4000,9000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('HR_REP','Human Resources Representative',4000,9000);
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('PR_REP','Public Relations Representative',4500,10500);
REM INSERTING into HR.JOB_HISTORY
SET DEFINE OFF;
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (102,to_date('13-JAN-01','DD-MON-RR'),to_date('24-JUL-06','DD-MON-RR'),'IT_PROG',60);
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (101,to_date('21-SEP-97','DD-MON-RR'),to_date('27-OCT-01','DD-MON-RR'),'AC_ACCOUNT',110);
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (101,to_date('28-OCT-01','DD-MON-RR'),to_date('15-MAR-05','DD-MON-RR'),'AC_MGR',110);
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (201,to_date('17-FEB-04','DD-MON-RR'),to_date('19-DEC-07','DD-MON-RR'),'MK_REP',20);
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (114,to_date('24-MAR-06','DD-MON-RR'),to_date('31-DEC-07','DD-MON-RR'),'ST_CLERK',50);
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (122,to_date('01-JAN-07','DD-MON-RR'),to_date('31-DEC-07','DD-MON-RR'),'ST_CLERK',50);
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (200,to_date('17-SEP-95','DD-MON-RR'),to_date('17-JUN-01','DD-MON-RR'),'AD_ASST',90);
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (176,to_date('24-MAR-06','DD-MON-RR'),to_date('31-DEC-06','DD-MON-RR'),'SA_REP',80);
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (176,to_date('01-JAN-07','DD-MON-RR'),to_date('31-DEC-07','DD-MON-RR'),'SA_MAN',80);
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values (200,to_date('01-JUL-02','DD-MON-RR'),to_date('31-DEC-06','DD-MON-RR'),'AC_ACCOUNT',90);
REM INSERTING into HR.LOCATIONS
SET DEFINE OFF;
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1000,'1297 Via Cola di Rie','00989','Roma',null,'IT');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1100,'93091 Calle della Testa','10934','Venice',null,'IT');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1300,'9450 Kamiya-cho','6823','Hiroshima',null,'JP');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2000,'40-5-12 Laogianggen','190518','Beijing',null,'CN');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2300,'198 Clementi North','540198','Singapore',null,'SG');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2400,'8204 Arthur St',null,'London',null,'UK');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2600,'9702 Chester Road','09629850293','Stretford','Manchester','UK');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2800,'Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (3000,'Murtenstrasse 921','3095','Bern','BE','CH');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values (3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');
REM INSERTING into HR.MED_QUESTION
SET DEFINE OFF;
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_101','	
What will be the output of the program?

class PassA 
{
    public static void main(String [] args) 
    {
        PassA p = new PassA();
        p.start();
    }

    void start() 
    {
        long [] a1 = {3,4,5};
        long [] a2 = fix(a1);
        System.out.print(a1[0] + a1[1] + a1[2] + " ");
        System.out.println(a2[0] + a2[1] + a2[2]);
    }

    long [] fix(long [] a3) 
    {
        a3[1] = 7;
        return a3;
    }
}','12 15','15 15','3 4 5 3 7 5','3 7 5 3 7 5','b');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_104','	
What will be the output of the program?

class Equals 
{
    public static void main(String [] args) 
    {
        int x = 100;
        double y = 100.1;
        boolean b = (x = y); /* Line 7 */
        System.out.println(b);
    }
}','true','false','Compilation fails','An exception is thrown at runtime','c');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_105','What will be the output of the program?

class Test 
{
    public static void main(String [] args) 
    {
        int x=20;
        String sup = (x < 15) ? "small" : (x < 22)? "tiny" : "huge";
        System.out.println(sup);
    }
}','small','tiny','huge','Compilation fails','b');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_110','What will be the output of the program?

public class Test 
{ 
    public static void leftshift(int i, int j) 
    {
        i <<= j; 
    } 
    public static void main(String args[]) 
    {
        int i = 4, j = 2; 
        leftshift(i, j); 
        System.out.printIn(i); 
    } 
}','2','4','8','16','b');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_115','public class While 
{
    public void loop() 
    {
        int x= 0;
        while ( 1 ) /* Line 6 */
        {
            System.out.print("x plus one is " + (x + 1)); /* Line 8 */
        }
    }
}
Which statement is true?','There is a syntax error on line 1.','There are syntax errors on lines 1 and 6.','There are syntax errors on lines 1, 6, and 8.','There is a syntax error on line 6.','d');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_106','What will be the output of the program?

class SC2 
{
    public static void main(String [] args) 
    {
        SC2 s = new SC2();
        s.start();
    }

    void start() 
    {
        int a = 3;
        int b = 4;
        System.out.print(" " + 7 + 2 + " ");
        System.out.print(a + b);
        System.out.print(" " + a + b + " ");
        System.out.print(foo() + a + b + " ");
        System.out.println(a + b + foo());
    }

    String foo() 
    {
        return "foo";
    }
}','9 7 7 foo 7 7foo','72 34 34 foo34 34foo','9 7 7 foo34 34foo','72 7 34 foo34 7foo','d');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_111','import java.awt.*;
class Ticker extends Component 
{
    public static void main (String [] args) 
    {
        Ticker t = new Ticker();
        /* Missing Statements ? */
    }
}
which  of the following statement, inserted independently, could legally be inserted into missing section of this code','boolean test = (Component instanceof t);','boolean test = (t instanceof Ticker);','boolean test = t.instanceof(Ticker);','boolean test = instanceof(Ticker);','b');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_117','	
What will be the output of the program?

int i = 1, j = 10; 
do 
{
    if(i > j) 
    {
        break; 
    } 
    j--; 
} while (++i < 5); 
System.out.println("i = " + i + " and j = " + j);','i = 6 and j = 5','i = 5 and j = 5','i = 6 and j = 4','i = 5 and j = 6','d');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_102','	
What will be the output of the program?

class PassS 
{
    public static void main(String [] args) 
    {
        PassS p = new PassS();
        p.start();
    }

    void start() 
    {
        String s1 = "slip";
        String s2 = fix(s1);
        System.out.println(s1 + " " + s2);
    }

    String fix(String s1) 
    {
        s1 = s1 + "stream";
        System.out.print(s1 + " ");
        return "stream";
    }
}','slip stream','slipstream stream','stream slip stream','slipstream slip stream','d');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_107','What will be the output of the program?

class Test 
{
    static int s;
    public static void main(String [] args) 
    {
        Test p = new Test();
        p.start();
        System.out.println(s);
    }

    void start() 
    {
        int x = 7;
        twice(x);
        System.out.print(x + " ");
    }

    void twice(int x) 
    {
        x = x*2;
        s = x;
    }
}','7 7','7 14','14 0','14 14','b');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_112','Which of the following are legal lines of code?

1.int w = (int)888.8;
2.byte x = (byte)1000L;
3.long y = (byte)100;
4.byte z = (byte)100L;','1 and 2','2 and 3','3 and 4','All statements are correct.','d');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_118','What will be the output of the program?

public class Switch2 
{
    final static short x = 2;
    public static int y = 0;
    public static void main(String [] args) 
    {
        for (int z=0; z < 3; z++) 
        {
            switch (z) 
            {
                case x: System.out.print("0 ");
                case x-1: System.out.print("1 ");
                case x-2: System.out.print("2 ");
            }
        }
    }
}','0 1 2','0 1 2 1 2 2','2 1 0 1 0 0','2 1 2 0 1 2','d');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_100','	
interface Base 
{
    boolean m1 ();
    byte m2(short s);
}
which  code fragments will compile?','interface Base2 implements Base {}','abstract class Class2 extends Base 
{ public boolean m1(){ return true; }}','abstract class Class2 implements Base {}','abstract class Class2 implements Base 
{ protected boolean m1(){ return (5 > 7) }}','c');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_103','What will be the output of the program?

class BitShift 
{
    public static void main(String [] args) 
    {
        int x = 0x80000000;
        System.out.print(x + " and  ");
        x = x >>> 31;
        System.out.println(x);
    }
}','-2147483648 and 1','0x80000000 and 0x00000001','-2147483648 and -1','1 and -2147483648','a');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_108','	
What will be the output of the program?

class Two 
{
    byte x;
}

class PassO 
{
    public static void main(String [] args) 
    {
        PassO p = new PassO();
        p.start();
    }

    void start() 
    {
        Two t = new Two();
        System.out.print(t.x + " ");
        Two t2 = fix(t);
        System.out.println(t.x + " " + t2.x);
    }

    Two fix(Two tt) 
    {
        tt.x = 42;
        return tt;
    }
}','null null 42','0 0 42','0 42 42','0 0 0','c');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_113','import java.awt.Button;
class CompareReference 
{
    public static void main(String [] args) 
    {
        float f = 42.0f;
        float [] f1 = new float[2];
        float [] f2 = new float[2];
        float [] f3 = f1;
        long x = 42;
        f1[0] = 42.0f;
    }
}
which three statements are true?
1 .f1 == f2
2. f1 == f3
3. f2 == f1[1]
4. x == f1[0]
5. f == f1[0]','1, 2 and 3','2, 4 and 5','3, 4 and 5','1, 4 and 5','b');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_116','What will be the output of the program?

int i = l, j = -1; 
switch (i) 
{
    case 0, 1: j = 1; /* Line 4 */
    case 2: j = 2; 
    default: j = 0; 
} 
System.out.println("j = " + j); ','j = -1','j = 0','j = 1','Compilation fails.','d');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_109','What will be the output of the program?

class BoolArray 
{
    boolean [] b = new boolean[3];
    int count = 0;

    void set(boolean [] x, int i) 
    {
        x[i] = true;
        ++count;
    }

    public static void main(String [] args) 
    {
        BoolArray ba = new BoolArray();
        ba.set(ba.b, 0);
        ba.set(ba.b, 2);
        ba.test();
    }

    void test() 
    {
        if ( b[0] && b[1] | b[2] )
            count++;
        if ( b[1] && b[(++count - 2)] )
            count += 7;
        System.out.println("count = " + count);
    }
}','count = 0','count = 2','count = 3','count = 4','c');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_114','public void test(int x) 
{ 
    int odd = 1; 
    if(odd) /* Line 4 */
    {
        System.out.println("odd"); 
    } 
    else 
    {
        System.out.println("even"); 
    } 
}
Which statement is true?','Compilation fails.','"odd" will always be output.','"even" will always be output.','"odd" will be output for odd values of x, and "even" for even values.','a');
Insert into HR.MED_QUESTION (QUESTION_ID,QUESTION,OPTION_A,OPTION_B,OPTION_C,OPTION_D,ANSWER) values ('med_119','What will be the output of the program?

public class SwitchTest 
{  
    public static void main(String[] args) 
    {
        System.out.println("value =" + switchIt(4)); 
    } 
    public static int switchIt(int x) 
    {
        int j = 1;  
        switch (x) 
        { 
            case l: j++; 
            case 2: j++;  
            case 3: j++; 
            case 4: j++; 
            case 5: j++; 
            default: j++; 
            } 
        return j + x;  
    } 
}','value = 2','value = 4','value = 6','value = 8','d');
REM INSERTING into HR.MYTABLE
SET DEFINE OFF;
REM INSERTING into HR.PRODUCTS
SET DEFINE OFF;
REM INSERTING into HR.PURCHASE
SET DEFINE OFF;
Insert into HR.PURCHASE (ID,COUNT) values (122,1);
REM INSERTING into HR.QWE
SET DEFINE OFF;
REM INSERTING into HR.RANDOM_QUESTION
SET DEFINE OFF;
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('502','schedule_482','easy_105','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('503','schedule_482','easy_112','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('504','schedule_482','easy_113','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('505','schedule_482','easy_106','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('506','schedule_482','easy_117','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('507','schedule_482','easy_108','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('508','schedule_482','easy_116','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('509','schedule_482','easy_120','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('510','schedule_482','med_107','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('511','schedule_482','med_108','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('500','schedule_482','easy_119','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('501','schedule_482','easy_107','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('512','schedule_482','med_117','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('513','schedule_482','med_119','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('514','schedule_482','med_110','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('515','schedule_482','med_103','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('516','schedule_482','med_100','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('517','schedule_482','med_104','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('518','schedule_482','med_113','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('519','schedule_482','med_112','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('520','schedule_482','hard_108','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('521','schedule_482','hard_104','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('522','schedule_482','hard_107','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('523','schedule_482','hard_120','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('524','schedule_482','hard_112','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('525','schedule_482','hard_116','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('526','schedule_482','hard_114','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('527','schedule_482','hard_105','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('528','schedule_482','hard_119','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('529','schedule_482','hard_106','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('530','schedule_483','easy_103','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('531','schedule_483','easy_108','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('532','schedule_483','easy_111','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('533','schedule_483','easy_117','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('534','schedule_483','easy_106','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('535','schedule_483','easy_118','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('536','schedule_483','easy_115','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('537','schedule_483','easy_101','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('538','schedule_483','easy_100','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('539','schedule_483','easy_110','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('540','schedule_483','med_112','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('541','schedule_483','med_119','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('542','schedule_483','med_104','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('543','schedule_483','med_103','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('544','schedule_483','med_117','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('545','schedule_483','med_113','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('546','schedule_483','med_109','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('547','schedule_483','med_114','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('548','schedule_483','med_111','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('549','schedule_483','med_100','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('550','schedule_483','hard_117','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('551','schedule_483','hard_107','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('552','schedule_483','hard_105','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('553','schedule_483','hard_108','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('554','schedule_483','hard_120','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('555','schedule_483','hard_116','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('556','schedule_483','hard_113','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('557','schedule_483','hard_118','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('558','schedule_483','hard_102','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('559','schedule_483','hard_112','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('442','schedule_480','easy_107','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('443','schedule_480','easy_114','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('444','schedule_480','easy_106','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('445','schedule_480','easy_110','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('446','schedule_480','easy_112','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('440','schedule_480','easy_101','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('441','schedule_480','easy_104','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('447','schedule_480','easy_117','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('448','schedule_480','easy_102','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('449','schedule_480','easy_109','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('450','schedule_480','med_103','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('451','schedule_480','med_112','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('452','schedule_480','med_108','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('453','schedule_480','med_111','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('454','schedule_480','med_110','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('455','schedule_480','med_113','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('456','schedule_480','med_114','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('457','schedule_480','med_117','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('458','schedule_480','med_107','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('459','schedule_480','med_100','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('460','schedule_480','hard_112','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('461','schedule_480','hard_108','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('462','schedule_480','hard_100','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('463','schedule_480','hard_110','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('464','schedule_480','hard_101','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('465','schedule_480','hard_113','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('466','schedule_480','hard_111','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('467','schedule_480','hard_105','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('468','schedule_480','hard_117','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('469','schedule_480','hard_118','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('472','schedule_481','easy_103','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('473','schedule_481','easy_101','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('474','schedule_481','easy_106','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('475','schedule_481','easy_100','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('476','schedule_481','easy_117','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('477','schedule_481','easy_114','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('478','schedule_481','easy_110','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('479','schedule_481','easy_104','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('470','schedule_481','easy_118','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('471','schedule_481','easy_107','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('480','schedule_481','med_117','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('481','schedule_481','med_110','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('482','schedule_481','med_113','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('483','schedule_481','med_101','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('484','schedule_481','med_102','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('485','schedule_481','med_111','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('486','schedule_481','med_105','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('487','schedule_481','med_107','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('488','schedule_481','med_108','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('489','schedule_481','med_103','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('490','schedule_481','hard_111','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('491','schedule_481','hard_112','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('492','schedule_481','hard_114','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('493','schedule_481','hard_109','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('494','schedule_481','hard_113','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('495','schedule_481','hard_106','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('496','schedule_481','hard_119','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('497','schedule_481','hard_118','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('498','schedule_481','hard_105','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('499','schedule_481','hard_107','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('560','schedule_484','easy_100','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('561','schedule_484','easy_113','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('562','schedule_484','easy_117','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('563','schedule_484','easy_109','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('564','schedule_484','easy_119','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('565','schedule_484','easy_101','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('566','schedule_484','easy_118','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('567','schedule_484','easy_105','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('568','schedule_484','easy_102','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('569','schedule_484','easy_114','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('570','schedule_484','med_100','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('571','schedule_484','med_113','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('572','schedule_484','med_101','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('573','schedule_484','med_107','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('574','schedule_484','med_112','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('575','schedule_484','med_115','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('576','schedule_484','med_117','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('577','schedule_484','med_102','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('578','schedule_484','med_106','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('579','schedule_484','med_110','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('580','schedule_484','hard_106','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('581','schedule_484','hard_119','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('582','schedule_484','hard_114','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('583','schedule_484','hard_113','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('584','schedule_484','hard_107','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('585','schedule_484','hard_118','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('586','schedule_484','hard_117','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('587','schedule_484','hard_116','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('588','schedule_484','hard_112','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('589','schedule_484','hard_120','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('402','schedule_460','easy_102','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('403','schedule_460','easy_106','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('404','schedule_460','easy_103','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('405','schedule_460','easy_114','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('406','schedule_460','easy_118','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('400','schedule_460','easy_115','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('401','schedule_460','easy_120','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('407','schedule_460','easy_112','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('408','schedule_460','easy_116','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('409','schedule_460','easy_111','easy');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('410','schedule_460','med_102','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('411','schedule_460','med_100','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('412','schedule_460','med_109','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('413','schedule_460','med_107','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('414','schedule_460','med_115','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('415','schedule_460','med_116','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('416','schedule_460','med_106','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('417','schedule_460','med_113','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('418','schedule_460','med_114','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('419','schedule_460','med_101','med');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('420','schedule_460','hard_106','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('421','schedule_460','hard_105','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('422','schedule_460','hard_112','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('423','schedule_460','hard_120','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('424','schedule_460','hard_116','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('425','schedule_460','hard_107','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('426','schedule_460','hard_113','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('427','schedule_460','hard_110','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('428','schedule_460','hard_115','hard');
Insert into HR.RANDOM_QUESTION (ROW_ID,EXAM_ID,QUESTION_ID,TYPE) values ('429','schedule_460','hard_117','hard');
REM INSERTING into HR.REGIONS
SET DEFINE OFF;
Insert into HR.REGIONS (REGION_ID,REGION_NAME) values (1,'Europe');
Insert into HR.REGIONS (REGION_ID,REGION_NAME) values (2,'Americas');
Insert into HR.REGIONS (REGION_ID,REGION_NAME) values (3,'Asia');
Insert into HR.REGIONS (REGION_ID,REGION_NAME) values (4,'Middle East and Africa');
REM INSERTING into HR.REGISTER
SET DEFINE OFF;
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('saf','asd','aasd@saf','India');
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('a','a','aasd@saf','India');
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('shuraif','123123','aasd@saf','India');
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('k','k',null,null);
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values (null,null,null,null);
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('porinju','porinju','aasd@saf','India');
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('shuraif','123123','asdf@sdfv','India');
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('shuraif','123qwe',null,null);
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('shuraif','shuraif','shuraif@gmail','India');
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('porinju','porinju','aasd@saf','India');
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('shuraif','123qwe',null,null);
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values (null,null,null,null);
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values (null,null,null,null);
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('porinju','porinju','aasd@saf','India');
Insert into HR.REGISTER (NAME,PASSWORD,EMAIL,COUNTRY) values ('k','k','k@e','India');
REM INSERTING into HR.SCORE
SET DEFINE OFF;
Insert into HR.SCORE (SCORE_ID,SCHEDULE_ID,USER_ID,SCORE) values ('score302','schedule_480','jasma',24);
Insert into HR.SCORE (SCORE_ID,SCHEDULE_ID,USER_ID,SCORE) values ('score304','schedule_480','jaya',26);
Insert into HR.SCORE (SCORE_ID,SCHEDULE_ID,USER_ID,SCORE) values ('score300','schedule_480','shuraif',28);
Insert into HR.SCORE (SCORE_ID,SCHEDULE_ID,USER_ID,SCORE) values ('score303','schedule_480','pavitra',20);
REM INSERTING into HR.SEQUENCE
SET DEFINE OFF;
Insert into HR.SEQUENCE (SEQ_NAME,SEQ_COUNT) values ('SEQ_GEN',50);
REM INSERTING into HR.STUDENT
SET DEFINE OFF;
Insert into HR.STUDENT (STUDENTID,STUDENTNAME) values (1,'infosyd mysore');
Insert into HR.STUDENT (STUDENTID,STUDENTNAME) values (2,'UST Trivandrum');
REM INSERTING into HR.TEMP
SET DEFINE OFF;
Insert into HR.TEMP (ID,NAME) values (12,'ssa');
Insert into HR.TEMP (ID,NAME) values (34,'django');
Insert into HR.TEMP (ID,NAME) values (32,'sdfsaf');
Insert into HR.TEMP (ID,NAME) values (332,'sda');
Insert into HR.TEMP (ID,NAME) values (425,'asfdfd');
Insert into HR.TEMP (ID,NAME) values (443,'qfdqd');
Insert into HR.TEMP (ID,NAME) values (55,'ee');
Insert into HR.TEMP (ID,NAME) values (33,'ss');
REM INSERTING into HR.TEST
SET DEFINE OFF;
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (100,'King',24000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (101,'Kochhar',17000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (102,'De Haan',17000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (103,'Hunold',9000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (104,'Ernst',6000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (105,'Austin',4800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (106,'Pataballa',4800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (107,'Lorentz',4200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (108,'Greenberg',12008);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (109,'Faviet',9000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (110,'Chen',8200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (111,'Sciarra',7700);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (112,'Urman',7800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (113,'Popp',6900);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (114,'Raphaely',11000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (115,'Khoo',3100);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (116,'Baida',2900);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (117,'Tobias',2800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (118,'Himuro',2600);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (119,'Colmenares',2500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (120,'Weiss',8000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (121,'Fripp',8200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (122,'Kaufling',7900);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (123,'Vollman',6500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (124,'Mourgos',5800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (125,'Nayer',3200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (126,'Mikkilineni',2700);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (127,'Landry',2400);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (128,'Markle',2200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (129,'Bissot',3300);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (130,'Atkinson',2800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (131,'Marlow',2500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (132,'Olson',2100);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (133,'Mallin',3300);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (134,'Rogers',2900);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (135,'Gee',2400);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (136,'Philtanker',2200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (137,'Ladwig',3600);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (138,'Stiles',3200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (139,'Seo',2700);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (140,'Patel',2500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (141,'Rajs',3500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (142,'Davies',3100);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (143,'Matos',2600);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (144,'Vargas',2500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (145,'Russell',14000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (146,'Partners',13500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (147,'Errazuriz',12000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (148,'Cambrault',11000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (149,'Zlotkey',10500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (150,'Tucker',10000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (151,'Bernstein',9500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (152,'Hall',9000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (153,'Olsen',8000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (154,'Cambrault',7500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (155,'Tuvault',7000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (156,'King',10000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (157,'Sully',9500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (158,'McEwen',9000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (159,'Smith',8000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (160,'Doran',7500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (161,'Sewall',7000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (162,'Vishney',10500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (163,'Greene',9500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (164,'Marvins',7200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (165,'Lee',6800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (166,'Ande',6400);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (167,'Banda',6200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (168,'Ozer',11500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (169,'Bloom',10000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (170,'Fox',9600);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (171,'Smith',7400);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (172,'Bates',7300);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (173,'Kumar',6100);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (174,'Abel',11000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (175,'Hutton',8800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (176,'Taylor',8600);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (177,'Livingston',8400);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (178,'Grant',7000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (179,'Johnson',6200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (180,'Taylor',3200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (181,'Fleaur',3100);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (182,'Sullivan',2500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (183,'Geoni',2800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (184,'Sarchand',4200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (185,'Bull',4100);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (186,'Dellinger',3400);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (187,'Cabrio',3000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (188,'Chung',3800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (189,'Dilly',3600);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (190,'Gates',2900);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (191,'Perkins',2500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (192,'Bell',4000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (193,'Everett',3900);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (194,'McCain',3200);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (195,'Jones',2800);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (196,'Walsh',3100);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (197,'Feeney',3000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (198,'OConnell',2600);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (199,'Grant',2600);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (200,'Whalen',4400);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (201,'Hartstein',13000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (202,'Fay',6000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (203,'Mavris',6500);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (204,'Baer',10000);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (205,'Higgins',12008);
Insert into HR.TEST (EMPLOYEE_ID,LAST_NAME,SALARY) values (206,'Gietz',8300);
REM INSERTING into HR.USER_LOGIN
SET DEFINE OFF;
Insert into HR.USER_LOGIN (ID,USER_ID,USER_PASSWORD) values (122,'jaya','jaya123');
Insert into HR.USER_LOGIN (ID,USER_ID,USER_PASSWORD) values (103,'shuru','shuraif');
Insert into HR.USER_LOGIN (ID,USER_ID,USER_PASSWORD) values (125,'govind','govind123');
Insert into HR.USER_LOGIN (ID,USER_ID,USER_PASSWORD) values (124,'shuraif','shuraif123');
Insert into HR.USER_LOGIN (ID,USER_ID,USER_PASSWORD) values (123,'pavitra','pavitra123');
Insert into HR.USER_LOGIN (ID,USER_ID,USER_PASSWORD) values (121,'jasma','jasma123');
REM INSERTING into HR.USER_REGISTRATION
SET DEFINE OFF;
Insert into HR.USER_REGISTRATION (USER_ID,FIRST_NAME,LAST_NAME,EMAIL,MOBILE,STATUS) values (122,'jaya','prabha','jayaprabha@gmail.com','8734238724','accept');
Insert into HR.USER_REGISTRATION (USER_ID,FIRST_NAME,LAST_NAME,EMAIL,MOBILE,STATUS) values (125,'govind','ramesh','govind@gmail.com','9897412246','temp');
Insert into HR.USER_REGISTRATION (USER_ID,FIRST_NAME,LAST_NAME,EMAIL,MOBILE,STATUS) values (103,'muhammed','shuraif','shuraifpilathata@gmail.com','9496369704','accept');
Insert into HR.USER_REGISTRATION (USER_ID,FIRST_NAME,LAST_NAME,EMAIL,MOBILE,STATUS) values (124,'muhammed','shuraif','shuraifpilathata@gmail.com','9496369704','accept');
Insert into HR.USER_REGISTRATION (USER_ID,FIRST_NAME,LAST_NAME,EMAIL,MOBILE,STATUS) values (123,'pavitra','kengatti','pavitra@gmail.com','9867342385','accept');
Insert into HR.USER_REGISTRATION (USER_ID,FIRST_NAME,LAST_NAME,EMAIL,MOBILE,STATUS) values (121,'jasma','k','jasma@gmail.com','9897412246','accept');
REM INSERTING into HR.USER_TABLE
SET DEFINE OFF;
Insert into HR.USER_TABLE (USER_NAME,PASSWORD,TYPE) values ('admin','admin','admin');
Insert into HR.USER_TABLE (USER_NAME,PASSWORD,TYPE) values ('user','user','user');
--------------------------------------------------------
--  DDL for Index LOC_STATE_PROVINCE_IX
--------------------------------------------------------

  CREATE INDEX "HR"."LOC_STATE_PROVINCE_IX" ON "HR"."LOCATIONS" ("STATE_PROVINCE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOC_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LOC_ID_PK" ON "HR"."LOCATIONS" ("LOCATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_DEPARTMENT_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_DEPARTMENT_IX" ON "HR"."EMPLOYEES" ("DEPARTMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."EMP_EMAIL_UK" ON "HR"."EMPLOYEES" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_NAME_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_NAME_IX" ON "HR"."EMPLOYEES" ("LAST_NAME", "FIRST_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_MANAGER_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_MANAGER_IX" ON "HR"."EMPLOYEES" ("MANAGER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DEPT_LOCATION_IX
--------------------------------------------------------

  CREATE INDEX "HR"."DEPT_LOCATION_IX" ON "HR"."DEPARTMENTS" ("LOCATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REG_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."REG_ID_PK" ON "HR"."REGIONS" ("REGION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_EMP_ID_ST_DATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JHIST_EMP_ID_ST_DATE_PK" ON "HR"."JOB_HISTORY" ("EMPLOYEE_ID", "START_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_DEPARTMENT_IX
--------------------------------------------------------

  CREATE INDEX "HR"."JHIST_DEPARTMENT_IX" ON "HR"."JOB_HISTORY" ("DEPARTMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_EMP_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."EMP_EMP_ID_PK" ON "HR"."EMPLOYEES" ("EMPLOYEE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DEPT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DEPT_ID_PK" ON "HR"."DEPARTMENTS" ("DEPARTMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COUNTRY_C_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."COUNTRY_C_ID_PK" ON "HR"."COUNTRIES" ("COUNTRY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_JOB_IX
--------------------------------------------------------

  CREATE INDEX "HR"."JHIST_JOB_IX" ON "HR"."JOB_HISTORY" ("JOB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_EMPLOYEE_IX
--------------------------------------------------------

  CREATE INDEX "HR"."JHIST_EMPLOYEE_IX" ON "HR"."JOB_HISTORY" ("EMPLOYEE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOC_COUNTRY_IX
--------------------------------------------------------

  CREATE INDEX "HR"."LOC_COUNTRY_IX" ON "HR"."LOCATIONS" ("COUNTRY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_JOB_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_JOB_IX" ON "HR"."EMPLOYEES" ("JOB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOC_CITY_IX
--------------------------------------------------------

  CREATE INDEX "HR"."LOC_CITY_IX" ON "HR"."LOCATIONS" ("CITY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JOB_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JOB_ID_PK" ON "HR"."JOBS" ("JOB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger SECURE_EMPLOYEES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."SECURE_EMPLOYEES" 
  BEFORE INSERT OR UPDATE OR DELETE ON employees
BEGIN
  secure_dml;
END secure_employees;
/
ALTER TRIGGER "HR"."SECURE_EMPLOYEES" DISABLE;
--------------------------------------------------------
--  DDL for Trigger UPDATE_JOB_HISTORY
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."UPDATE_JOB_HISTORY" 
  AFTER UPDATE OF job_id, department_id ON employees
  FOR EACH ROW
BEGIN
  add_job_history(:old.employee_id, :old.hire_date, sysdate,
                  :old.job_id, :old.department_id);
END;
/
ALTER TRIGGER "HR"."UPDATE_JOB_HISTORY" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;

/
--------------------------------------------------------
--  DDL for Procedure DEBITVALIDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."DEBITVALIDATE" 
(id in number,
d_name in varchar,
okay out varchar
)
as
begin
SELECT id INTO okay FROM bank_ac WHERE customer_ID=ID and name=d_name;
if(sql%rowcount!=0) then
okay:='okay';
else
okay:='fail';
end if;
exception 
when no_data_found then
okay:='fail';
end;

/
--------------------------------------------------------
--  DDL for Procedure DELETEPURCHASE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."DELETEPURCHASE" 
as
begin
delete from purchase;
end;

/
--------------------------------------------------------
--  DDL for Procedure INSERTEASYQUESTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."INSERTEASYQUESTION" 
(id in out varchar,question in varchar,option_a in varchar,option_b in varchar,option_c in varchar,option_d in varchar,answer in varchar)
as
begin
SELECT easy_question_sequence.nextval INTO id FROM dual;
id:='easy_'||id;
insert into easy_question values(id,question,option_a,option_b,option_c,option_d,answer);
end;

/
--------------------------------------------------------
--  DDL for Procedure INSERTHARDQUESTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."INSERTHARDQUESTION" 
(id in out varchar,question in varchar,option_a in varchar,option_b in varchar,option_c in varchar,option_d in varchar,answer in varchar)
as
begin
SELECT hard_question_sequence.nextval INTO id FROM dual;
id:='hard_'||id;
insert into hard_question values(id,question,option_a,option_b,option_c,option_d,answer);
end;

/
--------------------------------------------------------
--  DDL for Procedure INSERTITEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."INSERTITEM" 
(item_id in out number,
item_name in varchar,
item_price in number
)
as
begin
select idgen.nextval into item_id from dual;
insert into item values(item_id,item_name,item_price);
end;

/
--------------------------------------------------------
--  DDL for Procedure INSERTMEDQUESTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."INSERTMEDQUESTION" 
(id in out varchar,question in varchar,option_a in varchar,option_b in varchar,option_c in varchar,option_d in varchar,answer in varchar)
as
begin
SELECT med_question_sequence.nextval INTO id FROM dual;
id:='med_'||id;
insert into med_question values(id,question,option_a,option_b,option_c,option_d,answer);
end;

/
--------------------------------------------------------
--  DDL for Procedure INSERTSCHEDULE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."INSERTSCHEDULE" 
(id in out varchar,edate in varchar2,start_time in varchar,duration in varchar,seat in varchar)
as
begin
SELECT schedule_sequence.nextval INTO id FROM dual;
id:='schedule_'||id;
insert into exam_table values(id,edate,start_time,duration,seat,schedule_pass_sequence.nextval);
end;

desc exam_table;

select *from exam_table;

schedule_261


desc exam_registration;
select* from exam_table;

select * from user_login;
insert into exam_registration values('1','schedule_261','shuru');
commit;


select*from exam_table;
desc exam_registration;
select*from  exam_registration;

select * from exam_registration where user_id='shuru';

select * from random_question where exam_id='schedule_261';
delete from exam_registration;
delete from exam_table;
delete from random_question;
delete from easy_question;
delete from med_question;
delete from hard_question;
commit;
select* from hard_question;
select* from med_question;
select* from easy_question;
select*from exam_table;
select *from random_question;
select* from exam_table;
desc exam_table;
desc random_question;
create table score (score_id varchar2(20) primary key, schedule_id varchar2(20),user_id varchar2(20),score number)	;
create sequence score_sequence minvalue 100; 
select*from score;

select*from exam_registration;
select*from user_registration;
select *from user_login;
insert into exam_registration values(1,'schedule_302','shuru');

select exam_id from exam_registration  where user_id='shuru';
commit;
select*from score;

delete from exam_table;
select*from exam_table;
alter table exam_table rename column duration to end_time;
commit;
insert into ea

/
--------------------------------------------------------
--  DDL for Procedure INSERTUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."INSERTUSER" 
(id IN NUMBER,    
name IN VARCHAR2,flag out varchar2)    
is    
begin    
insert into temp values(id,name); 
if (sql%rowcount!=0) then
	flag:='okay';
else
	flag:='fail';
end if;   
end; 

/
--------------------------------------------------------
--  DDL for Procedure MODIFYITEMBOTH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."MODIFYITEMBOTH" 
(item_id in number,new_name varchar,new_price varchar
)
as
begin
update item set item_price=new_price where id=item_id;
update item set item_name=new_name where id=item_id;
end;

/
--------------------------------------------------------
--  DDL for Procedure MODIFYITEMNAME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."MODIFYITEMNAME" 
(item_id in number,new_name varchar
)
as
begin
update item set item_name=new_name where id=item_id;
end;

/
--------------------------------------------------------
--  DDL for Procedure MODIFYITEMPRICE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."MODIFYITEMPRICE" 
(item_id in number,new_price number
)
as
begin
update item set item_price=new_price where id=item_id;
end;

/
--------------------------------------------------------
--  DDL for Procedure MYPROC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."MYPROC" 
(id in number,name in varchar(20),flag out varchar(20)) is
id number;
name varchar(20);
begin
insert into temp values(id,name);
end;

/
--------------------------------------------------------
--  DDL for Procedure OPBALANCE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."OPBALANCE" 
(total in  number,id in number,pin in number,c_bal out number,okay in out varchar
)
as
begin
okay:='';
select balance into c_bal from bank_ac where customer_id=id and pin_number=pin;
if(c_bal>total) then
update bank_ac set balance=balance-total where customer_id=id and pin_number=pin;
okay:='okay';
else 
okay:='notOkay';
end if;
end;

/
--------------------------------------------------------
--  DDL for Procedure OPVALIDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."OPVALIDATE" 
(id in number,
pin in number,
okay out varchar
)
as
begin
SELECT id INTO okay FROM bank_ac WHERE customer_ID=ID and pin_number=pin;
if(sql%rowcount!=0) then
okay:='okay';
else
okay:='fail';
end if;
exception 
when no_data_found then
okay:='fail';
end;

/
--------------------------------------------------------
--  DDL for Procedure PURCHASEITEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."PURCHASEITEM" 
(item_id in number,n_count in out number,c_count in out number)
as
begin
select count into c_count from purchase where id=item_id;
if(c_count>0) then
n_count:=n_count+c_count;
update purchase set count=n_count where id=item_id;
else
insert into purchase values(item_id,n_count);
end if;
exception 
when no_data_found then
insert into purchase values(item_id,n_count);
end;

/
--------------------------------------------------------
--  DDL for Procedure RANDOMGEN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."RANDOMGEN" 
(random in out number
)
as
begin
select randomNum.nextval into random from dual;
dbms_output.put_line(random);
end;

/
--------------------------------------------------------
--  DDL for Procedure REMOVEITEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."REMOVEITEM" 
(item_id in number
)
as
begin
delete from item where id=item_id;
end;

/
--------------------------------------------------------
--  DDL for Procedure REMOVEPURCHASE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."REMOVEPURCHASE" 
(item_id in number
)
as
begin
delete from purchase where id=item_id;
end;

/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/
--------------------------------------------------------
--  DDL for Procedure SELECTADMIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SELECTADMIN" 
(id in varchar,
pass in varchar,
okay out varchar
)
as
begin
SELECT admin_id INTO okay FROM admin_login WHERE admin_id=id and admin_password=pass;
if(sql%found) then
okay:='okay';
else
okay:='fail';
end if;
exception 
when no_data_found then
okay:='fail';
end;

/
--------------------------------------------------------
--  DDL for Procedure SELECTUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SELECTUSER" 
(id in varchar,
pass in varchar,
okay out varchar
)
as
begin
SELECT id INTO okay FROM user_table WHERE ID=ID and user_name=id and password=pass and type='user';
if(sql%found) then
okay:='okay';
else
okay:='fail';
end if;
exception 
when no_data_found then
okay:='fail';
end;

/
--------------------------------------------------------
--  DDL for Procedure UPDATEBALANCE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."UPDATEBALANCE" 
(total in  number,d_no number,d_name varchar,c_bal out number,okay in out varchar
)
as
begin
okay:='';
select balance into c_bal from bank_ac where card_no=d_no and name=name;
if(c_bal>total) then
update bank_ac set balance=balance-total where card_no=d_no and name=name;
okay:='okay';
else 
okay:='notOkay';
end if;
end;

/
--------------------------------------------------------
--  DDL for Procedure VALIDATEADMIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."VALIDATEADMIN" 
  (id in varchar,
   pass in varchar,
   okay out varchar
  )
    as
   begin
   SELECT admin_id INTO okay FROM admin_login WHERE admin_id=id and admin_password=pass;
  if(sql%found) then
  okay:='okay';
   else
  okay:='failed_in_if';
  end if;
   exception
  when no_data_found then
  okay:='fail_in_exception';
 end;

/
--------------------------------------------------------
--  DDL for Procedure myproc
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."myproc" 
(id in number,name in varchar(20),flag out varchar(20)) is
begin
insert into temp values(id,name);
end;

/
--------------------------------------------------------
--  Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_EMP_ID_ST_DATE_PK" PRIMARY KEY ("EMPLOYEE_ID", "START_DATE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_DATE_INTERVAL" CHECK (end_date > start_date) ENABLE;
  ALTER TABLE "HR"."JOB_HISTORY" MODIFY ("JOB_ID" CONSTRAINT "JHIST_JOB_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_HISTORY" MODIFY ("END_DATE" CONSTRAINT "JHIST_END_DATE_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_HISTORY" MODIFY ("START_DATE" CONSTRAINT "JHIST_START_DATE_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_HISTORY" MODIFY ("EMPLOYEE_ID" CONSTRAINT "JHIST_EMPLOYEE_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "HR"."PRODUCTS" MODIFY ("SUPPLIER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."PRODUCTS" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TEST
--------------------------------------------------------

  ALTER TABLE "HR"."TEST" MODIFY ("LAST_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MED_QUESTION
--------------------------------------------------------

  ALTER TABLE "HR"."MED_QUESTION" ADD PRIMARY KEY ("QUESTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "HR"."DEPARTMENTS" ADD CONSTRAINT "DEPT_ID_PK" PRIMARY KEY ("DEPARTMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."DEPARTMENTS" MODIFY ("DEPARTMENT_NAME" CONSTRAINT "DEPT_NAME_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "HR"."COUNTRIES" ADD CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."COUNTRIES" MODIFY ("COUNTRY_ID" CONSTRAINT "COUNTRY_ID_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "HR"."LOCATIONS" ADD CONSTRAINT "LOC_ID_PK" PRIMARY KEY ("LOCATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."LOCATIONS" MODIFY ("CITY" CONSTRAINT "LOC_CITY_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EXAM_TABLE
--------------------------------------------------------

  ALTER TABLE "HR"."EXAM_TABLE" ADD PRIMARY KEY ("EXAM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_REGISTRATION
--------------------------------------------------------

  ALTER TABLE "HR"."USER_REGISTRATION" ADD PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."USER_REGISTRATION" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RANDOM_QUESTION
--------------------------------------------------------

  ALTER TABLE "HR"."RANDOM_QUESTION" ADD PRIMARY KEY ("ROW_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_LOGIN
--------------------------------------------------------

  ALTER TABLE "HR"."USER_LOGIN" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."USER_LOGIN" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EASY_QUESTION
--------------------------------------------------------

  ALTER TABLE "HR"."EASY_QUESTION" ADD PRIMARY KEY ("QUESTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOBS
--------------------------------------------------------

  ALTER TABLE "HR"."JOBS" ADD CONSTRAINT "JOB_ID_PK" PRIMARY KEY ("JOB_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."JOBS" MODIFY ("JOB_TITLE" CONSTRAINT "JOB_TITLE_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEQUENCE
--------------------------------------------------------

  ALTER TABLE "HR"."SEQUENCE" ADD PRIMARY KEY ("SEQ_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."SEQUENCE" MODIFY ("SEQ_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_TABLE
--------------------------------------------------------

  ALTER TABLE "HR"."USER_TABLE" ADD PRIMARY KEY ("USER_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMP_ID_PK" PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_SALARY_MIN" CHECK (salary > 0) ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("JOB_ID" CONSTRAINT "EMP_JOB_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("HIRE_DATE" CONSTRAINT "EMP_HIRE_DATE_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("EMAIL" CONSTRAINT "EMP_EMAIL_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("LAST_NAME" CONSTRAINT "EMP_LAST_NAME_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ITEM
--------------------------------------------------------

  ALTER TABLE "HR"."ITEM" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXAM_REGISTRATION
--------------------------------------------------------

  ALTER TABLE "HR"."EXAM_REGISTRATION" ADD PRIMARY KEY ("EXAM_REG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "HR"."EMPLOYEE" ADD PRIMARY KEY ("EMPID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCORE
--------------------------------------------------------

  ALTER TABLE "HR"."SCORE" ADD PRIMARY KEY ("SCORE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXAM_SCHEDULE
--------------------------------------------------------

  ALTER TABLE "HR"."EXAM_SCHEDULE" ADD PRIMARY KEY ("EXAM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REGIONS
--------------------------------------------------------

  ALTER TABLE "HR"."REGIONS" ADD CONSTRAINT "REG_ID_PK" PRIMARY KEY ("REGION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."REGIONS" MODIFY ("REGION_ID" CONSTRAINT "REGION_ID_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HARD_QUESTION
--------------------------------------------------------

  ALTER TABLE "HR"."HARD_QUESTION" ADD PRIMARY KEY ("QUESTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "HR"."STUDENT" ADD PRIMARY KEY ("STUDENTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."STUDENT" MODIFY ("STUDENTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QWE
--------------------------------------------------------

  ALTER TABLE "HR"."QWE" ADD PRIMARY KEY ("EMP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "HR"."COUNTRIES" ADD CONSTRAINT "COUNTR_REG_FK" FOREIGN KEY ("REGION_ID")
	  REFERENCES "HR"."REGIONS" ("REGION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "HR"."DEPARTMENTS" ADD CONSTRAINT "DEPT_LOC_FK" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "HR"."LOCATIONS" ("LOCATION_ID") ENABLE;
  ALTER TABLE "HR"."DEPARTMENTS" ADD CONSTRAINT "DEPT_MGR_FK" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_DEPT_FK" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_JOB_FK" FOREIGN KEY ("JOB_ID")
	  REFERENCES "HR"."JOBS" ("JOB_ID") ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_MANAGER_FK" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXAM_REGISTRATION
--------------------------------------------------------

  ALTER TABLE "HR"."EXAM_REGISTRATION" ADD FOREIGN KEY ("EXAM_ID")
	  REFERENCES "HR"."EXAM_TABLE" ("EXAM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_DEPT_FK" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_EMP_FK" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_JOB_FK" FOREIGN KEY ("JOB_ID")
	  REFERENCES "HR"."JOBS" ("JOB_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "HR"."LOCATIONS" ADD CONSTRAINT "LOC_C_ID_FK" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "HR"."COUNTRIES" ("COUNTRY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "HR"."PRODUCTS" ADD CONSTRAINT "FK_SUPPLIER" FOREIGN KEY ("SUPPLIER_ID")
	  REFERENCES "HR"."EXAM_TABLE" ("EXAM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QWE
--------------------------------------------------------

  ALTER TABLE "HR"."QWE" ADD FOREIGN KEY ("DEPT_ID")
	  REFERENCES "HR"."EXAM_TABLE" ("EXAM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RANDOM_QUESTION
--------------------------------------------------------

  ALTER TABLE "HR"."RANDOM_QUESTION" ADD FOREIGN KEY ("EXAM_ID")
	  REFERENCES "HR"."EXAM_TABLE" ("EXAM_ID") ENABLE;
