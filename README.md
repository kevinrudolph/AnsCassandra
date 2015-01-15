This Ansible playbook deploys an Apache Cassandra cluster on an AWS EC2 cluster running Ubuntu operationg system.


=== Deploy cluster ===

Install Ansible:
- install Python
- install Boto

Deploy EC2 instances and choose between the following instance tag(s):
- cassandra: true
- kairos: true
- newts: true
- ycsb: true

Export AWS credentials:
- export AWS_ACCESS_KEY_ID='$MY_AWS_ACCESS_KEY_ID'
- export AWS_SECRET_ACCESS_KEY='$MY_AWS_SECRET_ACCESS_KEY'
- set reference to your private key file in /roles/ssh/vars/main.yml

Clone repo:

Set URIs for JAVA and Cassandra tar ball or upload to S3 and set S3 bucket:
- $AnsCassandra_HOME/group_vars/aws -> s3bucket_uri:

Set Java and Cassandra version (default: Java 1.7.67 & Cassandra 2.1.2):
- $AnsCassandra_HOME/roles/java/vars/main.yml
- $AnsCassandra_HOME/roles/cassandra/vars/main.yml

Run ansible:
- cd $AnsCassandra_HOME
- ansible-playbook --private-key=$MY_PRIVATE_KEY_FILE -i ec2.py site.yml


=== Operate cluster ===

Start node: $CASSANDRA_HOME/bin/cassandra

Stop node: pkill -f CassandraDaemon

Start KairosDB: $KAIROS_HOME/bin/kairosdb.sh run

Stop KairosDB: $KAIROS_HOME/bin/kairosdb.sh stop


=== CHECK IT OUT ===

Run nodetool: $CASSANDRA_HOME/bin/nodetool status

Check Cassandra keyspaces: $CASSANDRA_HOME/bin/nodetool cfstats


=== PUSH/PULL DATA ===

Via cqlsh: $CASSANDRA_HOME/bin/cqlsh

Via Kairos: 

=== Open Tickets ===
- CQLSH_HOST setzen
- Port NewTS to Cassandra 2.1.x