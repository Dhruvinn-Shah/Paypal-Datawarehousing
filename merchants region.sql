CREATE VIEW [merchants_region] AS
SELECT
	[name],
	[id],
	[city],
    [state],
	[zip],
    CASE
        WHEN state IN ('NY', 'NJ', 'PA', 'CT', 'MA', 'RI', 'VT', 'NH', 'ME') THEN 'Northeast'
        WHEN state IN ('IL', 'IN', 'MI', 'OH', 'WI', 'IA', 'MN', 'ND', 'SD') THEN 'Midwest'
        WHEN state IN ('TX', 'FL', 'GA', 'AL', 'SC', 'NC', 'KY', 'TN', 'MS', 'LA', 'AR', 'OK', 'MO', 'WV', 'VA', 'DC') THEN 'South'
        WHEN state IN ('CA', 'WA', 'OR', 'NV', 'AZ', 'CO', 'UT', 'ID', 'MT', 'WY') THEN 'West'
        WHEN state = 'Mexico' THEN 'Other'
        ELSE 'Unknown'
    END AS region,
	[transaction_id]
FROM merchants1

Select * from [merchants_region]
