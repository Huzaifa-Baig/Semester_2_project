--Commented Qurries tht are not being actively used
create database earth_wax;

use earth_wax;
-- To remove the errors all create table querries are commented
/*
create table admin_cred
(
	_id int primary key identity(1,1) not null,
	_employee_num varchar(150) not null,
	_name varchar(100) not null,
	_position varchar(100) not null,
	_join_date date not null,
	_email varchar(100) not null unique,
	_pass varchar(150) not null
);
create table facualty_cred
(
	_id int primary key identity(1,1) not null,
	_employee_num varchar(150) not null,
	_name varchar(100) not null,
	_position varchar(100) not null,
	_join_date date not null,
	_email varchar(100) not null unique,
	_pass varchar(150) not null
);
create table student_cred
(
	_id int primary key identity(1,1) not null,
	_student_id varchar(150) not null,
	_name varchar(100) not null,
	_class varchar(100) not null,
	_section varchar(100) not null,
	_position varchar(100) not null,
	_admission_date date not null,
	_email varchar(100) not null unique,
	_pass varchar(150) not null
);
create table survey_participants_students
(
	_number int primary key identity(1,1) not null,
	_participant_name varchar(100) not null,
	_participant_id varchar(150) not null,
	_student_id int foreign key references student_cred(_id),
	_survey_num int not null
);

create table survey_participants_facualty
(
	_number int primary key identity(1,1) not null,
	_participant_name varchar(100) not null,
	_participant_id varchar(150) not null,
	_facualty_id int foreign key references student_cred(_id),
	_survey_num int not null
);
create table compitition_participants_student
(
	_number int primary key identity(1,1) not null,
	_participant_name varchar(100) not null,
	_participant_id varchar(150) not null,
	_student_id int foreign key references student_cred(_id),
	_surveys_completed int not null
);

*/
-- The Admins insertion only
insert into admin_cred(_employee_num,_name,_position,_join_date,_email,_pass)
values
	('adm_01_2020','Huzaifa Baig','Admin',convert(date,'20140403'),'huzaifa199872@hotmail.com','RHgwj_h!K8FG+U9^96F)#L:<SJ67'),
	('adm_02_2020','Umer Anis','Admin',convert(date,'20180623'),'umeranis2018@gmail.com','C;8Y9!]E#$x?mTk.asd');

--The Teachers insertion only
insert into facualty_cred (_employee_num,_name,_position,_join_date,_email,_pass)
values
	('Teach_01_2018','Aqeela Urooj','Teacher',convert(date,'20181215'),'Aqeelauroj033@hotmail.com','nSYCL++gL=6e.\9z687:L<hop'),
	('Teach_02_2016','Furqan Khan','Teacher',convert(date,'20191012'),'skhan.furqan@yahoo.com','cJa]A6\Xm\@Zk_}.;][o[??');

--The Staff insertion only
insert into facualty_cred (_employee_num,_name,_position,_join_date,_email,_pass)
values
	('Staff_01_2018','Fawad Yusufi','Staff',convert(date,'20200814'),'Fawad1122@gmail.com','2lss21A{}It435%#$23../,V'),
	('Staff_02_2018','Ali Raza','Staff',convert(date,'20200924'),'Ali12@gmail.com','s}FwfX!h=H2NSe{47]][ty');

