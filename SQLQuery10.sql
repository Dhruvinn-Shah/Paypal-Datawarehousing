SELECT 
	id,
	date,
	client_id,
	card_id,
	amount,
	use_chip,
	merchant_id,
    SUBSTRING(merchant_address, 1, CHARINDEX(',', merchant_address) - 1) AS merchant_city,
    SUBSTRING(merchant_address, CHARINDEX(',', merchant_address) + 2, 
              CHARINDEX(',', merchant_address, CHARINDEX(',', merchant_address) + 1) - CHARINDEX(',', merchant_address) - 2) AS merchant_state,
    SUBSTRING(merchant_address, CHARINDEX(',', merchant_address, CHARINDEX(',', merchant_address) + 1) + 2, LEN(merchant_address)) AS zip,
	mcc
FROM transactions_summary;
