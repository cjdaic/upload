1. change file traffic_web.sh monthly.
   and file traffice_temp.html.
awk '{print $1-145000000000,$2-72000000,$3-343000000,$4-211000000,$5-16000000,$6-278000}' $WEBDIR/1s.tmp > $WEBDIR/1sss.tmp
分别对应port
4500, 80, 22, 6000, 6002, 6003
