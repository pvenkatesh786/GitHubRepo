#!/bin/bash
HOME=/u01/tomcat
PID=`ps -ef | grep catalina | grep -v grep | awk '{print $2}'`
echo "The Current running PID is : $PID"

echo "Enter your requirement 1: Status \n2: Start \n3: Stop \n4: Restart"
read option

case $option in
1|status)
        PID=`ps -ef | grep catalina | grep -v grep | awk '{print $2}'`
        if [ -z $PID ]
        then
                echo " ###### Your Tomcat Service is not running ######"
        else
                echo " ###### Your Tomcat Service is running on current PID: $PID ###### "
        fi

        ps -ef | grep catalina | grep -v grep
        ;;
2|start)
        echo "Starting Tomcat Service"
        $HOME/bin/startup.sh
        ;;
3|stop)
        echo "Shutdowning Tomcat Service"
        $HOME/bin/shutdown.sh
        ;;
4|restart)
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
        ;;
*)
        echo "Invalid Opertaion"
        ;;
esac
