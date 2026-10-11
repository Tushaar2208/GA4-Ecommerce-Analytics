-- 05. Calculate Average Order Value (AOV) and revenue per purchasing user
SELECT user_pseudo_id,
    COUNT(DISTINCT event_timestamp) AS total_transactions,
    SUM(ecommerce.purchase_revenue) AS total_revenue,
    SAFE_DIVIDE(
        SUM(ecommerce.purchase_revenue),
        COUNT(DISTINCT event_timestamp)
    ) AS average_order_value
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE event_name = 'purchase'
    AND ecommerce.purchase_revenue IS NOT NULL
GROUP BY user_pseudo_id
ORDER BY total_revenue DESC;