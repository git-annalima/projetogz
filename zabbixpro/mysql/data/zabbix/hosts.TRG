TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger hosts_name_upper_insert\nbefore insert on hosts for each row\nset new.name_upper=upper(new.name)' 'CREATE DEFINER=`zabbix`@`%` trigger hosts_insert after insert on hosts\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (1,new.hostid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger hosts_name_upper_update\nbefore update on hosts for each row\nbegin\nif new.name<>old.name\nthen\nset new.name_upper=upper(new.name);\nend if;\nend' 'CREATE DEFINER=`zabbix`@`%` trigger hosts_update after update on hosts\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (1,old.hostid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger hosts_delete before delete on hosts\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (1,old.hostid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362442748435 1708362442693325 1708362442766669 1708362442705311 1708362442725641
