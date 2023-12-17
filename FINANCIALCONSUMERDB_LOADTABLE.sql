CREATE DATABASE FINANCIALCONSUMER;
SHOW DATABASES;

DROP TABLE FINANCIALCONSUMER.DATA_FINANCE;
-- 테이블 생성 : 컬럼명, 데이터 형식, NULL 허용, 기본값, 기본키 컬럼 선언
CREATE TABLE FINANCIALCONSUMER.DATA_FINANCE (
	NUM_SERIAL INT NOT NULL PRIMARY KEY,
	NAME VARCHAR(10) NOT NULL,
    GENDER VARCHAR(10),
    AGE INT,
    PHONE_NUMBER VARCHAR(20),
    ZIP_CODE INT,
    HOME_ADDRESS VARCHAR(100),
    HOME_TYPE VARCHAR(10),
    INCOME_BRACKET INT,
    CREDIT_SCORE INT,
    REPAYMENT_RISK_INDEX INT,
    AMT_CREDITCARD_PAYMENT INT,
    AMT_CASHADVANCE_PAYMENT INT,
    NUM_CREDITCARD_ISSUANCES INT,
    NUM_CREDITCARD_CANCELED INT,
    TF_LOAN VARCHAR(10),
    AMT_CREDITLOAN INT,
    AMT_CREDITLOAN_OUTSTANDING INT,
    TF_PENSION VARCHAR(10),
    AMT_PENSION INT
) ENGINE=MYISAM CHARSET=utf8;

-- 로컬 대용량 데이터 파일 로드
LOAD DATA LOCAL INFILE 'C:/Program Files/MySQL/MySQL Server 8.0/Uploads/DATA_FINANCE.csv'
IGNORE INTO TABLE FINANCIALCONSUMER.DATA_FINANCE
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
STARTING BY ''
IGNORE 1 ROWS;


DROP TABLE FINANCIALCONSUMER.DATA_JOIN_CARDPAYMENT ;
CREATE TABLE FINANCIALCONSUMER.DATA_JOIN_CARDPAYMENT (
	NUM_SERIAL INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(10) NOT NULL,
    GENDER VARCHAR(10),
    PHONE_NUMBER VARCHAR(20),
    BIRTH_DATE DATE,
    PAYMENT_DATE DATE,
    AMT_CREDITCARD_PAYMENT INT,
    AFFILIGATESTORE_ADDRESS VARCHAR(100),
    AFFILIGATESTORE_INDUSTRY_CODE VARCHAR(10),
    AFFILIGATESTORE_INDUSTRY_TYPE VARCHAR(20)
) ENGINE=MYISAM CHARSET=utf8;

LOAD DATA LOCAL INFILE 'C:/Program Files/MySQL/MySQL Server 8.0/Uploads/DATA_JOIN_CARDPAYMENT.csv'
IGNORE INTO TABLE FINANCIALCONSUMER.DATA_JOIN_CARDPAYMENT
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
STARTING BY ''
IGNORE 1 ROWS;


DROP TABLE FINANCIALCONSUMER.DATA_JOIN_ACCOMODATIONAPP;
CREATE TABLE FINANCIALCONSUMER.DATA_JOIN_ACCOMODATIONAPP(
	NUM_SERIAL INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(10) NOT NULL,
    BIRTH_DATE DATE,
    GENDER VARCHAR(10),
    EMAIL VARCHAR(100),
    PHONE_NUMBER VARCHAR(20),
    TF_BUSINESS_MEMBER VARCHAR(10),
    USE_SERVICE_AREA VARCHAR(100),
    USE_SERVICE_DATE DATE
) ENGINE=MYISAM CHARSET=utf8;

LOAD DATA LOCAL INFILE 'C:/Program Files/MySQL/MySQL Server 8.0/Uploads/DATA_JOIN_ACCOMODATIONAPP.csv'
IGNORE INTO TABLE FINANCIALCONSUMER.DATA_JOIN_ACCOMODATIONAPP
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
STARTING BY ''
IGNORE 1 ROWS;


DROP TABLE FINANCIALCONSUMER.DATA_RETAIL;
CREATE TABLE FINANCIALCONSUMER.DATA_RETAIL(
	NUM_SERIAL INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(10) NOT NULL,
    GENDER VARCHAR(10),
    AGE INT,
    JOIN_DATE DATE,
    PHONE_NUMBER VARCHAR(20),
    ZIP_CODE INT,
    SHIPPING_ADDRESS VARCHAR(100),
    NUM_PURCHASES_BOOKS INT,
    AMT_PURCHASES_BOOKS INT,
    NUM_PURCHASES_CULTURE INT,
    AMT_PURCHASES_CULTURE INT,
    NUM_PURCHASES_EDU INT,
    AMT_PURCHASES_EDU INT,
    AMT_USAGE_MEMBERSHIP INT,
    AMT_USAGE_GIFTCERTIFICATE INT
) ENGINE=MYISAM CHARSET=utf8;

LOAD DATA LOCAL INFILE 'C:/Program Files/MySQL/MySQL Server 8.0/Uploads/DATA_RETAIL.csv'
IGNORE INTO TABLE FINANCIALCONSUMER.DATA_RETAIL
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
STARTING BY ''
IGNORE 1 ROWS;


CREATE TABLE FINANCIALCONSUMER.DATA_MOBILE_COMMUNICATION(
	NUM_SERIAL INT NOT NULL PRIMARY KEY,
    AGE INT,
    NAME VARCHAR(10) NOT NULL,
    GENDER VARCHAR(10),
    ZIP_CODE INT,
    DETAIL_ADDRESS VARCHAR(100),
    INDUSTRY_TYPE VARCHAR(20),
    SUBSCRIPTION_SERVICE VARCHAR(100),
    SUBSCRIPTION_FEE INT,
    SUBSCRIPTION_DATE DATE,
    MEMBER_TYPE VARCHAR(20),
    TF_BLACKLIST VARCHAR(10),
    NUM_OVERDUE_PAYMENT INT,
    MEMBERSHIP_GRADE VARCHAR(20), 
    TF_CONTENTS_PAYMENT VARCHAR(10),
    AMT_CONTENTS_PAYMENT INT,
    EXTRA_SERVICE VARCHAR(100)
) ENGINE=MYISAM CHARSET=utf8;

LOAD DATA LOCAL INFILE 'C:/Program Files/MySQL/MySQL Server 8.0/Uploads/DATA_MOBILECOMMUNICATION_V2.csv'
IGNORE INTO TABLE FINANCIALCONSUMER.DATA_MOBILE_COMMUNICATION
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
STARTING BY ''
IGNORE 1 ROWS;


USE FINANCIALCONSUMER;
DESC DATA_MOBILE_COMMUNICATION;
SELECT *
-- COUNT(*)
FROM DATA_MOBILE_COMMUNICATION;
-- DATA_MOBILE_COMMUNICATION
-- DATA_RETAIL
-- DATA_JOIN_ACCOMODATIONAPP
-- DATA_JOIN_CARDPAYMENT
-- DATA_FINANCE
