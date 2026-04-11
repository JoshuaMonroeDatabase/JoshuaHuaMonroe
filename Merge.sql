MERGE INTO REST_CUSTOMERS c
USING (
    SELECT 'Wei Zhang' AS CustomerName,
           '555-3001' AS Phone,
           'wei.zhang@email.com' AS Email
    FROM DUAL
) src
ON (c.Email = src.Email)
WHEN MATCHED THEN
    UPDATE SET
        c.CustomerName = src.CustomerName,
        c.Phone = src.Phone
WHEN NOT MATCHED THEN
    INSERT (CustomerName, Phone, Email)
    VALUES (src.CustomerName, src.Phone, src.Email);