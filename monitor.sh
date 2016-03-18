echo "aw-p2pmgr_cpu(%),aw-p2pmgr_mem(%),udpproxy_cpu(%),udpproxy_mem(%)" >> moni.log
while true
do
MYDATE=`date "+%X"`
MYTOP=`top -b -n 1`
AW_CPU=`echo -e "${MYTOP}" | grep aw-p2pmgr | awk '{print $9}'`
AW_MEM=`echo -e "${MYTOP}" | grep aw-p2pmgr | awk '{print $10}'`
UD_CPU=`echo -e "${MYTOP}" | grep udpproxy | awk '{print $9}'`
UD_MEM=`echo -e "${MYTOP}" | grep udpproxy | awk '{print $10}'`
echo "${MYDATE},${AW_CPU},${AW_MEM},${UD_CPU},${UD_MEM}" >> moni.log
sleep 1
done
