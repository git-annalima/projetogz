TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger connector_insert after insert on connector\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (17,new.connectorid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger connector_update after update on connector\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (17,old.connectorid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger connector_delete before delete on connector\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (17,old.connectorid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443524466 1708362443532566 1708362443545327
