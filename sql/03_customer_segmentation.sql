WITH rfm_base AS (
    SELECT 
        user_id,
        DATEDIFF('2024-03-10', MAX(transaction_date)) AS recency,
        COUNT(transaction_id) AS frequency,
        SUM(revenue) AS monetary
    FROM transaction
    GROUP BY user_id
),

rfm_scores AS (
    SELECT 
        user_id,
        recency,
        frequency,
        monetary,
        NTILE(5) OVER (ORDER BY recency DESC) AS r_score,
        NTILE(5) OVER (ORDER BY frequency) AS f_score,
        NTILE(5) OVER (ORDER BY monetary) AS m_score
    FROM rfm_base
)

SELECT 
    user_id,
    r_score,
    f_score,
    m_score,
    CASE 
        WHEN r_score >= 4 AND f_score >= 4 AND m_score >= 4 THEN 'High Value'
        WHEN r_score >= 4 AND f_score <= 2 THEN 'New Customers'
        WHEN r_score <= 2 AND f_score >= 4 THEN 'Loyal but At Risk'
        ELSE 'Mid Value Customers'
    END AS customer_segment
FROM rfm_scores
ORDER BY r_score DESC, f_score DESC, m_score DESC;
