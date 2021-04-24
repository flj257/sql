select 
    PKT_CTRL_NBR
     ,TO_CHAR(PKT_GENRTN_DATE_TIME, 'YYYY-MM-DD HH24:MI') as gentime
     ,TO_CHAR(start_ship_date, 'YYYY-MM-DD HH24:MI') as startship
     ,TO_CHAR(stop_ship_date, 'YYYY-MM-DD HH24:MI') as stopship
     ,TO_CHAR(SCHED_DLVRY_DATE, 'YYYY-MM-DD HH24:MI') as sched
FROM pkt_hdr ;
where PKT_CTRL_NBR like 'PN1886%';


where PKT_CTRL_NBR like '%1853737%';


select PKT_CTRL_NBR, PKT_GENRTN_DATE_TIME, start_ship_date, stop_ship_date from PKT_HDR 
order by pkt_ctrl_nbr desc;
where pkt_ctrl_nbr like 'PN1886684%'