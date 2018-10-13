/***********************
-Author: Michal Cierlica
-Script purpose: creates a function that returns the very first day of previous month
-Feel free to give me any suggestions, remarks or comments at cwirus88@gmail.com
**********************/

create or replace FUNCTION                               your_schema_name.first_day
  RETURN DATE
IS
  v_first_day DATE;
BEGIN
  SELECT
    TO_DATE(0
    ||1
    ||TO_CHAR(ADD_MONTHS(SYSDATE,-1),'mmyyyy'),'ddmmyyyy')
  INTO
    v_first_day
  FROM
    dual;
  RETURN v_first_day;
END;