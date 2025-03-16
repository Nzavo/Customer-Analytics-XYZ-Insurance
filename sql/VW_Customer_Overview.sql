CREATE VIEW VW_Customer_Overview
AS
SELECT 
    c.customer_id,
    c.first_name + ' ' + c.last_name AS customer_name,
    c.age,
    c.gender,
    c.region,
    CASE WHEN c.vip_status = 1 THEN 'VIP' ELSE 'Regular' END AS vip_status,
    COUNT(DISTINCT p.policy_id) AS total_policies,
    COUNT(DISTINCT cl.claim_id) AS total_claims,
    ISNULL(SUM(cl.claim_amount), 0) AS total_claim_amount,
    ISNULL(AVG(cl.claim_amount), 0) AS avg_claim_amount
FROM dbo.Customers AS c
LEFT JOIN dbo.Policies AS p
    ON c.customer_id = p.customer_id
LEFT JOIN dbo.Claims AS cl
    ON c.customer_id = cl.customer_id
GROUP BY 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    c.age, 
    c.gender, 
    c.region, 
    c.vip_status;
GO
