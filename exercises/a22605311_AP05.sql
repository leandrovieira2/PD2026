--Exercício 1 de 05

CREATE TABLE HR.learning_project (
    project_id INT           NOT NULL,
    title      NVARCHAR(80)  NOT NULL,
    budget     DECIMAL(12,2) NOT NULL,
    due_date   DATE          NULL
);

--Exercício 2 de 05

ALTER TABLE HR.learning_project
ADD status_code VARCHAR(12) NULL;
ALTER TABLE HR.learning_project
ALTER COLUMN status_code VARCHAR(20) NULL;

SELECT COLUMN_NAME,
       DATA_TYPE,
       CHARACTER_MAXIMUM_LENGTH,
       IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'HR'
  AND TABLE_NAME   = 'learning_project'
  AND COLUMN_NAME  = 'status_code';