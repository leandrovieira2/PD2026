-- EXERCICIO 1

CREATE TABLE sales.warranty_claim (
    claim_id     INT         NOT NULL,
    customer_id  INT         NOT NULL,
    staff_id     INT         NULL,
    product_code VARCHAR(20) NOT NULL,
    opened_on    DATE        NOT NULL
);
GO


ALTER TABLE sales.warranty_claim
ADD CONSTRAINT PK_warranty_claim PRIMARY KEY (claim_id);
GO


SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE (TABLE_SCHEMA = 'sales' AND TABLE_NAME = 'customers'        AND COLUMN_NAME = 'customer_id')
   OR (TABLE_SCHEMA = 'sales' AND TABLE_NAME = 'warranty_claim'   AND COLUMN_NAME = 'customer_id');


SELECT wc.claim_id, wc.customer_id
FROM sales.warranty_claim AS wc
LEFT JOIN sales.customers AS c
       ON c.customer_id = wc.customer_id
WHERE c.customer_id IS NULL;

ALTER TABLE sales.warranty_claim
WITH CHECK
ADD CONSTRAINT FK_warranty_claim_customers
    FOREIGN KEY (customer_id)
    REFERENCES sales.customers (customer_id);
GO