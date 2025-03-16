CREATE VIEW VW_Policy_Portfolio
AS
SELECT 
    c.customer_id,
    c.first_name + ' ' + c.last_name AS customer_name,
    p.policy_id,
    p.policy_type,
    p.premium,
    p.sum_insured,
    p.start_date,
    p.end_date,
    CASE 
        WHEN p.end_date < GETDATE() THEN 'Expired' 
        ELSE 'Active' 
    END AS policy_status
FROM dbo.Customers AS c
INNER JOIN dbo.Policies AS p
    ON c.customer_id = p.customer_id;
GO
