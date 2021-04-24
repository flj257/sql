
-- patch opps with timezone cast 

SELECT app_env, sdn_no,
CAST((FROM_TZ(CAST(ops_date AS TIMESTAMP),'CET') AT TIME ZONE 'America/New_York') AS TIMESTAMP) 
FROM patch_ops
where app_env = 'US2'
order by ops_date desc;

