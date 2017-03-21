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
	courseting varchar(100),   --//标签
	price numeric(8,2)
);
<<<<<<< HEAD

select course_id,course_name,c.user_id,class_id,course_view,course_description,coursephoto,price,u.user_id,u.user_name from course c , userInfo u where c.user_id=u.user_id and c.class_id=1 ORDER BY course_view DESC

select *from course;
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('java初级教学',2,5,0,'这门课程将会带领你初步的学会java语言编程','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('摄影初级教学',10,1,0,'这门课程将会带领你初步的学会摄影初级','../img/headimg/1489496618068.jpg','21.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('摄影中级教学',10,1,0,'这门课程将会带领你中步的学会摄影初级','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('设计图初级教学',2,2,0,'这门课程将会带领你初步的学会设计图初级','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('设计图中级教学',2,2,0,'这门课程将会带领你进一步的学会设计图初级','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('吉他初级教学',3,3,0,'这门课程将会带领你初步的学会吉他','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('吉他初级教学',3,3,0,'这门课程将会带领你进一步步的学会吉他','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('篮球初级教学',4,4,0,'这门课程将会带领你初步的学会篮球','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('篮球中级教学',4,4,0,'这门课程将会带领你进一步的学会java语言编程','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('js初级教学',5,5,0,'这门课程将会带领你初步的学会js语言编程','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('js中级教学',5,5,0,'这门课程将会带领你进一步的学会js语言编程','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('LOL初级教学',6,6,0,'这门课程将会带领你初步的学会LOL','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('LOL中级教学',6,6,0,'这门课程将会带领你进一步的学会LOL','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('英语初级教学',7,7,0,'这门课程将会带领你初步的学会英语','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('英语中级教学',7,7,0,'这门课程将会带领你进一步的学会英语','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('交谈技巧',8,8,0,'这门课程将会带领你初步的学会交谈技巧','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('交谈技巧',8,8,0,'这门课程将会带领你进一步的学会交谈技巧','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('马云演讲',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲2',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲3',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲4',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲5',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲6',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲7',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲8',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲9',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲10',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲11',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲12',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲13',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲14',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲15',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲16',9,9,0,'精彩的演讲','../img/headimg/1489496618068.jpg','0');
alter table course 
	add constraint cs_class_id foreign key(class_id) references class_category(class_id);
	
--课时 

--5课时 
>>>>>>> branch 'master' of git@github.com:18397737982/Education.git
create table class_hour(
	class_hour_id int primary key auto_increment,
	course_id int,
	type int , 
	title varchar(50),
	introduction varchar(200),
	courseseq int ,
	content varchar(2000)	
);

	select * from class_hour where courseseq >= (
		select courseseq from class_hour where class_hour_id=2 GROUP BY class_hour_id
	) order by courseseq  limit 2;
insert into class_hour(course_id,type,title,introduction,courseseq,content) values(40,1,'摄影第一讲','介绍各类摄影的设备',1,'https://v.qq.com/');
insert into class_hour(course_id,type,title,introduction,courseseq,content) values(40,1,'摄影第一讲','介绍各类摄影的历史',2,'https://v.qq.com/');
insert into class_hour(course_id,type,title,introduction,courseseq,content) values(40,1,'摄影第一讲','拍摄基础',3,'https://v.qq.com/');


alter table class_hour 
	add constraint ch_course_id foreign key(course_id) references course(course_id);
	
--文件
create table files(
	files_id int primary key auto_increment,--文件id
	files_name varchar(50),--文件名
	file_content varchar(500),--文件内容
	course_id int --课程id
);
alter table files 
	add constraint fl_course_id foreign key(course_id) references course(course_id);
	
--评论
create table comment(
	comment_id int primary key auto_increment,--评论id
	comment_content varchar(500),--评论内容
	
);
--评论回复	
create table comment_detail(
	comment_id int,
	user_id int,
	rely_id int,
	content varchar(500)
	
)
alter table comment 
	add constraint cm_course_id foreign key(course_id) references course(course_id);
=======
>>>>>>> branch 'master' of git@github.com:18397737982/Education.git

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
<<<<<<< HEAD
insert into  stu_count(course_id,stu_id) values(41,1);
insert into  stu_count(course_id,stu_id) values(51,2);
insert into  stu_count(course_id,stu_id) values(1,4);
insert into  stu_count(course_id,stu_id) values(2,3);
insert into  stu_count(course_id,stu_id) values(2,2);
insert into  stu_count(course_id,stu_id) values(3,1);
insert into  stu_count(course_id,stu_id) values(4,3);
insert into  stu_count(course_id,stu_id) values(5,1);
insert into  stu_count(course_id,stu_id) values(6,1);
insert into  stu_count(course_id,stu_id) values(7,1);
insert into  stu_count(course_id,stu_id) values(8,3);
insert into  stu_count(course_id,stu_id) values(9,2);
insert into  stu_count(course_id,stu_id) values(10,4);
insert into  stu_count(course_id,stu_id) values(9,1);
insert into  stu_count(course_id,stu_id) values(10,3);
insert into  stu_count(course_id,stu_id) values(7,2);

insert into  stu_count(course_id,stu_id) values(11,4);
insert into  stu_count(course_id,stu_id) values(12,3);
insert into  stu_count(course_id,stu_id) values(12,2);
insert into  stu_count(course_id,stu_id) values(13,1);
insert into  stu_count(course_id,stu_id) values(14,3);
insert into  stu_count(course_id,stu_id) values(15,1);
insert into  stu_count(course_id,stu_id) values(16,1);
insert into  stu_count(course_id,stu_id) values(17,1);
insert into  stu_count(course_id,stu_id) values(18,3);
insert into  stu_count(course_id,stu_id) values(19,2);


alter table stu_count 
	add constraint sc_course_id foreign key(course_id) references course(course_id);

alter table stu_count 
	add constraint sc_stu_id foreign key(stu_id) references stu_user(stu_id);

--账户表
=======
--8账户表
>>>>>>> branch 'master' of git@github.com:18397737982/Education.git
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
       assess int,
       studyPeriod varchar(500),
       temp01 varchar(200),
       temp02 varchar(200)
);
<<<<<<< HEAD
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,40,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(4,40,'2017-02-23 00:00:00',1,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(5,40,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,41,'2017-02-23 00:00:00',1,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,41,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,43,'2017-02-23 00:00:00',3,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,44,'2017-02-23 00:00:00',1,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,42,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,44,'2017-02-23 00:00:00',1,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,45,'2017-02-23 00:00:00',4,'10');
drop table studyCourse;
select scid,studyCourse.user_id,studyCourse.course_id,begintime,assess,studyPeriod from studyCourse 
		inner join userInfo
		on userInfo.user_id=studyCourse.user_id
		inner join course
		on course.course_id=studyCourse.course_id
		where studyCourse.user_id=2;
		
		select c.*,begintime from course c,studyCourse s 
  		where c.course_id=s.course_id  and c.course_id in
		(select course_id from studyCourse where user_id=2) order by begintime desc limit 2,2;
=======

--11在教课程表
create table teachCourse(
	tcid int primary key auto_increment,
	user_id int,
	course_id int,
	begintime date,
	assess int ,
    temp01 varchar(200)
);
>>>>>>> branch 'master' of git@github.com:18397737982/Education.git

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

<<<<<<< HEAD
select sc.* ,c.*,u.user_id,u.user_name,u.pic from studyCourse sc,Course c,UserInfo u 
			where sc.course_id=40
				and sc.user_id=u.user_id 
				and sc.course_id=c.course_id
				ORDER BY sc.begintime DESC

=======

		
>>>>>>> branch 'master' of git@github.com:18397737982/Education.git
