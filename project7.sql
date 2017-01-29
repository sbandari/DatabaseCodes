

SELECT COUNT(OFFICER_ID)/COUNT(DISTINCT OFFICER_ID) AS AVERAGE FROM CRIME_OFFICERS;
SELECT criminal_id, last, first
  FROM criminals JOIN sentences USING (criminal_id)
  GROUP BY criminal_id, last, first
  HAVING COUNT(sentence_id) > 1;
SELECT criminal_id, UPPER(c.last) "LAST_NAME", UPPER(c.first) "FIRST_NAME", s.sentence_id, TO_CHAR(s.start_date, 'MONTH DD, YYYY') "START_DATE", ROUND(MONTHS_BETWEEN(END_DATE,START_DATE)) "PROBATION_PERIOD"
  FROM criminals c JOIN sentences s USING (criminal_id); 
SELECT last, first, start_date, ADD_MONTHS(START_DATE,2) "REVIEW DATE"
   FROM criminals JOIN sentences USING (criminal_id)
   WHERE (ROUND(MONTHS_BETWEEN(END_DATE,START_DATE)) > 2);

