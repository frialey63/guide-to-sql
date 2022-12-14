-- PostgreSQL

CREATE TABLE PRODUCTS
(MFR_ID      CHAR(3) NOT NULL,
PRODUCT_ID   CHAR(5) NOT NULL,
DESCRIPTION  VARCHAR(20) NOT NULL,
PRICE        MONEY NOT NULL,
QTY_ON_HAND  INTEGER NOT NULL,
PRIMARY KEY  (MFR_ID, PRODUCT_ID) );

CREATE TABLE OFFICES
(OFFICE      INTEGER NOT NULL,
CITY         VARCHAR(15) NOT NULL,
REGION       VARCHAR(10) NOT NULL,
MGR          INTEGER,
TARGET       MONEY,
SALES        MONEY NOT NULL,
PRIMARY KEY  (OFFICE));

CREATE TABLE CUSTOMERS
(CUST_NUM    INTEGER NOT NULL,
COMPANY      VARCHAR(20) NOT NULL,
CUST_REP     INTEGER,
CREDIT_LIMIT MONEY,
PRIMARY KEY  (CUST_NUM));

CREATE TABLE SALESREPS
(EMPL_NUM    INTEGER NOT NULL,
NAME         VARCHAR(15) NOT NULL,
ACE          INTEGER,
REP_OFFICE   INTEGER,
TITLE        VARCHAR (10),
HIRE_DATE    DATE NOT NULL,
MANAGER      INTEGER,
QUOTA        MONEY,
SALES        MONEY NOT NULL,
PRIMARY KEY  (EMPL_NUM));

CREATE TABLE ORDERS
(ORDER_NUM   INTEGER NOT NULL,
ORDER_DATE   DATE NOT NULL,
CUST         INTEGER NOT NULL,
REP          INTEGER,
MFR          CHAR(3) NOT NULL,
PRODUCT      CHAR(5) NOT NULL,
QTY          INTEGER NOT NULL,
AMOUNT       MONEY NOT NULL,
PRIMARY KEY  (ORDER_NUM));
