#!/bin/bash
# 这是一个利用iptables进行端口流量统计的脚本
# 清零并重新记录 iptables -F
# 首先请保证已经在iptables规则中加入了要监控的端口
# iptables -A OUTPUT -p udp --sport 4500
# 需要统计的端口
PORTS=(4500 80 22 6000 6003 6002)
# 打印分割线
echo "**************************************************"
# 打印日期
date
# 统计iptables的OUTPUT链
echo "------------------------------"
echo "OUTPUT chain:"
for PORT in ${PORTS[@]};
do
    iptables -nvx -L OUTPUT | grep :$PORT
done
# 输出换行
echo -e "\n"
