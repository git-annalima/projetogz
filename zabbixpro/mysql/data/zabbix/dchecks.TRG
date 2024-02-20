TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger dchecks_insert after insert on dchecks\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (10,new.dcheckid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger dchecks_update after update on dchecks\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (10,old.dcheckid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger dchecks_delete before delete on dchecks\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (10,old.dcheckid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362442826016 1708362442837723 1708362442851749
