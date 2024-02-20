TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger httptestitem_insert after insert on httptestitem\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (13,new.httptestitemid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httptestitem_update after update on httptestitem\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (13,old.httptestitemid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httptestitem_delete before delete on httptestitem\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (13,old.httptestitemid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443203097 1708362443210959 1708362443231141
