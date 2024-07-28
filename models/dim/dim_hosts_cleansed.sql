WITH src_hosts AS (
    SELECT * FROM {{ ref('src_hosts') }}
)
SELECT 
    id AS host_id,
    CASE
        WHEN host_name IS NULL THEN 'Unknown'
        ELSE host_name
    END AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts
