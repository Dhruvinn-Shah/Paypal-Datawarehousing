--Merchant Performance: Understanding the relationship between merchant characteristics (like location and transaction success rates) and their customer base, which can lead to targeted marketing campaigns and partnership decisions.

CREATE VIEW [merchant_performance] AS
SELECT 
    t.merchant_city,
    t.merchant_state,
    COUNT(ad.transaction_id) AS total_transactions,
    SUM(CASE WHEN ad.status = 'Successfull' THEN 1 ELSE 0 END) AS successful_transactions,
    AVG(CASE WHEN ad.status = 'Successfull' THEN 1.0 ELSE 0.0 END) AS success_rate
FROM 
    Transactions t
JOIN 
    transaction_additional_details ad ON t.id = ad.transaction_id
GROUP BY 
    t.merchant_city, t.merchant_state

