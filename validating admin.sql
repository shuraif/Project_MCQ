validating admin

   create or replace procedure validateAdmin
  (id in varchar,
   pass in varchar,
   okay out varchar
  )
    as
   begin
   SELECT admin_id INTO okay FROM admin_login WHERE admin_id=id and admin_password=pass;
  if(sql%found) then
  okay:='okay';
   else
  okay:='fail';
  end if;
   exception
  when no_data_found then
  okay:='fail';
 end;



+++++++++++++++++++++++++++++++++++++++++++++++++++++++


easy question related queries
_____________________________


creating sequence for addinf new id

create sequence easy_question_sequence minvalue 100 






creating easy question table

create table easy_question(question_id  varchar(20) primary key,
question varchar(2048),option_a varchar(1024),
option_b varchar(1024),option_c varchar(1024),
option_d varchar(1024),answer varchar(3))




procedure fro inserting new easy quesion



 create or replace procedure insertEasyQuestion
(id in out varchar,question in varchar,option_a in varchar,option_b in varchar,option_c in varchar,option_d in varchar,answer in varchar)
as
begin
SELECT easy_question_sequence.nextval INTO id FROM dual;
id:='easy_'||id;
insert into easy_question values(id,question,option_a,option_b,option_c,option_d,answer);
end;
/

_____________________________
related to medium question



creating sequence for addinf new medium id

create sequence med_question_sequence minvalue 100 





creating mediumquestion table

create table med_question(question_id  varchar(20) primary key,
question varchar(2048),option_a varchar(1024),
option_b varchar(1024),option_c varchar(1024),
option_d varchar(1024),answer varchar(3))





procedure fro inserting new medium quesion


 create or replace procedure insertMedQuestion
(id in out varchar,question in varchar,option_a in varchar,option_b in varchar,option_c in varchar,option_d in varchar,answer in varchar)
as
begin
SELECT med_question_sequence.nextval INTO id FROM dual;
id:='med_'||id;
insert into med_question values(id,question,option_a,option_b,option_c,option_d,answer);
end;


_____________________________
related to insertion of hard questions



creating sequence for addinf new medium id

create sequence hard_question_sequence minvalue 100 





creating hard  question table

create table hard_question(question_id  varchar(20) primary key,
question varchar(2048),option_a varchar(1024),
option_b varchar(1024),option_c varchar(1024),
option_d varchar(1024),answer varchar(3))





procedure fro inserting new medium quesion


 create or replace procedure insertHardQuestion
(id in out varchar,question in varchar,option_a in varchar,option_b in varchar,option_c in varchar,option_d in varchar,answer in varchar)
as
begin
SELECT hard_question_sequence.nextval INTO id FROM dual;
id:='hard_'||id;
insert into hard_question values(id,question,option_a,option_b,option_c,option_d,answer);
end;















_____________________________



creating sequence for add to exam_table id

create sequence schedule_sequence minvalue 100 





_____________________________







create tabble for adding scheduel by admin


create table exam_table(exam_id varchar2(20),exam_date varchar2(20),start_time  varchar2(20),duration varchar2(10),seat number)



_____________________________


procedure for adding new schedule

 create or replace procedure insertSchedule
(id in out varchar,edate in varchar2,start_time in varchar,duration in varchar,seat in varchar)
as
begin
SELECT schedule_sequence.nextval INTO id FROM dual;
id:='schedule_'||id;
insert into exam_table values(id,edate,start_time,duration,seat,schedule_pass_sequence.nextval);
end;
/





=======================================


	_____________________________

RANDOM QUESTION TABLE

sequence for generate id in random_question table


create sequence rand_question_sequence minvalue 100; 

_____________________________

table for storing random_question

	CREATE TABLE random_question (row_id varchar2(20) primary key,

exam_id varchar2(20) REFERENCES exam_table(EXAM_ID),question_id varchar2(20) PRIMARY KEY,type varchar2(20));






	_____________________________

user login table...registration table slpted into two

 create table user_login (id number(10) not null primary key, user_id varchar(20), user_password varchar(20));



creating user user_registration  table


	create table user_registration (user_id number(10) not null primary key,first_name varchar(20),last_name varchar(20),email varchar(50), mobile varchar(20),status varchar(10));
drop table user_registration;


insert a row 

insert into user_registration values(user_sequence.nextval,'jaya','prabha','jaya@gmail.com','9876456345','pass');




Create sequence user_sequence start with 1
increment by 1
minvalue 1
maxvalue 1000000;



_____________________________

alter exam schedule table(exam_table)

alter table exam_table add  exam_pass varchar(20);


craete sequence for password in schedule

create sequence schedule_pass_sequence minvalue 100 
	_____________________________



	sequence for score table

	create sequence score_sequence minvalue 100; 


	create table score (score_id varchar2(20) primary key, schedule_id varchar2(20),user_id varchar2(20),score number)	;