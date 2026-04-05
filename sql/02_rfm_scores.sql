WITH rfm_base AS (
    SELECT 
        user_id,
        DATEDIFF('2024-03-10', MAX(transaction_date)) AS recency,
        COUNT(transaction_id) AS frequency,
        SUM(revenue) AS monetary
    FROM transaction
    GROUP BY user_id
)

SELECT 
    user_id,
    recency,
    frequency,
    monetary,
    NTILE(5) OVER (ORDER BY recency DESC) AS r_score,
    NTILE(5) OVER (ORDER BY frequency) AS f_score,
    NTILE(5) OVER (ORDER BY monetary) AS m_score
FROM rfm_base;
