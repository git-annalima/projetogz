TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger item_preproc_insert after insert on item_preproc\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (8,new.item_preprocid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger item_preproc_update after update on item_preproc\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (8,old.item_preprocid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger item_preproc_delete before delete on item_preproc\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (8,old.item_preprocid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443358602 1708362443365878 1708362443383878
