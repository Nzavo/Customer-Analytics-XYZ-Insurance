CREATE VIEW VW_Claims_Overview
AS
SELECT
    cl.claim_id,
    cl.policy_id,
    cl.customer_id,
    c.first_name + ' ' + c.last_name AS customer_name,
    p.policy_type,
    cl.claim_date,
    FORMAT(cl.claim_date, 'yyyy-MM') AS claim_month,   -- new helper column
    cl.claim_amount,
    cl.claim_status
FROM dbo.Claims AS cl
INNER JOIN dbo.Customers AS c
    ON cl.customer_id = c.customer_id
INNER JOIN dbo.Policies AS p
    ON cl.policy_id = p.policy_id;
GO
