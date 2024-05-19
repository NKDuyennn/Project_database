USE Hotel_Booking_System;
GO
-- DROP FUNCTION GenerateEmployeeCode, GenerateEmail;
-- DROP PROCEDURE RemoveDiacritics;
CREATE PROCEDURE RemoveDiacritics
(
    @input NVARCHAR(50),
	@output NVARCHAR(50) OUTPUT
)
AS
BEGIN
    -- Thay thế các ký tự có dấu bằng không dấu
	SET @output = @input
    SELECT @output = REPLACE(@output, OriginalChar, MappedChar)
    FROM UnicodeMapping;
END;
GO

CREATE PROCEDURE GenerateEmployeeCode
(
    @first_name NVARCHAR(50),
    @last_name NVARCHAR(50),
    @id INT,
	@employee_code VARCHAR(20) OUTPUT
)
AS
BEGIN
	DECLARE @last_name_ko_dau NVARCHAR(50),
			@first_name_ko_dau NVARCHAR(50);
	EXEC RemoveDiacritics @last_name, @last_name_ko_dau OUTPUT;
    -- Lấy các ký tự đầu của mỗi từ trong họ tên
    DECLARE @initials NVARCHAR(50);
    SET @initials = '';

    -- Tách các từ trong họ tên và lấy ký tự đầu của mỗi từ
    DECLARE @word NVARCHAR(50);
    DECLARE @pos INT;
    SET @first_name = LTRIM(RTRIM(@first_name)) + ' '; -- Thêm khoảng trắng để xác định từ cuối cùng
    SET @pos = CHARINDEX(' ', @first_name);

    WHILE @pos > 0
    BEGIN
        SET @word = LEFT(@first_name, @pos - 1);
        SET @initials = @initials + LEFT(@word, 1);
        SET @first_name = SUBSTRING(@first_name, @pos + 1, LEN(@first_name));
        SET @pos = CHARINDEX(' ', @first_name);
    END
	EXEC RemoveDiacritics @initials, @first_name_ko_dau OUTPUT;
    -- Tạo mã nhân viên
    SET @employee_code = @last_name_ko_dau + @first_name_ko_dau + CAST(@id AS NVARCHAR(10));
END;
GO

CREATE PROCEDURE GenerateEmail 
    @employee_code VARCHAR(20), 
    @email VARCHAR(320) OUTPUT
AS
BEGIN
    SET @email = @employee_code + '@gmail.com';
END;
GO