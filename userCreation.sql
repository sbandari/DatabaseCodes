--to find the roles assigned to account
SELECT * FROM USER_ROLE_PRIVS;

Drop user "TECUSER" ;
-- to create user 
create user "TECUSER"
identified by mynewpassword
profile "DEFAULT"
account unlock 
default tablespace  "USERS" 
temporary tablespace "TEMP";

Drop role "TECROLE" ;
-- to create role
create role "TECROLE" NOT IDENTIFIED;
grant CREATE ANY INDEX to "TECROLE";
grant CREATE TABLE to "TECROLE";
grant CREATE VIEW to "TECROLE";
grant CREATE SESSION to "TECROLE";

--to grant role to user
grant "TECROLE" to "TECUSER";