--The Student insertion query
insert into student_cred (_student_id,_name,_position,_class,_section,_admission_date,_email,_pass)
Values
	('std_59_2018','Ruhama Mansoor','Student','18-BSSE','A',convert(date,'20180116'),'Ruhama@gmail.com','";$UVT5pJHxVbd*'),
	('std_60_2018','Ahsan Saleem','Student','18-BSSE','B',convert(date,'20180118'),'Ahsan@gmail.com','j>mQ]t4:S}>*}"\?'),
	('std_61_2019','Muhammad Hamza','Student','19-BSCS','A',convert(date,'20190204'),'Hamza@gmail.com','tbW<tUd8YEMVu~j#'),
	('std_62_2019','Sohaib Farooq','Student','19-BSCS','A',convert(date,'20190202'),'Sohaib@gmail.com','L=HY!2m?DyvY<*2]'),
	('std_63_2019','Farhan Nawaz','Student','19-BSSE','B',convert(date,'20190203'),'Farhan@gmail.com','"=7^N~q:Jye2eYQy'),
	('std_64_2019','Muhammad Waqar','Student','19-BSSE','B',convert(date,'20190214'),'Waqar@gmail.com','JrECh56v"D.k)n`R'),
	('std_65_2020','Owais Dil Khan','Student','20-BSCS','A',convert(date,'20200316'),'Owais@gmail.com','TG=bK~!K4LU@mkT?'),
	('std_66_2020','Manahil Rehman','Student','20-BSSE','B',convert(date,'20200315'),'Manahil@gmail.com','x2~HaFhS<Xc_[cj');

insert into survey_participants_students(_participant_id,_participant_name,_student_id,_survey_num)
Values
	('std_59_2018','Ruhama Mansoor',1,4),
	('std_60_2018','Ahsan Saleem',2,4),
	('std_61_2019','Muhammad Hamza',3,3),
	('std_62_2019','Sohaib Farooq',4,3),
	('std_63_2019','Farhan Nawaz',5,2),
	('std_64_2019','Muhammad Waqar',6,2),
	('std_65_2020','Owais Dil Khan',7,1),
	('std_66_2020','Manahil Rehman',8,1);

insert into survey_participants_facualty(_participant_id,_participant_name,_survey_num,_facualty_id)
values
	('Teach_01_2018','Aqeela Urooj',4,1),
	('Teach_02_2016','Furqan Khan',4,2),
	('Staff_01_2018','Fawad Yusufi',2,3),
	('Staff_02_2018','Ali Raza',1,4);

--functions
/*
truncate table survey_participants_facualty;
drop table survey_participants_facualty;

truncate table survey_participants_facualty;
drop table survey_participants_facualty;


truncate table admin_cred;
drop table admin_cred;


truncate table student_cred;
drop table student_cred;


truncate table facualty_cred;
drop table facualty_cred;


alter table compitition_participants_student 
add _surveys_completed int not null; 

alter table compitition_participants_student 
drop _surveys_completed int not null;
*/

--Select Querries
select _employee_num as 'ID',_name as 'Name',_position as 'Position',_join_date as 'Join Date',_email as 'Email' from admin_cred;

select _employee_num as 'ID',_name as 'Name',_position as 'Position',_join_date as 'Join Date',_email as 'Email' from facualty_cred;

select _student_id as 'ID', _name as 'Name',_class as 'Class',_section as 'Section',_admission_date as 'Admission Date', _email as 'Email' 
from student_cred;

select _participant_id as 'ID',_participant_name as 'Name',_survey_num as 'Survey Participated in' from survey_participants_students
where _student_id = 1;

select * from student_cred;

select survey_participants_facualty._participant_name,survey_participants_facualty._participant_id,facualty_cred._email
from survey_participants_facualty left join facualty_cred on facualty_cred._id=survey_participants_facualty._facualty_id
where _survey_num =4
;

--Now for survey answers for 4 surveys for each facualty and student. Table creation only will insert/ update valuses after webpage is up and ready.

