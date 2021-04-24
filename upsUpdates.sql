-- demo-f5lab.emea.adsint.biz
-- DNS ups-emt-test.am.adsint.biz requested
-- DNS ups-emt.am.adsint.biz requested
-- next line for CDC UPS mod 
select * from sys_code where code_type='UPS' and code_id='OUT'
-- above line for CDC UPS mod 

select COLUMN_NAME, COLUMN_VALUE from WHSE_MASTER_DTL where COLUMN_NAME like 'UPS%';
select a.ups_emt_url as "MASTER" , b.ups_emt_url as "GENPARM" from VW_WHSE_MASTER a, WHSE_GEN_PARM b

--UPDATE WHSE_MASTER_DTL SET COLUMN_VALUE='http://ups-emt.am.adsint.biz' WHERE COLUMN_NAME='UPS_EMT_URL'; commit;
--UPDATE WHSE_MASTER_DTL SET COLUMN_VALUE='https://ups-emt-test.am.adsint.biz' WHERE COLUMN_NAME='UPS_EMT_URL'; commit;
--UPDATE WHSE_MASTER_DTL SET COLUMN_VALUE='https://www.pld-certify.ups.com' WHERE COLUMN_NAME='UPS_EMT_URL'; commit;
--UPDATE WHSE_MASTER_DTL SET COLUMN_VALUE='' WHERE COLUMN_NAME='UPS_EMT_FILE_UPLOAD_PATH'; commit;

--UPDATE WHSE_MASTER_DTL SET COLUMN_VALUE='http://demo-f5lab.emea.adsint.biz' WHERE COLUMN_NAME='UPS_EMT_URL'; 


-- UPDATE WHSE_MASTER_DTL SET COLUMN_VALUE='/manh/wmtst2/data/manifests/ups/0101' WHERE COLUMN_NAME='UPS_EMT_FILE_UPLOAD_PATH';

select column_value from WHSE_MASTER_DTL where column_name = 'UPS_EMT_URL'


select a.ups_emt_url as "MASTER" , b.ups_emt_url as "GENPARM" from VW_WHSE_MASTER a, WHSE_GEN_PARM b




