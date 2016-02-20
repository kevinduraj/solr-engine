CREATE KEYSPACE mykeyspace WITH REPLICATION = {'class':'SimpleStrategy', 'replication_factor':1};

USE mykeyspace;

CREATE TABLE mysolr (
  id text PRIMARY KEY,
  name text,
  title text,
  quotes set <text>
);

INSERT INTO mysolr (id, name, title, quotes) VALUES ('123', 'Christopher Morley', 'Life', {'Life is a foreign language; all men mispronounce it.', 'There are three ingredients in the good life: learning, earning and yearning.'});

INSERT INTO mysolr (id, name, title, quotes) VALUES ('124', 'Daniel Akst', 'Life', {'In matters of self-control as we shall see again and again, speed kills. But a little friction really can save lives.', 'We Have Met the Enemy: Self-Control in an Age of Excess.'});

INSERT INTO mysolr (id, name, title, quotes) VALUES ('125', 'Abraham Lincoln', 'Success', {'Always bear in mind that your own resolution to succeed is more important than any one thing.', 'Better to remain silent and be thought a fool than to speak out and remove all doubt.'});

INSERT INTO mysolr (id, name, title, quotes) VALUES ('126', 'Albert Einstein', 'Success', {'If A is success in life, then A equals x plus y plus z. Work is x; y is play; and z is keeping your mouth shut.'});

INSERT INTO mysolr (id, name, title, quotes) VALUES ('101', 'Kevin Thomas Duraj', 'Cassandra', {'Apache Cassandra is an open source distributed database management system designed to handle large amounts of data across many commodity servers, providing high availability with no single point of failure.','Like Java, Scala is object-oriented, and uses a curly-brace syntax reminiscent of the C programming language. Unlike Java, Scala has many features of functional programming languages like Scheme, Standard ML and Haskell, including currying, type inference, immutability, lazy evaluation, and pattern matching.'});
