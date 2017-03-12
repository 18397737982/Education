create database mydate;
--管理员表
create table admin(
	admin_id int primary key auto_increment,
	admin_password varchar(50),
	email varchar2(20), 
	temp01 varchar2(200),--备用字段
    temp02 varchar2(200)--备用字段
);
drop table admin;
--学员表
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
insert into
		userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03)
		values('a','a',5,'a',null,'c','s','d','f',2,'g','g','d',null,null,null);
select * from userInfo;

insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03)
		values('t','唐t',23,'男',null,'t','s','d','tang430524@163.com',0,'学生','13212680558','1937681802',null,null,null);
insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03)
		values('ty1','唐',23,'男',null,'a','s','d','tang430524@163.com',0,'老师','13212680558','1937681802',null,null,null);
insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03)
		values('ty2','唐',23,'男',null,'a','s','d','tang430524@163.com',0,'老师','13212680558','1937681802',null,null,null);
insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03)
		values('ty3','唐',23,'男',null,'a','s','d','tang430524@163.com',0,'老师','13212680558','1937681802',null,null,null);
insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03)
		values('ty4','唐',23,'男',null,'a','s','d','tang430524@163.com',0,'老师','13212680558','1937681802',null,null,null);
insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03) values('ty5','唐',23,'男',null,'a','s','d','tang430524@163.com',0,'老师','13212680558','1937681802',null,null,null);

insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03) values('ty6','唐',23,'男',null,'a','s','d','tang430524@163.com',0,'老师','13212680558','1937681802',null,null,null);

insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03) values('ty7','唐',23,'男',null,'a','s','d','tang430524@163.com',0,'老师','13212680558','1937681802',null,null,null);

insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03) values('ty8','唐',23,'男',null,'a','s','d','tang430524@163.com',0,'老师','13212680558','1937681802',null,null,null);

insert into userInfo(user_name,realname,age,sex,pic,password,usign,introduce,email,status,user_category,tel,qq,time,temp02,temp03) values('ty9','唐',23,'男',null,'a','s','d','tang430524@163.com',0,'老师','13212680558','1937681802',null,null,null);

select *from userInfo;

--课程类别
create table class_category(
	class_id int primary key auto_increment,
	class_categorys varchar(50),
	temp01 varchar(200) 
)engine=MYISAM character set utf8;
		select course_id,course_name,c.user_id,class_id,course_view,course_description,coursephoto,price,u.user_id,u.user_name from Course c , userInfo u where c.user_id=u.user_id

insert into  class_category(class_categorys) values('摄影课堂');
insert into  class_category(class_categorys) values('创意设计');
insert into  class_category(class_categorys) values('声乐器乐');
insert into  class_category(class_categorys) values('运动健身');
insert into  class_category(class_categorys) values('IT互联网');
insert into  class_category(class_categorys) values('兴趣爱好');
insert into  class_category(class_categorys) values('语言学习');
insert into  class_category(class_categorys) values('职场技能');
insert into  class_category(class_categorys) values('公开课');
--课程
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

select course_id,course_name,c.user_id,class_id,course_view,course_description,coursephoto,price,u.user_id,u.user_name from course c , userInfo u where c.user_id=u.user_id and c.class_id=1 ORDER BY course_view DESC

select *from course;
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('java初级教学',2,5,0,'这门课程将会带领你初步的学会java语言编程',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('摄影初级教学',10,1,0,'这门课程将会带领你初步的学会摄影初级',null,'21.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('摄影中级教学',10,1,0,'这门课程将会带领你中步的学会摄影初级',null,'43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('设计图初级教学',2,2,0,'这门课程将会带领你初步的学会设计图初级',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('设计图中级教学',2,2,0,'这门课程将会带领你进一步的学会设计图初级',null,'43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('吉他初级教学',3,3,0,'这门课程将会带领你初步的学会吉他',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('吉他初级教学',3,3,0,'这门课程将会带领你进一步步的学会吉他',null,'43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('篮球初级教学',4,4,0,'这门课程将会带领你初步的学会篮球',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('篮球中级教学',4,4,0,'这门课程将会带领你进一步的学会java语言编程',null,'43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('js初级教学',5,5,0,'这门课程将会带领你初步的学会js语言编程',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('js中级教学',5,5,0,'这门课程将会带领你进一步的学会js语言编程',null,'43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('LOL初级教学',6,6,0,'这门课程将会带领你初步的学会LOL',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('LOL中级教学',6,6,0,'这门课程将会带领你进一步的学会LOL',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('英语初级教学',7,7,0,'这门课程将会带领你初步的学会英语',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('英语中级教学',7,7,0,'这门课程将会带领你进一步的学会英语',null,'43.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('交谈技巧',8,8,0,'这门课程将会带领你初步的学会交谈技巧',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('交谈技巧',8,8,0,'这门课程将会带领你进一步的学会交谈技巧',null,'23.88');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('马云演讲',9,9,0,'精彩的演讲',null,'0');
insert into course(course_name,user_id,class_id,course_view,course_description,coursephoto,price) values('雷军演讲',9,9,0,'精彩的演讲',null,'0');

alter table course 
	add constraint cs_class_id foreign key(class_id) references class_category(class_id);
	
--课时 
create table class_hour(
	class_hour_id int primary key auto_increment,
	course_id int,
	type int , 
	title varchar(50),
	introduction varchar(200),
	courseseq int ,
	content varchar(2000)	
);
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

alter table comment 
	add constraint cm_stu_id foreign key(stu_id) references stu_user(stu_id);

--笔记
create table notes(
	notes_id int primary key auto_increment,--笔记id
	notes_content varchar(500),--笔记内容
	course_id int,--课程id
	user_id int,--学者id 
	comment_time date--时间
);
alter table notes 
	add constraint nt_course_id foreign key(course_id) references course(course_id);

alter table notes 
	add constraint nt_stu_id foreign key(stu_id) references stu_user(stu_id);



--课程学习总数(统计某课程被加入关注的总数)
create table stu_count(
	user_count_id int primary key auto_increment,
	course_id int,
	stu_id int
);
insert into  stu_count(course_id,stu_id) values(1,1);
insert into  stu_count(course_id,stu_id) values(1,2);
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
 学生id  账户余额  
create table account(
	user_id int,--学员id 
	balance decimal
);
alter table account 
	add constraint ac_stu_id foreign key(stu_id) references stu_user(stu_id);
--学习课程表
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

--------------------------10.关注表（保留意见）
create table attention(
       atid  int  primary key auto_increment,  
       attention int 
                 constraint FK_userinfo_userid05 references userinfo(userid),-- 被关注的人 用户id(外键)
       userid int 
              constraint FK_userinfo_userid06 references userinfo(userid),-- 关注发起者 用户id(外键)
       sreadstatus int,--备用字段
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段 
);
--热门查询测试
select c.course_id,course_name,c.user_id,class_id,course_view,course_description,coursephoto,price,u.user_id,u.user_name from course c 
				left join (select count(1) as rang,course_id from stu_count GROUP BY course_id) s on s.course_id=c.course_id
				left join userInfo u on c.user_id=u.user_id 
				where  c.class_id=3
				ORDER BY s.rang DESC
 ;



