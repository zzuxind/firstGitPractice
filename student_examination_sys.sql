create database student_examination_sys;

CREATE TABLE student(
`id`  int NOT NULL ,
`name`  varchar(255) NULL ,
`age`  int NULL ,
`sex`  varchar(255) NULL 
);

insert into student values ('001','张三','18','男'),('002','李四','20','女');

CREATE TABLE subject(
`id`  int NOT NULL ,
`subject`  varchar(255) NULL ,
`teacher`  varchar(255) NULL ,
`sex`  text(255) NULL 
);

insert into student values ('1001','语文','王老师','本次考试比较简单'),('1002','数学','刘老师','本次考试比较难');

CREATE TABLE score(
`id`  int NOT NULL ,
`student_id`  int NULL ,
`subject_id`  int NULL ,
`score`  int NULL 
);
insert into student values ('1','001','1001','80'),('2','002','1002','60'),('3','001','1001','70'),('4','002','1002','60.5');

