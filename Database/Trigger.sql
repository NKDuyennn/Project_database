USE Hotel_Booking_System;
GO

CREATE TRIGGER autoInsertEmployeeCode
ON employee
AFTER INSERT 
AS
begin
	declare @employee_code NVARCHAR(50),
			@email VARCHAR(320),
			@id int = (SELECT id FROM inserted),
			@fName NVARCHAR(50) = (SELECT first_name FROM inserted),
			@lName NVARCHAR(50) = (SELECT last_name FROM inserted)
	EXEC GenerateEmployeeCode @fName, @lname, @id, @employee_code OUTPUT;
	EXEC GenerateEmail @employee_code, @email OUTPUT;

	update employee
	SET employee_code = @employee_code,
		email = @email
	WHERE id = @id;
END;
GO