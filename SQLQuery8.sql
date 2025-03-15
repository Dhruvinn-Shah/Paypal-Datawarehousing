--SELECT COLUMN_NAME, 
--       DATA_TYPE, 
--       IS_NULLABLE, 
--       COLUMN_DEFAULT, 
--       CHARACTER_MAXIMUM_LENGTH, 
--       NUMERIC_PRECISION, 
--       NUMERIC_SCALE
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = 'transactions' 

CREATE TABLE [transactions1]
(
	id INT,
	[date] datetime,
	client_id INT,
	card_id INT,
	amount decimal(10,2),
	use_chip VARCHAR(50),
	merchant_id INT,
	merchant_address VARCHAR(100),
	mcc INT;
)

