SELECT 
    user_id,
    DATEDIFF('2024-03-10', MAX(transaction_date)) AS recency,
    COUNT(transaction_id) AS frequency,
    SUM(revenue) AS monetary
FROM transaction
GROUP BY user_id;
