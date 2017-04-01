create database mydate;
--1管理员表
create table admin(
	admin_id int primary key auto_increment,
	admin_name varchar(50),
	admin_password varchar(50),
	email varchar(20)
);

select * from joingroup  where gid=1 order by jid desc
select * from cgroup where groupname='super';
drop table admin;
select * from admin;
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
	status int,
	user_category varchar(10),
	tel varchar(11),
	qq   varchar(11),
	time date, 
	temp02 varchar(200),
    temp03 varchar(200)
);
drop table userInfo;
select * from userInfo;
alter table userInfo modify column pic varchar(100);
update userInfo set pic='../img/headimg/1489496618068.jpg' where user_id=1;
select *from userInfo;
--3课程类别
create table class_category(
	class_id int primary key auto_increment,
	class_categorys varchar(50),
	temp01 varchar(200) 
);

delete from userInfo where user_id= 5;
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
	price numeric(8,2),
	status int
);
select *from course;
select *from course where course_name like '%摄影%' or course_description like '%摄影%' or courseting like '%摄影%' ;
select course_id,course_name,c.user_id,class_id,course_view,course_description,coursephoto,price,u.user_id,u.user_name from course c , userInfo u where c.user_id=u.user_id and c.class_id=1 ORDER BY course_view DESC
=======
select * from class_hour;
select * from userInfo;
alter table course alter column status set default 0;
drop table course;

select * from course where user_id=2;
select c.*,(select count(1) from teachCourse where user_id=2)
		memberCount,u.*,
		(select avg(assess) from teachCourse where course_id = c.course_id) assessAvg
		from teachCourse t
		inner join userInfo u
		on u.user_id=t.user_id
		inner join course c
		on c.course_id=t.course_id
		where t.user_id=2

		select c.*,(select count(1) from teachCourse where user_id=2)
		memberCount,u.*,
		(select avg(assess) from teachCourse where course_id = c.course_id) assessAvg
		from teachCourse t
		inner join userInfo u
		on u.user_id=t.user_id
		inner join course c
		on c.course_id=t.course_id
		where t.user_id=2 and c.status=1
select * from course;		
select course_id,course_name,c.user_id,class_id,course_view,course_description,coursephoto,price,u.user_id,u.user_name from course c , userInfo u where c.user_id=u.user_id and c.class_id=1 ORDER BY course_view DESC
=======
>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git
>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git

