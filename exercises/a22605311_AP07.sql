-- EXERCICIO 1

CREATE TABLE sales.waaranty_claim (
    claim_id    INT         NOT NULL,
    customer_id INT         NOT NULL,
    staff_id    INT         NULL,
    product_code VarCHAR(20) NOT NULL,
    opened_on   DATE        NOT NULL
);
GO

SELECT *
FROM sales.waaranty_claim;

