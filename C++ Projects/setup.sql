CREATE DATABASE IF NOT EXISTS SaveProj;
USE SaveProj;

CREATE TABLE IF NOT EXISTS Accounts(
	last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    street_address VARCHAR(1023) NOT NULL,
    unit VARCHAR (32) NOT NULL,
    city VARCHAR (128) NOT NULL,
    state VARCHAR (32) NOT NULL,
    zip INT NOT NULL,
    dob VARCHAR (128) NOT NULL,
    ssn VARCHAR (128) NOT NULL,
    email_address VARCHAR (255) NOT NULL,
    mobile_number VARCHAR (128) NOT NULL,
    account_number VARCHAR (128) NOT NULL
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/account_info.csv'
INTO TABLE Accounts
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE IF NOT EXISTS Transactions(
	account_number VARCHAR (128) NOT NULL,
    transaction_datetime VARCHAR (128) NOT NULL,
    transaction_amount VARCHAR(125) NOT NULL,
    post_date VARCHAR (128) NOT NULL,
    merchant_number VARCHAR(125) NOT NULL,
    merchant_description VARCHAR(1024) NOT NULL,
    merchant_category_code VARCHAR(125) NOT NULL,
    transaction_number INT NOT NULL
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/transactions.csv'
INTO TABLE Transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
