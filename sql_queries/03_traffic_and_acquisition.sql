-- 03. Time-series analysis of daily visitors vs purchasers (Used for Python EDA)
SELECT PARSE_DATE('%Y%m%d', event_date) AS date,
    COUNT(DISTINCT user_pseudo_id) AS daily_visitors,
    COUNT(
        DISTINCT IF(event_name = 'purchase', user_pseudo_id, NULL)
    ) AS daily_purchasers
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY date
ORDER BY date ASC;