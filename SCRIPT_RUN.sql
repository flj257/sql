select app_env,hostname,script_name, TO_CHAR(TSTAMP, 'MONTH DD, YYYY, HH24:MI:SS'), action, batch_id
from WMSTORE_SCRIPT_RUN
where app_env = 'CDC'
order by tstamp DESC
