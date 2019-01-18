
#!/usr/bin/env bash
pid=`ps -ef | grep "java" | grep -v grep | awk '{print $2}'`
echo $pid
if [ "${pid}None" = "None" ]; then
   echo gone
   echo FindCrash >> /data1/abtest/logs/nohup.log
   echo `date +"%Y%m%d%H%M%S"` >> /data1/abtest/logs/nohup.log
   nohup /data1/abtest/start.sh abtest-web-deploy20190114181018.jar >> /data1/abtest/logs/nohup.log 2>&1 &
fi