select *from course;
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('java初级教学',1,5,0,'这门课程将会带领你初步的学会java语言编程','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('摄影初级教学',1,1,0,'这门课程将会带领你初步的学会摄影初级','../img/headimg/1489496618068.jpg','21.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('摄影中级教学',1,1,0,'这门课程将会带领你中步的学会摄影初级','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('设计图初级教学',1,2,0,'这门课程将会带领你初步的学会设计图初级','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('设计图中级教学',1,2,0,'这门课程将会带领你进一步的学会设计图初级','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('吉他初级教学',1,3,0,'这门课程将会带领你初步的学会吉他','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('吉他初级教学',1,3,0,'这门课程将会带领你进一步步的学会吉他','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('篮球初级教学',1,4,0,'这门课程将会带领你初步的学会篮球','../img/headimg/1489496618068.jpg','23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('篮球中级教学',1,4,0,'这门课程将会带领你进一步的学会java语言编程','../img/headimg/1489496618068.jpg','43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('js初级教学',1,5,0,'这门课程将会带领你初步的学会js语言编程','../img/headimg/1489496618068.jpg','23.88');
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
		select courseseq from class_hour 
			where class_hour_id=4 GROUP BY class_hour_id
	) and course_id=73 order by courseseq  limit 2;
insert into class_hour(course_id,type,title,introduction,courseseq,content) values(40,1,'摄影第一讲','介绍各类摄影的设备',1,'http://tb-video.bdstatic.com/tieba-smallvideo/1252235_a05f804362182e822679d64a34a27beb.mp4');
insert into class_hour(course_id,type,title,introduction,courseseq,content) values(40,1,'摄影第2讲','介绍各类摄影的历史',2,'http://tb-video.bdstatic.com/tieba-smallvideo/1252235_99b72d83e822d2f38b5b3820ea1097aa.mp4');
insert into class_hour(course_id,type,title,introduction,courseseq,content) values(40,1,'摄影第3讲','拍摄基础',3,'http://tb-video.bdstatic.com/tieba-smallvideo/337_6f80ee8c53335a8b754f6d0c1400ae99.mp4');
commit;
select * from class_hour;
alter table class_hour 
	add constraint ch_course_id foreign key(course_id) references course(course_id);
select *from course;
select * from class_category;
--文件
create table files(
	files_id int primary key auto_increment,--文件id
	files_name varchar(50),--文件名
	file_content varchar(500),--文件内容
	course_id int --课程id
);
alter table files 
	add constraint fl_course_id foreign key(course_id) references course(course_id);
	


--评论回复	
create table comment_detail(
	comment_id int,
	user_id int,
	rely_id int,
	content varchar(500)
	
)


alter table comment 
	add constraint cm_course_id foreign key(course_id) references course(course_id);


--6笔记
create table notes(
	notes_id int primary key auto_increment,
	notes_content varchar(500),
	class_hour_id int,
	user_id int,
	comment_time datetime
);
drop table notes;
select *from notes n	ORDER BY n.comment_time DESC

select *from notes where class_hour_id in(
	select class_hour_id from class_hour where course_id=40
);


insert into notes(notes_content,class_hour_id,user_id,comment_time) values('哎呀我擦',3,1,'2017-02-23 00:00:00');
--7课程学习总数(统计某课程被加入关注的总数)
create table stu_count(
	user_count_id int primary key auto_increment,
	course_id int,
	stu_id int
);
);
--
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
<<<<<<< HEAD

--账户表
<<<<<<< HEAD
=======
>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git

=======
=======
>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git
--8账户表
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git
=======
drop table account;
 学生id  账户余额  

select * from accountnotes where user_id=2 and money<0;
delete from accountnotes;

insert into account(user_id,balance) values(2,100);
insert into accountnotes(user_id,money,times) value(2,-100,'2017-02-23');
select count(balance) from account where user_id=2;
commit

>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git
create table account(
	user_id int,
	balance decimal
);

create table accountnotes(
	user_id int,
	money decimal,
	payment varchar(50),
	times  date
); 



-----------------9.课程评价表
create table courseAssess(
       caid int primary key auto_increment,
       user_id int, 
       class_hour_id int, 
       content varchar(500),
       time date,
       readstatus int, 
       temp03 varchar(200)
); 
select ca.*,u.user_id,u.user_name,u.pic,ch.title from courseAssess ca,userInfo u,class_hour ch 
	where ca.class_hour_id in
	( select chh.class_hour_id from class_hour chh where chh.course_id=40 )
	and ca.user_id=u.user_id 
	and ch.class_hour_id=ca.class_hour_id
	limit 0,10

select *from courseAssess;
select ca.*,u.user_id,u.user_name,u.pic from courseAssess ca,userInfo u where class_hour_id=2 and ca.user_id=u.user_id limit 0,10
insert into courseAssess(user_id,class_hour_id,content,time,readstatus) values(2,2,'22还不错','2017-02-23 00:00:00',0);
insert into courseAssess(user_id,class_hour_id,content,time,readstatus) values(5,2,'555还hvv不sd错31','2017-02-23 00:00:00',0);
insert into courseAssess(user_id,class_hour_id,content,time,readstatus) values(9,2,'99还f不vvvdg错32','2017-02-23 00:00:00',0);
insert into courseAssess(user_id,class_hour_id,content,time,readstatus) values(8,2,'88还不jhbw错33','2017-02-23 00:00:00',0);

select *from courseAssess where class_hour_id=2;
--10学习课程表  assess 参加学习后可以评价星级
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
<<<<<<< HEAD


select * from studyCourse;
delete from studyCourse;
=======
drop table studyCourse;
select * from teachCourse where user_id=8;
select * from course;
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(1,1,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(2,2,'2017-02-23 00:00:00',1,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(5,3,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,4,'2017-02-23 00:00:00',1,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,5,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,6,'2017-02-23 00:00:00',3,'10');
update studyCourse set assess=5 where user_id=1 and course_id=40
select *from studyCourse where user_id=1 and course_id=40;
select *from userInfo where user_id in(
	select user_id from studyCourse where course_id=40
)
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(1,40,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(4,40,'2017-02-23 00:00:00',1,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(5,40,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,41,'2017-02-23 00:00:00',1,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,41,'2017-02-23 00:00:00',2,'10');
insert into studyCourse(user_id,course_id,begintime,assess,studyPeriod) values(3,43,'2017-02-23 00:00:00',3,'10');
>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git
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

--11在教课程表
create table teachCourse(
	tcid int primary key auto_increment,
	user_id int,
	course_id int,
	begintime datetime,
	assess int ,
    temp01 varchar(200)
);
select * from teachCourse;
drop table teachCourse;
insert into teachCourse(user_id,course_id,begintime,assess,temp01) values(2,3,4,5,null)
drop table teachCourse;
	select c.*,(select count(1) from teachCourse where course_id = c.course_id )
		memberCount,u.*,
		(select avg(assess) from teachCourse where course_id = c.course_id) assessAvg
		from teachCourse t
		inner join userInfo u
		on u.user_id=t.user_id
		inner join course c
		on c.course_id=t.course_id
		where t.user_id=8
select c.*,(select count(1) from teachCourse where user_id=8) memberCount,u.*, (select avg(assess) from teachCourse where course_id = c.course_id) assessAvg from teachCourse t inner join userInfo u on u.user_id=t.user_id inner join course c on c.course_id=t.course_id where t.user_id=8 and c.status=1 
update course set status=1 where user_id=1;
select * from teachCourse;
select * from course;
commit;
select s.*,(select count(1) from studyCourse where course_id = s.course_id ) memberCount, (select avg(assess) from studyCourse where course_id = s.course_id) assessAvg, (select count(*) from class_hour ch where ch.course_id=s.course_id )totalCm, (select studyPeriod from studyCourse sc where sc.user_id=8 and sc.course_id=s.course_id)studyPeriod from course s left join userInfo u on s.user_id=u.user_id left join class_category cl on cl.class_id=s.class_id where s.course_id in(select course_id from studyCourse where user_id =8) 
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
select * from attention;
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
       answertime datetime,
       temp01 varchar(200)
);
--------------------16.课程提问表
create table courseQuestion(
       cqid int primary key auto_increment,  
       user_id int, 
       class_hour_id int ,
       cqcontent varchar(500),
       cqtime datetime,
       cqview int ,
       qreadstatus int,
       temp03 varchar(200)
);
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git
--小组表
select cq.*,user_name,u.pic from courseQuestion cq,userInfo u
		where (cq.class_hour_id in(
		select chh.class_hour_id from class_hour chh where chh.course_id=40
	))and  cq.user_id=u.user_id 
	ORDER BY cq.cqtime DESC limit 0,5 
 
drop table courseQuestion;
select *from courseQuestion;
insert into courseQuestion(user_id,class_hour_id,cqcontent,cqtime,cqview,qreadstatus) values();
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
<<<<<<< HEAD
	gid int primary key auto_increment, 
	groupname varchar(100),
	pic varchar(100),
	introduction varchar(500),
	user_name varchar(50),
	createtime date	
=======
	git int primary key auto_increment, 
	groupname varchar(100),
	pic varchar(100),
	cdate date
	
)
-----------------14.小组表
create table joingroup(
       git int,
       user_id int,    
>>>>>>> branch 'master' of ssh://git@github.com/18397737982/Education.git
);
insert into cgroup(groupname,pic,introduction,createtime,user_name) value('strong','../img/headimg/148949695060214942.jpg','strong 是一个强大小组','2017-02-23 00:00:00','t');
insert into cgroup(groupname,pic,introduction,createtime,user_name) value('super','../img/headimg/148949695060214942.jpg','strong 是一个强大小组','2017-02-23 00:00:00','t');

select * from userInfo;
delete from joingroup
drop table cgroup;
-----------------14.小组表

create table cgroup(
	gid int primary key auto_increment, 
	groupname varchar(100),
	pic varchar(100),
	introduction varchar(500),
	user_name varchar(50),
	createtime date	
);
create table joingroup(
	   jid int primary key auto_increment,
       gid int,          
       user_id int
);
drop table joingroup;

insert into joingroup(gid,user_id) values(1,2);
insert into joingroup(gid,user_id) values(1,1);

select * from class_category;

insert into cgroup(groupname,user_id,createtime,groupnumber,peoplecount,pic,introduction,class_id) values('a',2,'2017-03-04 12:00:00','343',31,' ',null,3);
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
       smtime datetime,
       sendType int ,
       sreadstatus int,
       temp03 varchar(200)
);
alter table selfMessage modify column smtime datetime;
select * from selfMessage;
select * from userInfo where user_id in
(select attention from attention where user_id=2)

select sc.* ,c.*,u.user_id,u.user_name,u.pic from studyCourse sc,Course c,UserInfo u 
			where sc.course_id=40
				and sc.user_id=u.user_id 
				and sc.course_id=c.course_id
				ORDER BY sc.begintime DESC
select user_name,pic,scontent from selfMessage s
		inner join userInfo u
		on s.sendman=u.user_id
		where s.sendman in (select sendman from selfMessage where receiveman=2)
select * from selfMessage;

