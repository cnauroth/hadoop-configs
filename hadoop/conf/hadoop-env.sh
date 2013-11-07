#!/bin/sh 

# Set Hadoop-specific environment variables here.

# The only required environment variable is JAVA_HOME.  All others are
# optional.  When running a distributed configuration it is best to
# set JAVA_HOME in this file, so that it is correctly defined on
# remote nodes.

# The java implementation to use.  Required.
# export JAVA_HOME=/usr/lib/j2sdk1.5-sun
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64

# Extra Java CLASSPATH elements.  Optional.
# export HADOOP_CLASSPATH=

# The maximum amount of heap to use, in MB. Default is 1000.
# export HADOOP_HEAPSIZE=2000

# Extra Java runtime options.  Empty by default.
# export HADOOP_OPTS=-server
#export HADOOP_OPTS=-Djava.security.krb5.conf=/home/vinodkv/Workspace/eclipse-workspace/yahoo-hadoop-20S/src/test/krb5.conf

# Command specific options appended to HADOOP_OPTS when specified
#export HADOOP_OPTS=-Dsun.security.krb5.debug=true
export HADOOP_NAMENODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_NAMENODE_OPTS"
export HADOOP_SECONDARYNAMENODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_SECONDARYNAMENODE_OPTS"
export HADOOP_DATANODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_DATANODE_OPTS"
export HADOOP_BALANCER_OPTS="-Dcom.sun.management.jmxremote $HADOOP_BALANCER_OPTS"
export HADOOP_JOBTRACKER_OPTS="-Dcom.sun.management.jmxremote $HADOOP_JOBTRACKER_OPTS"
export HADOOP_TASKTRACKER_OPTS=$HADOOP_OPTS
# The following applies to multiple commands (fs, dfs, fsck, distcp etc)
# export HADOOP_CLIENT_OPTS

# Extra ssh options.  Empty by default.
# export HADOOP_SSH_OPTS="-o ConnectTimeout=1 -o SendEnv=HADOOP_CONF_DIR"

# Where log files are stored.  $HADOOP_HOME/logs by default.
# export HADOOP_LOG_DIR=${HADOOP_HOME}/logs

# File naming remote slave hosts.  $HADOOP_HOME/conf/slaves by default.
# export HADOOP_SLAVES=${HADOOP_HOME}/conf/slaves

# host:path where hadoop code should be rsync'd from.  Unset by default.
# export HADOOP_MASTER=master:/home/$USER/src/hadoop

# Seconds to sleep between slave commands.  Unset by default.  This
# can be useful in large clusters, where, e.g., slave rsyncs can
# otherwise arrive faster than the master can service them.
# export HADOOP_SLAVE_SLEEP=0.1

# The directory where pid files are stored. /tmp by default.
# export HADOOP_PID_DIR=/var/hadoop/pids

# A string representing this instance of hadoop. $USER by default.
# export HADOOP_IDENT_STRING=$USER

# The scheduling priority for daemon processes.  See 'man nice'.
# export HADOOP_NICENESS=10

#export HADOOP_MAPRED_HOME=/home/cnauroth/hadoop-deploy-trunk/hadoop-mapreduce-3.0.0-SNAPSHOT
#export HADOOP_COMMON_HOME=/home/cnauroth/hadoop-deploy-trunk/hadoop-common-3.0.0-SNAPSHOT
#export HADOOP_PREFIX=$HADOOP_COMMON_HOME
#export HADOOP_HDFS_HOME=/home/cnauroth/hadoop-deploy-trunk/hadoop-hdfs-3.0.0-SNAPSHOT
#export YARN_HOME=/Users/chris/hadoop-deploy-trunk/hadoop-mapreduce-3.0.0-SNAPSHOT
#export YARN_HOME=/home/cnauroth/hadoop-deploy-trunk/hadoop-yarn-project-3.0.0-SNAPSHOT
#export HADOOP_YARN_HOME=$YARN_HOME
export HADOOP_CONF_DIR=/home/cnauroth/hadoop-deploy-trunk/conf
export YARN_CONF_DIR=$HADOOP_CONF_DIR

#export HADOOP_USER_CLASSPATH_FIRST=true
#HADOOP_REPO=~/git/hadoop-common
#export HADOOP_CLASSPATH=$HADOOP_REPO/hadoop-common-project/hadoop-common/target/classes:$HADOOP_REPO/hadoop-hdfs-project/hadoop-hdfs/target/classes
