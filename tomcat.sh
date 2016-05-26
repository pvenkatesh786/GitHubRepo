#!/bin/bash
HOME=/u01/tomcat
PID=`ps -ef | grep catalina | grep -v grep | awk '{print $2}'`
echo "The Current running PID is : $PID"

if [ -z $PID ]
then
	echo "Starting Tomcat Service"
	$HOME/bin/startup.sh
else 
	echo "Shutdowning Tomcat Service"
	$HOME/bin/shutdown.sh
	sleep 60
	PID=`ps -ef | grep catalina | grep -v grep | awk '{print $2}'`
	if [ -z $PID ]
	then
		echo "Starting Tomcat Service"
		$HOME/bin/startup.sh
	else
		echo "We are unable to shutdown tomcat service, need to kill process id : $PID"
		kill -9 $PID
		echo "Starting tomcat service"
		$HOME=/bin/startup.sh
		PID=`ps -ef | grep catalina | grep -v grep | awk '{print $2}'`
		echo "Currnet running process PID is : $PID"
	fi
fi
		


