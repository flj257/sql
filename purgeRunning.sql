select last_call_et from (select username, sid || ',' || serial# "ID", status, last_call_et 
from v$session 
where username 
is not null
and (program like 'PkPurge%')order by last_call_et asc)
where rownum = 1

select username, command from v$session where program like 'PkPurge%'
