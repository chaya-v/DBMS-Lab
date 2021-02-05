CREATE TABLE SALESMAN(SALESMAN_ID VARCHAR(8),
NAME VARCHAR(20),
CITY VARCHAR(20),
COMMISSION VARCHAR2(10),
CONSTRAINT PKS PRIMARY KEY(SALESMAN_ID));

CREATE TABLE CUSTOMER(CUSTOMER_ID VARCHAR(8),
CUST_NAME VARCHAR2 (20),
CITY VARCHAR2 (20),
GRADE NUMBER (3),
SALESMAN_ID VARCHAR(8),
CONSTRAINT PKC PRIMARY KEY(CUSTOMER_ID),
CONSTRAINT FKC FOREIGN KEY(SALESMAN_ID) REFERENCES
SALESMAN(SALESMAN_ID) ON DELETE SET NULL);

CREATE TABLE ORDERS (ORD_NO VARCHAR(8),
PURCHASE_AMT NUMBER(10, 2),
ORD_DATE DATE,
CUSTOMER_ID VARCHAR(8),
SALESMAN_ID VARCHAR(8),
CONSTRAINT PKO PRIMARY KEY (ORD_NO),
CONSTRAINT FKOC FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER
(CUSTOMER_ID) ON DELETE CASCADE,
CONSTRAINT FKOS FOREIGN KEY (SALESMAN_ID) REFERENCES SALESMAN
(SALESMAN_ID) ON DELETE CASCADE);