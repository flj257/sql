COLUMN APP_NAME HEADING 'APP'
COLUMN MACHINE_NAME HEADING 'HOST'
COLUMN APP_UID  HEADING 'APP USER'
COLUMN APP_DB_UID HEADING 'DB USER' 

select app_name, machine_name, app_uid, app_db, app_db_uid from wmstore_apps 
where app_env = 'BRA'
and ( app_name = 'WM' OR app_name = 'EIS' OR app_name = 'LM' ) 
order by app_name desc;

