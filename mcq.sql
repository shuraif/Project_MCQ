select*from easy_question;

delete from easy_question where question_id='easy_120';

desc exam_table;

drop table exam_table;

create table exam_schedule(exam_id varchar2(20) primary key,exam_date date,exam_time varchar2(20));



	create table exam_table(exam_id varchar2(20),exam_date varchar(20),start_time  varchar2(20),duration varchar2(10),seat number)
    
    
    
 create or replace procedure insertSchedule
(id in out varchar,edate in varchar,start_time in varchar,duration in varchar,seat in varchar)
as
begin
SELECT schedule_sequence.nextval INTO id FROM dual;
id:='schedule_'||id;
insert into exam_table values(id,edate,start_time,duration,seat);
end;

select *from user_registration;

select* from exam_table;


select*from med_question;



create sequence hard_question_sequence minvalue 100 




create table hard_question(question_id  varchar(20) primary key,
question varchar(2048),option_a varchar(1024),
option_b varchar(1024),option_c varchar(1024),
option_d varchar(1024),answer varchar(3))






 create or replace procedure insertHardQuestion
(id in out varchar,question in varchar,option_a in varchar,option_b in varchar,option_c in varchar,option_d in varchar,answer in varchar)
as
begin
SELECT hard_question_sequence.nextval INTO id FROM dual;
id:='hard_'||id;
insert into hard_question values(id,question,option_a,option_b,option_c,option_d,answer);
end;




select*from hard_question;


desc exam_table;
alter table exam_table modify duration varchar(20);




create table user_registration (user_id number(10) primary key,first_name varchar(20),
last_name varchar(20),email varchar(50), mobile varchar(20),username varchar(50),password varchar(50))

insert into user_registration values(122,'shuraif','muhamed','ms@gmail.com','9496369704','user','pass');



select top 10 percent EMPLOYEE_ID  from employees order by newid()

desc employees;



select * from employees tablesample(1 percent);



SELECT EMPLOYEE_ID FROM employees ORDER BY RAN



SELECT *
FROM   (
    SELECT *
    FROM   easy_question
    ORDER BY DBMS_RANDOM.VALUE)
WHERE  rownum < 11;


desc easy_question;
select*from easy_question;
select*from hard_question;
select*from medium_question;

delete from medium_question;

SELECT  * from easy_question e full outer JOIN  hard_question h;


SELECT a.question, b.question,
FROM easy_question a FULL OUTER JOIN hard_question b; 



SELECT a.question, b.question
FROM easy_question a FULL OUTER JOIN hard_question b
ON (a.question_id = b.question_id) ;


CREATE VIEW random_question AS SELECT * FROM easy_question;
insert into random_question values select * FROM med_question;

SELECT * INTO random_question FROM med_question;


drop view random_question;


create table random_question as select * from med_question where 1=0;

desc random_question;

desc med_question;


desc medium_question;

desc  exam_table;

 alter table exam_table modify EXAM_ID varchar(20) primary key;



CREATE TABLE random_question (

exam_id varchar2(20) REFERENCES exam_table(EXAM_ID),question_id varchar2(20) PRIMARY KEY,type varchar2(20));



insert into exam_id
SELECT question_id FROM   ( SELECT * FROM   med_question ORDER BY DBMS_RANDOM.VALUE) WHERE  rownum < 11;



desc random_question;

insert into random_question values('schedule_232','med_104','med');

select*from random_question;

select*from med_question;

desc easy_question;

delete from random_question;
commit;

create table user_login (id number(10) not null primary key, user_id varchar(20), user_password varchar(20));



create table user_registration (user_id number(10) not null primary key,first_name varchar(20),last_name varchar(20),email varchar(50), mobile varchar(20),status varchar(10));
drop table user_registration;

insert into user_registration values(user_sequence.nextval,'jaya','prabha','jaya@gmail.com','9876456345','pass');

Create sequence user_sequence start with 1
increment by 1
minvalue 1
maxvalue 1000000;


drop table medium_question;

select*from exam_registration;
select*from hard_question;
select*from med_question;
select*from easy_question;

desc exam_table;

SELECT a.question, b.question
FROM easy_question a FULL OUTER JOIN hard_question b
ON (a.question_id = b.question_id) ;





alter table exam_table add  exam_pass varchar(20);

select *from exam_table;


create sequence schedule_pass_sequence minvalue 100;



 create or replace procedure insertSchedule
(id in out varchar,edate in varchar2,start_time in varchar,duration in varchar,seat in varchar)
as
begin
SELECT schedule_sequence.nextval INTO id FROM dual;
id:='schedule_'||id;
insert into exam_table values(id,edate,start_time,duration,seat,schedule_pass_sequence.nextval);
end;

desc exam_table;

select *from exam_table;

schedule_261


desc exam_registration;
select* from exam_table;

select * from user_login;
insert into exam_registration values('1','schedule_340','shuru');
commit;


select*from exam_table;
desc exam_registration;
select*from  exam_registration;

select * from exam_registration where user_id='shuru';

select * from random_question where exam_id='schedule_261';
delete from exam_registration;
delete from exam_table;
delete from random_question;
delete from easy_question;
delete from med_question;
delete from hard_question;
commit;
select* from hard_question;
select* from med_question;
select* from easy_question;
select*from exam_table;
select *from random_question;
select* from exam_table;
desc exam_table;
desc random_question;
create table score (score_id varchar2(20) primary key, schedule_id varchar2(20),user_id varchar2(20),score number)	;
create sequence score_sequence minvalue 100; 
select*from score;

select * from exam_registration where user_id='shuru';

select*from exam_registration;
select*from user_registration;
select *from user_login;
insert into exam_registration values(1,'schedule_400','shuru','Applied');

select *from exam_table where exam_id='schedule_342';
select exam_id from exam_registration  where user_id='shuru';
commit;
select*from score;
delete from exam_registration
delete from exam_table;
select*from exam_table;
alter table exam_table rename column duration to end_time;
commit;
insert into ea

alter table exam_registration add status varchar(20);

select*from exam_registration;

update exam_registration set status='Applied' where user_id='shuru';

create sequence apply_id minvalue 100; 
select * from random_question;


drop table employee cascade constraints;
create table employee(empid number(6) primary key,empName varchar(25),salary number(20),city varchar(20));

insert into employee values (1001,'jack',2500,'chennai');
insert into employee values (1002,'jaya',45500,'tvm');
insert into employee values (1003,'sparow',7500,'dreamland');
insert into employee values (1004,'mike',10500,'pune');
commit;

desc employee;


SELECT TO_CHAR(SYSDATE, 'DD-MM_YYYY')FROM dual;



delete from score;
select TO_CHAR(sysdate,'dd-MM-yyyy') from dual;
delete from exam_registration where exam_reg_id=1;
commit;

select*from score;
e score=5;
select*from random_question;





















desc exam_table;




