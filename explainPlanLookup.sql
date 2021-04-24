
-- look up old explain plan
select * from table(dbms_xplan.display_awr('2zjr8jm6v6t54'));


EXECUTE DBMS_STATS.GATHER_SCHEMA_STATS(ownname => 'WMS');

select * from all_objects where status = 'INVALID';
SHOW PARAMETER FILESYSTEMIO_OPTIONS;


