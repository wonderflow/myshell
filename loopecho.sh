START=1
END=12
for (( c=$START; c<=$END; c++ ))
do
	pid=`ps aux  | grep -v "grep" | grep "influxdb$c/" | head -n 1 | awk '{print $2}'`


	echo $pid > /home/qboxserver/influxdb$c/_package/run/pandora-influxdb.pid
done
