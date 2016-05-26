#!/bin/bash
# This script is used to Stop and Start the Tomcat Service

pid=ps -ef | grep java | grep -v grep | awk '{print $2}'

if [ -z $pid ]
then
        echo "Starting Tomcat"
        /usr/apache/apache-tomcat-9.0.0.M3/bin/startup.sh
else
        echo "Stoping Tomcat"
        /usr/apache/apache-tomcat-9.0.0.M3/bin/shutdown.sh
        sleep 20
        pid=ps -ef | grep java | grep -v grep | awk '{print $2}'
        if [ -z $pid ]
        then
                echo "Starting Tomcat"
                /usr/apache/apache-tomcat-9.0.0.M3/bin/startup.sh

        else
                echo "unable to shutdown tomcat, need to kill $pid"
                kill -9 $pid
                echo "Starting Tomcat"
               /usr/apache/apache-tomcat-9.0.0.M3/bin/startup.sh
        fi
fi

