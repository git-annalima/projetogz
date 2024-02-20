TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger items_name_upper_insert\nbefore insert on items for each row\nset new.name_upper=upper(new.name)' 'CREATE DEFINER=`zabbix`@`%` trigger items_insert after insert on items\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (3,new.itemid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger items_name_upper_update\nbefore update on items for each row\nbegin\nif new.name<>old.name\nthen\nset new.name_upper=upper(new.name);\nend if;\nend' 'CREATE DEFINER=`zabbix`@`%` trigger items_update after update on items\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (3,old.itemid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger items_delete before delete on items\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (3,old.itemid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443146929 1708362443114878 1708362443159090 1708362443122789 1708362443134859
