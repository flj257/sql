-- after PITR
SELECT incarnation#, resetlogs_change#, resetlogs_time,status,resetlogs_id from v$database_incarnation;
select to_char(resetlogs_change#) from v$database_incarnation where status = 'CURRENT';
select scn_to_timestamp(2182171908) from v$database;


select scn_to_timestamp( (select to_char(resetlogs_change#) from v$database_incarnation where status = 'CURRENT') ) from v$database;






SELECT SESSION_KEY, INPUT_TYPE, STATUS, to_char(START_TIME,'mm/dd/yy hh24:mi') start_time, to_char(END_TIME,'mm/dd/yy hh24:mi') end_time, elapsed_seconds/3600 hrs 
FROM V$RMAN_BACKUP_JOB_DETAILS 
WHERE not INPUT_TYPE = 'ARCHIVELOG'
order by session_keY;


SELECT FILE#, INCREMENTAL_LEVEL, to_char(COMPLETION_TIME,'mm/dd/yy hh24:mi'), BLOCKS, DATAFILE_BLOCKS 
  FROM V$BACKUP_DATAFILE 
  WHERE INCREMENTAL_LEVEL = 0 
  AND BLOCKS / DATAFILE_BLOCKS > .5 
  ORDER BY COMPLETION_TIME;