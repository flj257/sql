select sql_id,ss.snap_id, ss.instance_number node, begin_interval_time, sql_id, plan_hash_value,
nvl(executions_delta,0) execs,
(elapsed_time_delta/decode(nvl(executions_delta,0),0,1,executions_delta))/1000000 avg_etime,
(buffer_gets_delta/decode(nvl(buffer_gets_delta,0),0,1,executions_delta)) avg_lio,
elapsed_time_delta
from DBA_HIST_SQLSTAT S, DBA_HIST_SNAPSHOT SS
where sql_id in ('2zjr8jm6v6t54')
and ss.snap_id = S.snap_id
and ss.instance_number = S.instance_number
and executions_delta > 0
and begin_interval_time > trunc(sysdate)
order by 1, 2, 3
;
