update sec_user set disabled = 'Y', user_id = 'LOCKOUT' where login_user_id not in 
('PARHIPED',
'TALAMSOU',
'DICKNMAN',
'ADASNASE',
'SWEENSUS',
'LIBYDON',
'WM',
'PKMS',
'BRIDGE',
'CARTYGRE',
'SWEENSUS1',
'VAUGHDUS',
'RF',
'**',
'*'
);

select * from sec_user where login_user_id   not in  ( 'PARHIPED',
'TALAMSOU',
'DICKNMAN',
'ADASNASE',
'SWEENSUS',
'LIBYDON',
'WM',
'PKMS',
'BRIDGE',
'CARTYGRE',
'SWEENSUS1',
'VAUGHDUS',
'RF',
'**',
'*'
);
ROLLBACK;
