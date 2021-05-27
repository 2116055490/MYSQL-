create database school; -- 创建数据库

show databases; -- 显示数据库

use school;  -- 使用数据库
-- 创建学生信息表
create table studentInfo (
	id int primary key,  -- 主键
	`name` varchar(10),
	age int,
	sex char,
	province char
);

show tables; -- 显示表格

desc studentInfo; -- 描述表格具体信息


create table studentInfo2 (
	id int,  -- 主键
	name varchar(10),
	age int,
	sex char,
	province char,
	primary key(id , `name`)   -- 联合主键
);
-- 创建表格
create table book (
	id int auto_increment primary key,  -- 自动增长id
	name varchar(20),
	author char(4)
);
alter table book rename books ; -- 修改表结构 改名为books

-- 向表格中插入数据
insert into books(`name` , author) values ('钢铁是怎样练成的' , '保尔');
insert into books(`name` , author) values ('坏蛋是怎样练成的' , '保尔');
insert into books(`name` , author) values ('人渣是怎样练成的' , '保尔');
insert into books(`name` , author) values ('渣男是怎样练成的' , '保尔');

select * from books; -- 查询表格中的全部数据

create table address1 (
	province varchar(10) ,
	shi varchar(10),
	xian varchar(10),
	cun varchar(10),
	constraint waijian foreign key(province) references studentInfo(province)  -- 外键
);
-- studentInfo 主表  父表  address1 从表 子表5

use school;
create table student (
	`name` varchar(10) ,
	sex char default '男' ,
	province varchar(10) default '河南' ,
	age int 
	
);

insert into student ( `name` , age ) values ( "小爱" , 18 );
insert into student ( `name` , age ) values ( "小冰" , 19 );

select * from student;

insert into student(`name` , sex , province , age ) values ("小祺" , '女' , '广东' , 20 ); 
insert into student values ("siri" , '女' , 'califlina' , 20 );

desc student ;

alter table student change `name` `name` varchar(10) not null unique ;  -- 修改现有表格的属性

alter table student rename to students;  -- 修改表格的名字  重命名
desc students;
alter table students modify `name` varchar(20) ;  -- 修改表格的字段属性
alter table students change sex xingbie varchar(5) ;  -- 改变字段的名称
alter table students add grade varchar(4);  -- 修改表格 添加一个字段
alter table students modify age int(11) after grade ; -- 修改年龄字段顺序 在成绩的后面
































