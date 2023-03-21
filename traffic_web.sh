#!/bin/bash
# lasted edit by ys_song, at 2022-3-6.
export WEBDIR="/var/www/html"
awk '{if(NR<11) print}' $WEBDIR/traffic_temp.html > $WEBDIR/traffic.html
grep "udp" /root/ss_traffic.txt | tail > $WEBDIR/1.tmp
grep "spt:80" /root/ss_traffic.txt | tail > $WEBDIR/80.tmp
grep "spt:6000" /root/ss_traffic.txt | tail > $WEBDIR/6000.tmp
grep "spt:6002" /root/ss_traffic.txt | tail > $WEBDIR/6002.tmp
grep "spt:6003" /root/ss_traffic.txt | tail > $WEBDIR/6003.tmp
grep "spt:22" /root/ss_traffic.txt | tail > $WEBDIR/22.tmp
grep "CST" /root/ss_traffic.txt | tail > $WEBDIR/2.tmp
awk '{print $1,$2,$3,$4}' $WEBDIR/2.tmp > $WEBDIR/2s.tmp
#paste -d " " $WEBDIR/2.tmp $WEBDIR/1.tmp $WEBDIR/80.tmp $WEBDIR/22.tmp $WEBDIR/6000.tmp $WEBDIR/6002.tmp $WEBDIR/6003.tmp > $WEBDIR/3.tmp
paste -d " " $WEBDIR/1.tmp $WEBDIR/80.tmp $WEBDIR/22.tmp $WEBDIR/6000.tmp $WEBDIR/6002.tmp $WEBDIR/6003.tmp > $WEBDIR/3.tmp
awk '{print $2,$12,$22,$32,$42,$52}' $WEBDIR/3.tmp > $WEBDIR/1a.tmp
sed 's/G/000000000/g' $WEBDIR/1a.tmp > $WEBDIR/1s.tmp
sed 's/M/000000/g' $WEBDIR/1s.tmp > $WEBDIR/1ss.tmp
sed 's/K/000/g' $WEBDIR/1ss.tmp > $WEBDIR/1s.tmp
# vpn,80,22,6000,6002,6003 
awk '{print $1-12123196032,$2-15149539,$3-4813387,$4-1996489,$5-3640,$6-2520}' $WEBDIR/1s.tmp > $WEBDIR/1sss.tmp
#sed 's/000000000 /G /g' $WEBDIR/1sss.tmp > $WEBDIR/1ss.tmp
#sed 's/000000 /M /g' $WEBDIR/1ss.tmp > $WEBDIR/1ssss.tmp
#sed 's/000 /K /g' $WEBDIR/1ssss.tmp > $WEBDIR/1b.tmp
awk '{print $1/1000000.0,$2/1000000.0,$3/1000000.0,$4/1000000.0,$5/1000000.0,$6/1000000.0}' $WEBDIR/1sss.tmp > $WEBDIR/1b.tmp
paste -d " " $WEBDIR/2s.tmp $WEBDIR/1b.tmp > $WEBDIR/1s.tmp
awk '{printf("<p>%s %s %s %s <b>%s</b> %s %s %s %s %s </p>\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,$10)}' $WEBDIR/1s.tmp >> $WEBDIR/traffic.html
awk '{if(NR>11) print}' $WEBDIR/traffic_temp.html >> $WEBDIR/traffic.html
/usr/bin/rm $WEBDIR/*.tmp
