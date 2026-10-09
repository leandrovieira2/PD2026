--Exercício 1 

CREATE TABLE HR.learning_project (
    project_id INT           NOT NULL,
    title      NVARCHAR(80)  NOT NULL,
    budget     DECIMAL(12,2) NOT NULL,
    due_date   DATE          NULL
);