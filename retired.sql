insert into ARC_WMSTORE_NAMES select * from wmstore_names where wmstore_names.SHORT_NAME = 'TPAN';
insert into ARC_WMSTORE_DATABASE  select * from wmstore_database  where app_env = 'SAND';
delete from wmstore_names where short_name  ='TPAN';
delete  from wmstore_database where app_env  = 'SAND';
commit;

insert into ARC_WMSTORE_SYSTEMS select * from wmstore_systems where wmstore_systems.APP_ENV = 'TPAN';
insert into ARC_WMSTORE_apps select * from wmstore_apps where   APP_ENV = 'PAN';
delete  from wmstore_apps  where   APP_ENV ='PAN';

delete from wmstore_systems where   wmstore_systems.APP_ENV ='TPAN';
commit;


insert into ARC_WMSTORE_MANH_LICENSE select * from wmstore_manh_license where wmstore_manh_license.APP_ENV = 'TPAN';


delete from wmstore_manh_license where   wmstore_manh_license.APP_ENV ='TPAN';
commit;