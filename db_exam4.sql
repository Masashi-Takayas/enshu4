CREATE INDEX major_i ON major (major_name);

CREATE INDEX student_i ON student (student_name);

CREATE INDEX student_i2 ON student (grade,student_name);

CREATE VIEW v_student AS
SELECT * FROM student;

select * from v_student;

CREATE MATERIALIZED VIEW mv_student AS SELECT * from student;


CREATE OR REPLACE FUNCTION sales_func(amount integer) RETURNS integer
 LANGUAGE plpgsql
AS $function$
declare

begin
    return trunc(amount * 1.1, 0);
end;
$function$;

create table users(id serial primary key,name varchar(50) null);

select * from users;

ALTER SEQUENCE users_id_seq RESTART WITH 101;
