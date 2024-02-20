TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger trigger_tag_insert after insert on trigger_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (6,new.triggertagid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger trigger_tag_update after update on trigger_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (6,old.triggertagid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger trigger_tag_delete before delete on trigger_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (6,old.triggertagid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443328936 1708362443336171 1708362443347393
