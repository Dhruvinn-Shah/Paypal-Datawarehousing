USE [DHRUVIN]
GO

/****** Object:  View [dbo].[Transactions_summary]    Script Date: 3/11/2025 4:57:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Transactions_summary1] AS
SELECT transactions.id,transactions.[date],transactions.client_id,transactions.card_id,transactions.amount,cart.cart_id, transactions.use_chip,discount_coupon.cpn_code,transactions.merchant_id, transactions.merchant_city,transactions.merchant_state, transactions.zip, transactions.mcc 
FROM transactions
INNER JOIN cart ON transactions.id = cart.transaction_id
INNER JOIN discount_coupon ON transactions.id = discount_coupon.transaction_id;

GO

Select * from [Transactions_summary1]




