CREATE TABLE customer (
    emp_id INT PRIMARY KEY,
    name VARCHAR(90) NOT NULL,
    email VARCHAR(90) UNIQUE,
    salary DECIMAL(10,2) CHECK (salary > 10000),
    join_date DATE,
    dept VARCHAR(90) DEFAULT 'IT',
    cont_no VARCHAR(90)
);

DESC customer;

ALTER TABLE customer
ADD COLUMN pay_mode VARCHAR(90);

DESC customer;

ALTER TABLE customer
RENAME COLUMN cont_no TO mob_no;

RENAME TABLE customer TO customers;

DESC customers;