create table survey_1_answers_students
(
	_entry_number int identity(1,1) primary key,
	_student_id int not null foreign key references student_cred(_id),
	_answer_1 varchar(50) ,
	_answer_2 varchar(50) ,
	_answer_3 varchar(50) ,
	_answer_4 varchar(50) ,
	_answer_5 varchar(50) ,
	_answer_6 varchar(50) ,
	_answer_7 varchar(50) ,
	_answer_8 varchar(50) ,
	_answer_9 varchar(50) ,
	_answer_10 varchar(50)
);
create table survey_2_answers_students
(
	_entry_number int identity(1,1) primary key,
	_student_id int not null foreign key references student_cred(_id),
	_answer_1 varchar(50) ,
	_answer_2 varchar(50) ,
	_answer_3 varchar(50) ,
	_answer_4 varchar(50) ,
	_answer_5 varchar(50) ,
	_answer_6 varchar(50) ,
	_answer_7 varchar(50) ,
	_answer_8 varchar(50) ,
	_answer_9 varchar(50) ,
	_answer_10 varchar(50)
);
create table survey_3_answers_students
(
	_entry_number int identity(1,1) primary key,
	_student_id int not null foreign key references student_cred(_id),
	_answer_1 varchar(50) ,
	_answer_2 varchar(50) ,
	_answer_3 varchar(50) ,
	_answer_4 varchar(50) ,
	_answer_5 varchar(50) ,
	_answer_6 varchar(50) ,
	_answer_7 varchar(50) ,
	_answer_8 varchar(50) ,
	_answer_9 varchar(50) ,
	_answer_10 varchar(50)
);
create table survey_4_answers_students
(
	_entry_number int identity(1,1) primary key,
	_student_id int not null foreign key references student_cred(_id),
	_answer_1 varchar(50) ,
	_answer_2 varchar(50) ,
	_answer_3 varchar(50) ,
	_answer_4 varchar(50) ,
	_answer_5 varchar(50) ,
	_answer_6 varchar(50) ,
	_answer_7 varchar(50) ,
	_answer_8 varchar(50) ,
	_answer_9 varchar(50) ,
	_answer_10 varchar(50)
);
create table survey_1_answers_facualty
(
	_entry_number int identity(1,1) primary key,
	_facualty_id int not null foreign key references facualty_cred(_id),
	_answer_1 varchar(50) ,
	_answer_2 varchar(50) ,
	_answer_3 varchar(50) ,
	_answer_4 varchar(50) ,
	_answer_5 varchar(50) ,
	_answer_6 varchar(50) ,
	_answer_7 varchar(50) ,
	_answer_8 varchar(50) ,
	_answer_9 varchar(50) ,
	_answer_10 varchar(50)
)create table survey_2_answers_facualty
(
	_entry_number int identity(1,1) primary key,
	_student_id int not null foreign key references facualty_cred(_id),
	_answer_1 varchar(50) ,
	_answer_2 varchar(50) ,
	_answer_3 varchar(50) ,
	_answer_4 varchar(50) ,
	_answer_5 varchar(50) ,
	_answer_6 varchar(50) ,
	_answer_7 varchar(50) ,
	_answer_8 varchar(50) ,
	_answer_9 varchar(50) ,
	_answer_10 varchar(50)
)create table survey_3_answers_facualty
(
	_entry_number int identity(1,1) primary key,
	_student_id int not null foreign key references facualty_cred(_id),
	_answer_1 varchar(50) ,
	_answer_2 varchar(50) ,
	_answer_3 varchar(50) ,
	_answer_4 varchar(50) ,
	_answer_5 varchar(50) ,
	_answer_6 varchar(50) ,
	_answer_7 varchar(50) ,
	_answer_8 varchar(50) ,
	_answer_9 varchar(50) ,
	_answer_10 varchar(50)
)create table survey_4_answers_facualty
(
	_entry_number int identity(1,1) primary key,
	_student_id int not null foreign key references facualty_cred(_id),
	_answer_1 varchar(50) ,
	_answer_2 varchar(50) ,
	_answer_3 varchar(50) ,
	_answer_4 varchar(50) ,
	_answer_5 varchar(50) ,
	_answer_6 varchar(50) ,
	_answer_7 varchar(50) ,
	_answer_8 varchar(50) ,
	_answer_9 varchar(50) ,
	_answer_10 varchar(50)
)
create table survey_status_students
(
	_entry_num int identity(1,1) primary key,
	_participant_num int not null foreign key references survey_participants_students(_number),
	_student_id int not null foreign key references student_cred(_id),
	_survey_num int not null,
	_survey_num_status varchar(100) not null
);
create table survey_status_facualty
(
	_entry_num int identity(1,1) primary key,
	_participant_num int not null foreign key references survey_participants_facualty(_number),
	_facualty_id int not null foreign key references facualty_cred(_id),
	_survey_num int not null,
	_survey_num_status varchar(100) not null	
);