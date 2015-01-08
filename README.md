This Ansible playbook deploys an Apache Cassandra cluster on an AWS EC2 cluster running Ubuntu operationg system.

=== Deploy cluster ===

Install Ansible:

Export AWS credentials:
- export AWS_ACCESS_KEY_ID='$MY_AWS_ACCESS_KEY_ID'
- export AWS_SECRET_ACCESS_KEY='$MY_AWS_SECRET_ACCESS_KEY'

Clone repo:

Set URIs for JAVA and Cassandra tar ball or upload to S3 and set S3 bucket:
- $AnsCassandra_HOME/group_vars/aws -> s3bucket_uri:

Set Java and Cassandra version (default: Java 1.7.67 & Cassandra 2.1.2):
- $AnsCassandra_HOME/roles/java/vars/main.yml
- $AnsCassandra_HOME/roles/cassandra/vars/main.yml

Deploy EC2 instances and set following instance tag(s):
- cassandra: true

Run ansible:
- cd $AnsCassandra_HOME
- ansible-playbook --private-key=$MY_PRIVATE_KEY_FILE -i ec2.py site.yml

=== Operate cluster ===

Start node: $CASSANDRA_HOME/bin/cassandra

Stop node: pkill -f CassandraDaemon

Start cqlsh: $CASSANDRA_HOME/bin/cqlsh

Run nodetool: $CASSANDRA_HOME/bin/nodetool status

=== Open Tickets ===
- CQLSH_HOST setzen