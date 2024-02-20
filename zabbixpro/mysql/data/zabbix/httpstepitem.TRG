TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger httpstepitem_insert after insert on httpstepitem\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (16,new.httpstepitemid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httpstepitem_update after update on httpstepitem\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (16,old.httpstepitemid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httpstepitem_delete before delete on httpstepitem\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (16,old.httpstepitemid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443171484 1708362443179175 1708362443191343
