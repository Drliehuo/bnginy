#!/bin/bash
LOGS_PATH=/usr/local/nginx/wwwlogs/
YESTERDAY=$(date -d "yesterday" +%Y-%m-%d)
cd ${LOGS_PATH}
rename .log _${YESTERDAY}.log *.log
mv *.log ${LOG_PATH}old/
/usr/local/nginx/sbin/nginx -s reload
