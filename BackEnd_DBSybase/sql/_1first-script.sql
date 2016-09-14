-- user email is not null
SELECT * FROM users WHERE user_email_address IS NOT NULL;

-- user email specific value
SELECT * FROM users WHERE user_email_address = 'americo@moonfruit.com';

-- user email and name specific value
SELECT * FROM users WHERE   
        user_email_address = 'americo@moonfruit.com' AND
        user_name IN ('americo')                                         
;