alter session set time_zone='America/Santiago';
select * from v$timezone_file;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI')
       ,TO_CHAR(SYSTIMESTAMP, 'YYYY-MM-DD HH24:MI TZR')  
       from dual;

 SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI')
      ,TO_CHAR(CURRENT_DATE, 'YYYY-MM-DD HH24:MI')
      ,TO_CHAR(SYSTIMESTAMP, 'YYYY-MM-DD HH24:MI TZR') 
      ,TO_CHAR(CURRENT_TIMESTAMP, 'YYYY-MM-DD HH24:MI TZR') 
      ,TO_CHAR(LOCALTIMESTAMP, 'YYYY-MM-DD HH24:MI TZR') 
      ,DBTIMEZONE
      ,SESSIONTIMEZONE
  FROM DUAL;
  
 
 
      select sessiontimezone from dual;
      select * from V$TIMEZONE_NAMES where tzname like '%Sant%';
      
      
      
      select TO_CHAR(sysTIMESTAMP, 'YYYY-MM-DD HH24:MI TZR') DBTIMEZONE from dual;