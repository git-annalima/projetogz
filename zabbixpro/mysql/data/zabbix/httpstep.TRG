TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger httpstep_insert after insert on httpstep\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (14,new.httpstepid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httpstep_update after update on httpstep\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (14,old.httpstepid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httpstep_delete before delete on httpstep\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (14,old.httpstepid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443008853 1708362443084431 1708362443101201
