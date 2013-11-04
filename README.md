hadoop-configs
==============

Sample Hadoop configurations for various testing scenarios.

Each branch in this repository represents a different scenario with a different
set of configuration files.

windows-ha
----------

This branch shows configurations for running an HA NameNode using Quorum Journal
Manager on Windows.  The configurations use automatic failover with the
ZooKeeper Failover Controller.  A hosts file is used for static resolution of
host names to avoid quirks with name resolution.  The setup assumes 5 machines,
with the following IP addresses and the following running services:

cnauroth-vm-2 192.168.0.5
    NameNode
    ZKFC
cnauroth-vm-3 192.168.0.4
    NameNode
    ZKFC
cnauroth-vm-4 192.168.0.7
    ZooKeeper
    JournalNode
    DataNode
cnauroth-vm-5 192.168.0.8
    ZooKeeper
    JournalNode
    DataNode
cnauroth-vm-6 192.168.0.9
    ZooKeeper
    JournalNode
    DataNode

Additionally, cnauroth-vm-2 could run the ResourceManager, and cnauroth-vm-[4-6]
could run the NodeManager.  I didn't test this though.  The yarn-site.xml and
mapred-site.xml might need additional changes.
