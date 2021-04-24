select count(*) from v$session;


select s1.username || '@' || s1.machine || s1.program 
    || ' ( SID=' || s1.sid  
    || ' ( Serial#=' || s1.serial# || ' )  is blocking ' 
    || s2.username || '@' || s2.machine || ' ( SID=' || s2.sid || ' ) ' ||' ( Serial#=' || s2.serial# || ' ) '  || s2.program
    AS blocking_status 
    from v$lock l1, v$session s1, v$lock l2, v$session s2 
    where s1.sid=l1.sid and s2.sid=l2.sid 
    and l1.BLOCK=1 and l2.request > 0 
    and l1.id1 = l2.id1 
    and l2.id2 = l2.id2 ;

select 
   a.blocking_session, 
   a.sid, 
   a.serial#, 
   a.wait_class,
a.seconds_in_wait,
a.*
from 
   v$session a
where 
   a.blocking_session is not NULL
order by 
   a.blocking_session; 
 
k