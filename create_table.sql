-- create user/schema;
CREATE USER user_name
	IDENTIFIED BY password;
-- grant permissions like create sesssion, crate table, etc
GRANT crate session, create table ...
to user_name;
-- assign table space for user
-- must be connect system
 alter user usr_name quota 50m on system;

-- show all tables in schema/user
SELECT table_name
	FROM user_tables
	ORDER BY table_name;
-- create a simple table
CREATE TABLE students (
  ID number(11) primary key,
  name varchar2(60),
  mobile varchar2(11),
  address varchar2(200)
  );
  
 -- show table describe
 desc table_name;
  hello