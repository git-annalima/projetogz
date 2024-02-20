TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger connector_tag_insert after insert on connector_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (18,new.connector_tagid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger connector_tag_update after update on connector_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (18,old.connector_tagid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger connector_tag_delete before delete on connector_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (18,old.connector_tagid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443556472 1708362443564459 1708362443575732
