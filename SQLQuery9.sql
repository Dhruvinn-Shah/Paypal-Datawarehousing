CREATE VIEW Transactions_summary AS
Select id, date, client_id, card_id, amount, use_chip, merchant_id, CONCAT(merchant_city, ', ', merchant_state, ', ', zip) AS merchant_address,mcc from [transactions]

