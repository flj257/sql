

select instance_name,
to_char(startup_time,'mm/dd/yyyy hh24:mi:ss') as startup_time 
from v$instance;

SELECT database_name, 
to_char(logon_time,'DD/MM/YYYY HH24:MI:SS') 
FROM v$session WHERE sid=1 ;

SELECT database_name, 
TO_CHAR(logon_time, 'DD-MM-YYYY HH24:MI:SS') 
FROM v$session WHERE program LIKE '%PMON%';
select dbtimezone, systimestamp from dual;