CREATE VIEW [users1] AS
SELECT 
	id,
	current_age,
	retirement,
	birth_year,
	birth_month,
	gender,
    -- Extract the Apartment Number (if present)
    CASE 
        WHEN CHARINDEX(' ', address) > 0 THEN 
            LEFT(address, CHARINDEX(' ', address) - 1)
        ELSE
            NULL
    END AS apartment_number,
    
    -- Extract the Street Name (everything after the first space)
    CASE 
        WHEN CHARINDEX(' ', address) > 0 THEN 
            LTRIM(RIGHT(address, LEN(address) - CHARINDEX(' ', address)))
        ELSE
            address
    END AS street_name,
	latitude,
	longitude,
	per_capita,
	yearly_income,
	total_debt,
	credit_score,
	num_credit_cards
FROM users;
