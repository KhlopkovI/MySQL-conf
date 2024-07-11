#!/bin/bash

#database "test_base" backup per tables
 
for i in $(mysql -uroot -p12345 test_base -e "show tables;" | grep -v Tables_in>
mysqldump -uroot -p12345 test_base $i > /home/mysql_dump/backup/$i".sql";done

tar -cjf "backup_mysql_"$(date +'%Y%m%d')",tar.bz2" /home/mysql_dump/backup/*.s>


