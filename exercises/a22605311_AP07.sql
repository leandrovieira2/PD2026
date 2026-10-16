-- EXERCICIO 1

CREATE TABLE sales.waaranty_claim (
    claim_id    INT         NOT NULL,
    customer_id INT         NOT NULL,
    staff_id    INT         NULL,
    product_code VarCHAR(20) NOT NULL,
    opened_on   DATE        NOT NULL
);
GO

INSERT INTO sales.waaranty_claim
    (claim_id, customer_id, staff_id, product_code, opened_on)
VALUES
    (1, 1, NULL, 'TEST-001', '2026-10-16');

SELECT * FROM sales.waaranty_claim;

SELECT *
FROM sales.waaranty_claim;

