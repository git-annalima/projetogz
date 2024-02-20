TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger host_tag_insert after insert on host_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (2,new.hosttagid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger host_tag_update after update on host_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (2,old.hosttagid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger host_tag_delete before delete on host_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (2,old.hosttagid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443460395 1708362443470283 1708362443482174
