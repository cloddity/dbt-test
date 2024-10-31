WITH src_user_session AS (
    SELECT
        userId,
        sessionId,
        channel
    FROM
        {{ source('raw_data', 'user_session_channel') }}
)

SELECT 
    userId,
    sessionId,
    channel
FROM src_user_session
WHERE sessionId IS NOT NULL