-- RUN table.sql queries before

SET AUTOCOMMIT = OFF;

COMMIT;

-- Accidently delete or change
DELETE FROM employees;

-- ROLLBACK will go to previous committed version
ROLLBACK;

-- If you deleted purposly
DELETE FROM employees;

COMMIT;


-- ROLLBACK cant help here as we already committed
ROLLBACK;