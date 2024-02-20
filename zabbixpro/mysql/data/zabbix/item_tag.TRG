TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger item_tag_insert after insert on item_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (4,new.itemtagid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger item_tag_update after update on item_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (4,old.itemtagid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger item_tag_delete before delete on item_tag\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (4,old.itemtagid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443493958 1708362443501621 1708362443513016
