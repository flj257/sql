SELECT * FROM APPLICATION_CONFIGURATION WHERE KEY = 'MHE_SCHEDULER_INTERVAL'; 


SELECT * FROM APPLICATION_CONFIGURATION WHERE KEY = 'whse'; 

SELECT * FROM APPLICATION_CONFIGURATION WHERE KEY = 'mhe.ob.MHE_WM_Outbound_Trigger_0.eventids'; 

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'whse' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('whse',
                'DTC',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);
                
UPDATE APPLICATION_CONFIGURATION SET VALUE= 'DTC' WHERE KEY = 'whse';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.MHE_WM_Outbound_Trigger_0.eventids' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.MHE_WM_Outbound_Trigger_0.eventids',
                '6530',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '6530' WHERE KEY = 'mhe.ob.MHE_WM_Outbound_Trigger_0.eventids';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.MHE_WM_Outbound_Trigger_1.eventids' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.MHE_WM_Outbound_Trigger_1.eventids',
                '6180',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '6180' WHERE KEY = 'mhe.ob.MHE_WM_Outbound_Trigger_1.eventids';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.MHE_WM_Outbound_Trigger_2.eventids' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.MHE_WM_Outbound_Trigger_2.eventids',
                '6320',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '6320' WHERE KEY = 'mhe.ob.MHE_WM_Outbound_Trigger_2.eventids';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.MHE_WM_Outbound_Trigger_3.eventids' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.MHE_WM_Outbound_Trigger_3.eventids',
                '6321,6560,7710',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '6321,6560,7710' WHERE KEY = 'mhe.ob.MHE_WM_Outbound_Trigger_3.eventids';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.MHE_WM_Outbound_Trigger_4.eventids' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.MHE_WM_Outbound_Trigger_4.eventids',
                '6570',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '6570' WHERE KEY = 'mhe.ob.MHE_WM_Outbound_Trigger_4.eventids';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.MHE_WM_Outbound_Trigger_5.eventids' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.MHE_WM_Outbound_Trigger_5.eventids',
                '6140,6510,9000,6580',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '6140,6510,9000,6580' WHERE KEY = 'mhe.ob.MHE_WM_Outbound_Trigger_5.eventids';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.eventids' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.eventids',
                '6530,6140,6180,6320,6321,6510,6560,6570,6580,7710,9000',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '6530,6140,6180,6320,6321,6510,6560,6570,6580,7710,9000' WHERE KEY = 'mhe.ob.eventids';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'MHE_OUT_EVENT_IDS' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('MHE_OUT_EVENT_IDS',
                '6530,6140,6180,6320,6321,6510,6560,6570,6580,7710,9000',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '6530,6140,6180,6320,6321,6510,6560,6570,6580,7710,9000' WHERE KEY = 'MHE_OUT_EVENT_IDS';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.message.maxtries' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.message.maxtries',
                '1',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '1' WHERE KEY = 'mhe.ob.message.maxtries';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.queue.size' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.queue.size',
                '135',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '135' WHERE KEY = 'mhe.ob.queue.size';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.queue.listeners' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.queue.listeners',
                '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1' WHERE KEY = 'mhe.ob.queue.listeners';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'mhe.ob.queue.range' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('mhe.ob.queue.range',
                '6530,0-20;6180,20-40;6320,40-60;6321,60-70;6560,70-80;7710,70-80;6570,80-90;6140,90-120;6510,90-120;9000,120-130;6580,120-130',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '6530,0-20;6180,20-40;6320,40-60;6321,60-70;6560,70-80;7710,70-80;6570,80-90;6140,90-120;6510,90-120;9000,120-130;6580,120-130' WHERE KEY = 'mhe.ob.queue.range';

MERGE INTO APPLICATION_CONFIGURATION AC
     USING (SELECT 'MHE_SCHEDULER_INTERVAL' KEY FROM DUAL) B
        ON (AC.KEY = B.KEY)
WHEN NOT MATCHED
THEN
    INSERT     (AC.KEY,
                AC.VALUE,
                AC.MODULE,
                AC.APPLY_TO_SERVER,
                AC.COMMENTS,
                AC.TAGS)
        VALUES ('MHE_SCHEDULER_INTERVAL',
                '1',
                'WMDomainObjects',
                'ALL',
                NULL,
                NULL);

UPDATE APPLICATION_CONFIGURATION SET VALUE= '1' WHERE KEY = 'MHE_SCHEDULER_INTERVAL';

COMMIT;