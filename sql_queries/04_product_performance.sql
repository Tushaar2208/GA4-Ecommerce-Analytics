-- 04. Unnest product arrays to analyze price versus conversion rate (Used for Python EDA)
WITH product_stats AS (
    SELECT item.item_name,
        AVG(item.price) AS avg_price,
        SUM(
            CASE
                WHEN event_name = 'view_item' THEN 1
                ELSE 0
            END
        ) AS total_views,
        SUM(
            CASE
                WHEN event_name = 'purchase' THEN 1
                ELSE 0
            END
        ) AS total_purchases
    FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`,
        UNNEST(items) AS item
    GROUP BY item.item_name
)
SELECT item_name,
    avg_price,
    total_views,
    total_purchases,
    SAFE_DIVIDE(total_purchases, total_views) AS conversion_rate
FROM product_stats
WHERE total_views > 100 -- Filter out statistical noise from low-view items
ORDER BY total_purchases DESC;