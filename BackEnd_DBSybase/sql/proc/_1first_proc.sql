--proc
IF OBJECT_ID('dbo.sp_1first_proc') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_1first_proc
END
GO

CREATE PROCEDURE sp_1first_proc AS 
SELECT user_name AS USER_SPEC_NAME_MAIL FROM users WHERE user_email_address = 'americo@moonfruit.com';

--PRINT
PRINT 'Procedure called successfully'; 

