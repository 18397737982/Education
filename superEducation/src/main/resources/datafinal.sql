--1管理员表
create table admin(
	admin_id int primary key auto_increment,
	admin_name varchar(50),
	admin_password varchar(50),
	email varchar(20)
);

--2学员表
select user_name from userInfo where user_name='a';
create table userInfo(
	user_id int primary key auto_increment,
	user_name varchar(50) not null,
	realname varchar(50),
	age    int,
	sex   varchar(10),
	pic   varchar(100),
	password varchar(50) not null,
	usign varchar(500),
	introduce varchar(500),
	email varchar(50),
	tel varchar(11),
	qq   varchar(11),
	status int,
	time datetime, 
	temp02 varchar(200),
    temp03 varchar(200)
);
drop table userInfo;
--3课程类别
create table class_category(
	class_id int primary key auto_increment,
	class_categorys varchar(50),
	temp01 varchar(200) 
);

insert into  class_category(class_categorys) values('摄影课堂');
insert into  class_category(class_categorys) values('创意设计');
insert into  class_category(class_categorys) values('声乐器乐');
insert into  class_category(class_categorys) values('运动健身');
insert into  class_category(class_categorys) values('IT互联网');
insert into  class_category(class_categorys) values('兴趣爱好');
insert into  class_category(class_categorys) values('语言学习');
insert into  class_category(class_categorys) values('职场技能');
insert into  class_category(class_categorys) values('公开课');

--4课程表
create table course(
	course_id int primary key auto_increment,
	course_name varchar(50),
	user_id int,
	class_id int,
	course_view int ,
	course_description varchar(500),
	coursephoto varchar(400),
	courseting varchar(100),   
	price numeric(8,2),
	status int
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
alter table course alter column status set default 0;

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
create table account(
	user_id int,
	balance decimal
);
insert into account(user_id,balance) values(1,'0');
--9.账户记录表
create table accountnotes(
	user_id int,
	money decimal,
	payment varchar(50),
	times  date
); 
commit;
-----------------10.课程评价表
create table courseAssess(
       caid int primary key auto_increment,
       user_id int, 
       class_hour_id int, 
       content varchar(500),
       time datetime,
       readstatus int,
       temp03 varchar(200)
);
--11学习课程表
create table studyCourse(
       scid int primary key auto_increment,
       user_id int,
       course_id int, 
       begintime datetime ,
       assess int,
       studyPeriod varchar(500),
       temp01 varchar(200),
       temp02 varchar(200)
);
--12在教课程表
create table teachCourse(
	tcid int primary key auto_increment,
	user_id int,
	course_id int,
	begintime date,
	assess int ,
    temp01 varchar(200)
);
update course set status=1 where course_id=1;
--------------------------13.关注表（保留意见）
create table attention(
       atid  int  primary key auto_increment,  
       attention int,
       user_id int, 
       sreadstatus int,
       temp02 varchar(200),
       temp03 varchar(200)
);select * from attention;
select * from attention where user_id =1 and attention=1
delete from attention where attention=1 and user_id=1;
insert into attention(attention,user_id,sreadstatus) values();
--14课程问题
--cqid 课程提问表
create table courseAnswer(
       caid int primary key auto_increment ,
       cqid int,
       user_id int,
       answerContent varchar(100),
       answertime date,
       temp01 varchar(200)
);
--------------------15.课程提问表
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
--16小组表
create table cgroup(
	gid int primary key auto_increment, 
	groupname varchar(100),
	pic varchar(100),
	introduction varchar(500),
	user_name varchar(50),
	createtime date	
);

--17加入小组表
create table joingroup(
	   jid int primary key auto_increment,
       gid int,          
       user_id int
);
--18私信或留言
create table selfMessage(
       smid int primary key auto_increment,  
       sendman int, 
       receiveman int,
       scontent varchar(500),
       smtime datetime,
       sendType int ,
       sreadstatus int,
       temp03 varchar(200)
);
select *from selfMessage;
insert into selfMessage(sendman,receiveman,scontent,smtime,sendType,sreadstatus) values(1,2,'hello','2017-02-23 00:00:00',1,0);
commit;
select * from cgroup;
insert into cgroup(groupname,pic,introduction,createtime,user_name) value('strong','../img/headimg/148949695060214942.jpg','strong 是一个强大小组','2017-02-23 00:00:00','lgy');
insert into cgroup(groupname,pic,introduction,createtime,user_name) value('strong','../img/headimg/148949695060214942.jpg','strong 是一个强大小组','2017-02-23 00:00:00','lgy');
