This Ansible playbook deploys an Apache Cassandra cluster on an AWS EC2 cluster running Ubuntu operationg system.

Start node: $CASSANDRA_HOME/bin/cassandra

Stop node: pkill -f CassandraDaemon

Start cqlsh: $CASSANDRA_HOME/bin/cqlsh

Run nodetool: $CASSANDRA_HOME/bin/nodetool status

Tickets:
- CQLSH_HOST setzen