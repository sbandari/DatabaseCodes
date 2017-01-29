Connect system;

Drop user DBSEC_CLERK cascade;
---creating DBSEC_clerk user
Create USER DBSEC_CLERK identified by tec5363clerk
default tablespace USERS
temporary tablespace TEMP
profile default; 

GRANT CONNECT,CREATE SESSION, CREATE TABLE TO DBSEC_CLERK  WITH ADMIN OPTION;

Drop user VPD_CLERK1 cascade;
---creating VPD_CLERK1 user
Create User VPD_CLERK1 Identified by Jessie#22
Default TABLESPACE users
Temporary TABLESPACE temp
QUOTA UNLIMITED On users
PROFILE default 
ACCOUNT unlock;

GRANT CONNECT,CREATE SESSION, CREATE TABLE TO VPD_CLERK1 WITH ADMIN OPTION;

Drop user scott cascade;
--creating scott user
CREATE USER scott IDENTIFIED BY tiger
   DEFAULT TABLESPACE USERS
   TEMPORARY TABLESPACE TEMP
   QUOTA UNLIMITED ON USERS;

GRANT CONNECT,CREATE SESSION, CREATE TABLE,DBA TO scott with admin option;

connect scott/tiger;

create or replace trigger my_trigger_before_create
Before create on database
Begin
	if USER='DBSEC_CLERK' then
	RAISE_APPLICATION_ERROR(-20001,'You do not have the privilege to create tables or other database objects. Please contact your manager if you need the privilege.');
	elsif USER='VPD_CLERK1' then
	RAISE_APPLICATION_ERROR(-20001,'You do not have the privilege to create tables or other database objects. Please contact your manager if you need the privilege.');
	end if;
end;
/

ALTER SYSTEM SET audit_trail = db scope = spfile;

Audit ALL by DBSEC_CLERK by ACCESS;

Audit ALL by VPD_CLERK1 by ACCESS;

connect DBSEC_CLERK/tec5363clerk;

create table sample1( Name varchar(30), id number);

connect VPD_CLERK1/Jessie#22;

create table sample2(Name varchar(20), id number);

Connect SYSTEM;


select OS_USERNAME, USERNAME, TIMESTAMP, ACTION_NAME From DBA_AUDIT_TRAIL WHERE USERNAME='DBSEC_CLERK';
Select OS_USERNAME, USERNAME, TIMESTAMP, ACTION_NAME From DBA_AUDIT_TRAIL WHERE USERNAME='VPD_CLERK1';
