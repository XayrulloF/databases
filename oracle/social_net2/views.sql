CREATE OR REPLACE VIEW fullname AS SELECT fname ||' '|| lname ||' '|| midname AS fullname FROM all_users;


CREATE OR REPLACE VIEW offline_time(id, fullname, difference) AS SELECT id, lname ||' '|| fname ||' '|| midname AS fullname, FLOOR(CURRENT_DATE - lastlogin) AS difference FROM all_users;

SELECT * FROM fullname;

SELECT * FROM offline_time;

DROP VIEW offline_time;