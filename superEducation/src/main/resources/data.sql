create database mydate;
--1管理员表
create table admin(
	admin_id int primary key auto_increment,
	admin_password varchar(50),
	email varchar2(20), 
	temp01 varchar2(200),--备用字段
    temp02 varchar2(200)--备用字段
);
drop table admin;
--2学员表
select user_name from userInfo where user_name='a';
create table userInfo(
	user_id int primary key auto_increment,
	user_name varchar(50) not null,
	realname varchar(50),
	age    int,
	sex   varchar(10),
	pic   longblob,
	password varchar(50) not null,
	usign varchar(500),
	introduce varchar(500),
	email varchar(50),
	status int,
	user_category varchar(10),
	tel varchar(11),
	qq   varchar(11),
	time date, 
	temp02 varchar(200),
    temp03 varchar(200)
);

--3课程类别
create table class_category(
	class_id int primary key auto_increment,
	class_categorys varchar(50),
	temp01 varchar(200) 
);
--4课程
drop table course;
create table course(
	course_id int primary key auto_increment,
	course_name varchar(50),
	user_id int,
	class_id int,
	course_view int ,
	course_description varchar(500),
	coursephoto varchar(400),
	courseting varchar(100),
	price numeric(8,2)
);
--5课时 
create table class_hour(
	class_hour_id int primary key auto_increment,
	course_id int,
	type int , 
	title varchar(50),
	introduction varchar(200),
	courseseq int ,
	content varchar(2000)	
);

select s.*,(select count(1) from studyCourse where course_id = s.course_id ) memberCount,
		(select avg(assess) from studyCourse where course_id = s.course_id) assessAvg,
		(select count(*) from class_hour ch where ch.course_id=s.course_id )totalCm,
		(select studyPeriod from studyCourse sc where sc.user_id=2 and sc.course_id=s.course_id)studyPeriod
		 from course s
		 inner join userInfo u
		 on s.user_id=u.user_id
		 inner join class_category cl
		 on cl.class_id=s.class_id
		 where s.course_id in(select course_id from studyCourse  where user_id =2)
--6笔记
create table notes(
	notes_id int primary key auto_increment,
	notes_content varchar(500),
	class_hour_id int,
	user_id int,
	comment_time date
);

--7课程学习总数(统计某课程被加入关注的总数)
create table stu_count(
	user_count_id int primary key auto_increment,
	course_id int,
	stu_id int
);
--8账户表
 学生id  账户余额  
create table account(
	user_id int,--学员id 
	balance decimal
);
-----------------9.课程评价表
create table courseAssess(
       caid int primary key auto_increment,
       user_id int, 
       class_hour_id int, 
       content varchar(500),
       time date,
       readstatus int,
       temp03 varchar(200)--备用字段  
);
--10学习课程表
create table studyCourse(
       scid int primary key auto_increment,
       user_id int,
       course_id int, 
       begintime date ,
       assess int ,
       studyPeriod varchar(500),
       temp01 varchar(200),
       temp02 varchar(200)
);

--11在教课程表
create table teachCourse(
	tcid int primary key auto_increment,
	user_id int,
	course_id int,
	begintime date,
	assess int ,
    temp01 varchar(200)
);

drop table teachCourse;
	select c.*,(select count(1) from teachCourse where course_id = c.course_id )
		memberCount,u.*,
		(select avg(assess) from teachCourse where course_id = c.course_id) assessAvg
		from teachCourse t
		inner join userInfo u
		on u.user_id=t.user_id
		inner join course c
		on c.course_id=t.course_id
		where t.user_id=2
--------------------------11.关注表（保留意见）
create table attention(
       atid  int  primary key auto_increment,  
       attention int,
       user_id int, 
       sreadstatus int,
       temp02 varchar(200),
       temp03 varchar(200)
);
drop table teachCourse;

select * from userInfo;
insert into attention(attention,user_id,sreadstatus,temp02,temp03) values(3,2,null,null,null);
insert into attention(attention,user_id,sreadstatus,temp02,temp03) values(4,2,null,null,null);
insert into attention(attention,user_id,sreadstatus,temp02,temp03) values(5,2,null,null,null);

--12课程问题
--cqid 课程提问表
create table courseAnswer(
       caid int primary key auto_increment ,
       cqid int,
       user_id int,
       answerContent varchar(100),
       answertime date,
       temp01 varchar(200)
);
--------------------16.课程提问表
create table courseQuestion(
       cqid int primary key auto_increment,  
       user_id int, 
       class_hour_id int ,
       cqcontent varchar(500),
       cqtime date,
       cqview int ,
       qreadstatus int,
       temp03 varchar(200)
);
select cq.*,user_name,u.pic from courseQuestion cq
		inner join userInfo u
		on cq.user_id=u.user_id
		where cq.user_id=2
select ca.*,cqcontent,user_name from courseAnswer ca
		inner join userInfo u
		on ca.user_id=u.user_id
		inner join courseQuestion cq
		on ca.cqid=cq.cqid
		where ca.user_id=2;
-----------------14.小组表
create table cgroup(
       gid int primary key auto_increment,  
       groupname varchar(50),
       user_id int,
       createtime date,
       groupnumber varchar(500),
       peoplecount int,
       pic varchar(200),
       introduction varchar(400),
       class_id int
);
select cg.*,user_name,ca.* from cgroup cg
			inner join userInfo u
			on u.user_id=cg.user_id
			inner join class_category ca
			on cg.class_id=ca.class_id
			order by gid limit 2,3
--15私信或留言
create table selfMessage(
       smid int primary key auto_increment,  
       sendman int, 
       receiveman int,
       scontent varchar(500),
       smtime date,
       sendType int ,
       sreadstatus int,
       temp03 varchar(200)
);
select * from userInfo where user_id in
(select attention from attention where user_id=2)


		