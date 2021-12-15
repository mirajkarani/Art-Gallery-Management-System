use ARTGALLERYDATABASE
GO

--Modify the staff table by adding a new column encrypted phone number column

alter table STAFF add [Encrypted_Phone_Number] varbinary(400) NULL
--variable binary allow use of characters set outside your current character set
GO
--Create a master key for the database.
create MASTER KEY ENCRYPTION BY PASSWORD = 'STAFF@1234';

--Verify that master key exists
SELECT name KeyName,
symmetric_key_id KeyID,
key_length KeyLength,
algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;

Go
--Create a self signed certificate and name it EmpPass
CREATE CERTIFICATE StaffPhoneNumber
WITH SUBJECT = 'Staff Phone Number';
GO

--Create a symmetric key  with AES 256 algorithm using the certificate
-- as encryption/decryption method

CREATE SYMMETRIC KEY StaffPhone_SM WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE StaffPhoneNumber;

GO
UPDATE STAFF set [Encrypted_Phone_Number] = EncryptByKey(Key_GUID('StaffPhone_SM'), CONVERT(varbinary,StaffPhone) )

GO
-- Open the symmetric key with which to encrypt the data.

OPEN SYMMETRIC KEY StaffPhone_SM DECRYPTION BY CERTIFICATE StaffPhoneNumber;

GO

-- Encrypt the value in column Password  with symmetric  key
SELECT *, CONVERT(varchar, DecryptByKey([Encrypted_Phone_Number])) AS 'Decrypted Phone Number' FROM dbo.STAFF;

Select * FROM STAFF; 
