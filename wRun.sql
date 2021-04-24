ALTER SESSION SET CURRENT_SCHEMA = WMOSP;

select a.ship_wave_nbr, start_time, end_time, count(distinct a.pkt_ctrl_nbr) orders, sum(c.pkt_qty) units,
count(c.pkt_qty) lines, ROUND(count(c.pkt_qty)/((end_time-start_time)*24*60)) as LINES_PER_MINUTE,
(end_time-start_time)*24*60 as time,count(distinct c.sku_id)
from pkt_hdr_intrnl a, ship_wave_parm b,(select pkt_ctrl_nbr, pkt_qty, sku_id from pkt_dtl) c,
(SELECT * from (select ref_value_1, max(case when type='S' then timev end) start_time, max(case when type='E' then timev end) end_time
from (SELECT ref_value_1, 'S' type, min(log_date_time) timev from msg_log
where ref_value_4 = 'H' and ref_code_1 = '19' and msg like 'Wave process started%' group by ref_value_1
union SELECT ref_value_1, 'E' type, min(log_date_time) timev from msg_log
where ref_value_4 = 'H' and ref_code_1 = '19' and msg like 'Wave process completed%' group by ref_value_1
) group by ref_value_1) where start_time <> end_time) d, wave_parm e
where a.ship_wave_nbr = b.ship_wave_nbr and d.ref_value_1 = a.ship_wave_nbr
and b.wave_desc = 'Nightly wave' and a.pkt_ctrl_nbr = c.pkt_ctrl_nbr and b. ship_Wave_nbr= e.wave_nbr
and start_time >sysdate-30 and a.stat_code >= '20' and b.stat_code = '90' and e.wave_stat_code <> '98'
and start_time is not null and end_time is not null group by a.ship_wave_nbr, end_time, start_time;
 