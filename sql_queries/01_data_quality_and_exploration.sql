-- 01. Validate date ranges, total events, and unique users in the dataset
SELECT MIN(PARSE_DATE('%Y%m%d', event_date)) AS first_date,
    MAX(PARSE_DATE('%Y%m%d', event_date)) AS last_date,
    COUNT(*) AS total_events,
    COUNT(DISTINCT user_pseudo_id) AS total_unique_users
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`;