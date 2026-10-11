-- 02. Map the core e-commerce funnel from view to purchase
SELECT COUNT(
        DISTINCT IF(event_name = 'view_item', user_pseudo_id, NULL)
    ) AS viewed_item,
    COUNT(
        DISTINCT IF(event_name = 'add_to_cart', user_pseudo_id, NULL)
    ) AS added_to_cart,
    COUNT(
        DISTINCT IF(
            event_name = 'begin_checkout',
            user_pseudo_id,
            NULL
        )
    ) AS began_checkout,
    COUNT(
        DISTINCT IF(event_name = 'purchase', user_pseudo_id, NULL)
    ) AS purchased,
    -- Calculate overall conversion rate
    SAFE_DIVIDE(
        COUNT(
            DISTINCT IF(event_name = 'purchase', user_pseudo_id, NULL)
        ),
        COUNT(
            DISTINCT IF(event_name = 'view_item', user_pseudo_id, NULL)
        )
    ) AS overall_conversion_rate
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`;