CREATE VIEW VW_Communications_Overview
AS
SELECT
    comm.communication_id,
    comm.customer_id,
    c.first_name + ' ' + c.last_name AS customer_name,
    comm.timestamp AS communication_time,
    FORMAT(comm.timestamp, 'yyyy-MM') AS communication_month,  -- new helper column
    comm.channel,
    comm.reason_category,
    comm.message_text,
    comm.sentiment,
    comm.outcome,
    comm.related_claim_id,
    cl.claim_date AS referenced_claim_date,
    cl.claim_amount AS referenced_claim_amount,
    cl.claim_status AS referenced_claim_status
FROM dbo.Communications AS comm
LEFT JOIN dbo.Customers AS c
    ON comm.customer_id = c.customer_id
LEFT JOIN dbo.Claims AS cl
    ON comm.related_claim_id = cl.claim_id;
GO
