select distinct b.prt_reqstr, a.prt_q_name from prt_q_master a, prt_q_dest b
where a.prt_q_name like '%LBL%'
and a.prt_q_id = b.prt_q_id
order by b.PRT_REQSTR;

--select distinct  b.prt_reqstr, a.prt_q_name from prt_q_master a, prt_q_dest b