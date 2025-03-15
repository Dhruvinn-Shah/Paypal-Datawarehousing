--Assessing the relationship between a customer’s credit limit and their spending behavior, identifying customers with high credit limits but low spending, or high debt levels and poor payment history.

CREATE VIEW [customer_credit_relationship] AS
SELECT 
    c.id,
    cr.credit_limit,
    COALESCE(SUM(t.amount), 0) AS total_spent,
    (cr.credit_limit - COALESCE(SUM(t.amount), 0)) AS remaining_credit,
    (cr.credit_limit - COALESCE(SUM(t.amount), 0)) AS current_balance,
    CASE
        WHEN cr.credit_limit > 5000 AND COALESCE(SUM(t.amount), 0) < 1000 THEN 'High Credit Limit, Low Spending'
        WHEN COALESCE(SUM(t.amount), 0) > cr.credit_limit THEN 'High Debt (Overspent)'
        ELSE 'Normal Behavior'
    END AS spending_behavior
FROM 
    users1 c
JOIN 
    credit_card_info cr ON c.id = cr.client_id
LEFT JOIN 
    Transactions t ON c.id = t.client_id
GROUP BY
    c.id, cr.credit_limit;


