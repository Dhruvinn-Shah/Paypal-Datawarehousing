--CREATE VIEW transactions_all_details
--SELECT * FROM transactions
--SELECT * FROM [transaction_additional_details]

CREATE VIEW [view1] AS
SELECT
	transactions.[id],
	users.[id] AS [client_id],
	[credit_card_info].[id] AS [card_id],
	transactions.[amount],
	transaction_additional_details.[transaction_time_in_seconds],
	transaction_additional_details.[date],
	transaction_additional_details.[status],
	transactions.[use_chip],
	--merchants.[merchant_id],
	merchants1.[id]  AS [merchant_id] ,
	transactions.[merchant_city],
	transactions.[merchant_state],
	transactions.[zip],
	transactions.[mcc]

	FROM [transactions]
INNER JOIN 
	[transaction_additional_details] ON transactions.[id] = transaction_additional_details.[transaction_id]
INNER JOIN
	[merchants1] ON merchants1.[transaction_id] = transactions.[id]
INNER JOIN
	[users] ON users.id = transactions.[client_id]
INNER JOIN
	[credit_card_info] ON [credit_card_info].[id] = transactions.[card_id]