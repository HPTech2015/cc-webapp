CREATE TABLE CUSTOMER (
	CUSTOMER_ID BIGINT AUTO_INCREMENT PRIMARY KEY,
	USERNAME VARCHAR(16) NOT NULL,
	PASSWORD VARCHAR(30) NOT NULL
);

CREATE TABLE PERSONAL (
	PERSONAL_ID BIGINT AUTO_INCREMENT PRIMARY KEY,
	FIRST_NAME VARCHAR(16) NOT NULL,
	LAST_NAME VARCHAR(16) NOT NULL,
	PHONE_NUM VARCHAR(10) NOT NULL,
	ADDR_ONE VARCHAR(50) NOT NULL,
	ADDR_TWO VARCHAR(50),
	CUSTOMER_ID BIGINT NOT NULL
);

ALTER TABLE PERSONAL ADD FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID);