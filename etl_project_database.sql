CREATE DATABASE etl_project;

USE etl_project;

SHOW Tables;

CREATE TABLE IF NOT EXISTS customers (
	customer_id INT,
    name VARCHAR(100),
    email VARCHAR(150),
    city VARCHAR(100),
    updated_at DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk PRIMARY KEY(customer_id)
);

CREATE TABLE IF NOT EXISTS staging_customers (
	customer_id INT,
	name VARCHAR(100),
	email VARCHAR(150),
	city VARCHAR(100),
	updated_at DATETIME,
	CONSTRAINT pk PRIMARY KEY(customer_id)
);

INSERT INTO customers (
    customer_id,
    name,
    email,
    city,
    updated_at
)
SELECT
    s.customer_id,
    s.name,
    s.email,
    s.city,
    s.updated_at
FROM staging_customers s
WHERE NOT EXISTS (
    SELECT 1
    FROM customers c
    WHERE c.customer_id = s.customer_id
);

SELECT * FROM staging_customers;

SELECT * from customers;