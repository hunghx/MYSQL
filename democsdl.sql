-- tạo csdl 
create database demoquanlysv;

-- xoá csdl
-- drop database demoquanlysv;

-- chọn csdl muốn tạo bảng 
use demoquanlysv;

-- tạo 1 bảng class
create table Class(
	classId int primary key auto_increment ,
    classname varchar(255) unique not null,
    total int not null
);
create table Student(
studentId int primary key auto_increment,
studentName varchar(255) not null,
birthday date,
sex tinyint default(0),
address varchar(255)

);
-- xoá bảng
-- drop table `subject`
create table `Subject`(
subjectId int primary key auto_increment,
`name` varchar(255) not null,
factor float default(1) check(factor>=1),
`status` tinyint
);

insert into `subject` values(null,"abxyz",2,1);
 
-- nhập dữu liệu cho bảng 
insert into class(classname,total) values
("JAVA-13",15),
("JAVA-14",19),
("JAVA-15",21); 

-- chỉnh sửa dữ liệu 1,3,5,6

update class set total = 100  where  classid  in (1,3,5,6);
-- xoá dữ liệu

delete from class where classid=3;
-- xoá toàn bộ bản ghi

delete from class;

-- reset dư liệu
truncate class;

-- truy vấn đơn giản 1 bảng
SELECT * FROM class
