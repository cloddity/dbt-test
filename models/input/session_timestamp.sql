WITH src_session_timestamp AS (
    SELECT
        sessionId,
    	ts
    FROM
        {{ source('raw_data', 'session_timestamp') }}
)

SELECT
    sessionId,
    ts
FROM
    src_session_timestamp
WHERE sessionId IS NOT NULL