create keyspace usertable with replication = {'class' : 'SimpleStrategy', 'replication_factor' : 1};
use usertable;
create table data (key blob, column1 ascii, value blob, PRIMARy KEY(key, column1)) WITH COMPACT STORAGE;