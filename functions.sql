-- To connect as Sys user
CONNECT SYS/&password as SYSDBA;


--Complexity Fucntion to enforce the password requirements
CREATE OR REPLACE FUNCTION tec5363_password
(username varchar2,
  password varchar2,
  old_password varchar2)
  RETURN boolean IS 
   n boolean;
   m integer;
   differ integer;
   isdigit boolean;
   ischar  boolean;
   ispunct boolean;
   digitarray varchar2(20);
   punctarray varchar2(25);
   chararray varchar2(52);

BEGIN 
   digitarray:= '0123456789';
   chararray:= 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
   punctarray:='!"#$%&()``*+,-/:;<=>?_';

  -- to check password differs username or not
   IF NLS_LOWER(password) = NLS_LOWER(username) THEN
     raise_application_error(-20001, 'Password same as or similar to user');
   END IF;

   -- to check for length of the password is 6 or not
   IF length(password) < 6 THEN
      raise_application_error(-20002, 'Password length less than 6');
   END IF;

   --Is not simple or obvious, such as welcome, account , oracle, database , or user
   IF NLS_LOWER(password) IN ('welcome', 'database', 'account', 'user', 'oracle') THEN
      raise_application_error(-20002, 'Password too simple');
   END IF;

   -- Check if the password contains at least one letter, one digit and one
   -- punctuation mark.
   -- Check for the digit
   isdigit:=FALSE;
   m := length(password);
   FOR i IN 1..10 LOOP 
      FOR j IN 1..m LOOP 
         IF substr(password,j,1) = substr(digitarray,i,1) THEN
            isdigit:=TRUE;
             GOTO findchar;
         END IF;
      END LOOP;
   END LOOP;
   IF isdigit = FALSE THEN
      raise_application_error(-20003, 'Password should contain at least one digit, one character and one punctuation');
   END IF;

   -- Check for the character
   <<findchar>>
   ischar:=FALSE;
   FOR i IN 1..length(chararray) LOOP 
      FOR j IN 1..m LOOP 
         IF substr(password,j,1) = substr(chararray,i,1) THEN
            ischar:=TRUE;
             GOTO findpunct;
         END IF;
      END LOOP;
   END LOOP;
   IF ischar = FALSE THEN
      raise_application_error(-20003, 'Password should contain at least one \
              digit, one character and one punctuation');
   END IF;


   -- Check for the punctuation
   <<findpunct>>
   ispunct:=FALSE;
   FOR i IN 1..length(punctarray) LOOP 
      FOR j IN 1..m LOOP 
         IF substr(password,j,1) = substr(punctarray,i,1) THEN
            ispunct:=TRUE;
             GOTO endsearch;
         END IF;
      END LOOP;
   END LOOP;
   IF ispunct = FALSE THEN
      raise_application_error(-20003, 'Password should contain at least one \
              digit, one character and one punctuation');
   END IF;

   <<endsearch>>
   -- Check if the password differs from the previous password by at least 3 letters
   IF old_password IS NOT NULL THEN
     differ := length(old_password) - length(password);

     IF abs(differ) < 3 THEN
       IF length(password) < length(old_password) THEN
         m := length(password);
       ELSE
         m := length(old_password);
       END IF;

       differ := abs(differ);
       FOR i IN 1..m LOOP
         IF substr(password,i,1) != substr(old_password,i,1) THEN
           differ := differ + 1;
         END IF;
       END LOOP;

       IF differ < 3 THEN
         raise_application_error(-20004, 'Password should differ by at least 3 characters');
       END IF;
     END IF;
   END IF;
   -- Everything is fine return TRUE 
   RETURN(TRUE);
END;
/


Drop profile tech5363_prof CASCADE;
Create profile tec5363_prof Limit
PASSWORD_LIFE_TIME 60
PASSWORD_GRACE_TIME 1
PASSWORD_REUSE_TIME 30
PASSWORD_REUSE_MAX UNLIMITED
FAILED_LOGIN_ATTEMPTS 3
PASSWORD_LOCK_TIME 13
PASSWORD_VERIFY_FUNCTION tec5363_password;

-- Assigning profile to user
ALTER USER DBSEC PROFILE tec5363_prof;

commit;
