A procedure is a named block of code which is stored in the database. It includes SQL queries , DDL, DCL, TCL commans, cursors, loops, exception handling, etc. It is used when the SQL queries failed to do some task.

A procdure can take parameters or without parameters

Syntax to create a procedure:

-- tells where is the end of queries
-- also we can tell 'DELIMITER $$'
DELIMITER ;

CREATE OR REPLACE PROCEDURE procedure_name (parameter_name_01 varchar, parameter_name_02 int)
LANGUAGE sql --> only for postgresql
AS 
$$ --> only for postgresql 
DECLARE --> optional
    declare_variable
BEGIN
    <logic lies here>
    body
end;
$$ --> only for postgresql

For postgresql '$$' is used to handle the single quotes charachter

For microsoft sql server every variable should have a prefix of '@'

To call a stored procdure just write:
Call procedure_name();