--Login Table
create database BIOS1
create table AdminLogin(aid varchar(20), apass varchar(20),type varchar(20))
create table EmployeeLogin(eid varchar(20), epass varchar(20),type varchar(20))
create table StudentLogin(sid varchar(20), spass varchar(20),type varchar(20))
create table EmployeeDetail(EmployeeId int IDENTITY(1,1) NOT NULL ,firstname varchar(200) not null, surname varchar(200) not null, email varchar(100) not null, dob varchar(20) not null, dept varchar(100) not null,gender varchar(5) not null, desig varchar(20)not null, phone varchar(100) not null, addr varchar(200) not null, bs int, hra int, da int, sa int, pf int,photo varchar(100) not null)
create table StudentDetail(StudentId int IDENTITY(1,1) NOT NULL,firstname varchar(200), surname varchar(200), addr varchar(100), dob varchar(20), gender varchar(5), phone varchar(100), email varchar (200), branch varchar(100),semester varchar(100) ,img varchar(100))
create table AdminNotice(NoticeId int IDENTITY(1,1) not null,Dept varchar(100), desig varchar(100),description varchar(500) not null, DateOfPublish varchar(50),TimeOfPublish varchar(100))
create table Assignment(AssignmentId int IDENTITY(1,1) not null, faculty varchar(100), Branch varchar(100), semester varchar(100), subject varchar(100), Assignment varchar(100), PublishDate varchar(100), DueDate varchar(100))
create table EmployeeNotice(NoticeId int IDENTITY(1,1) not null, faculty varchar(100),branch varchar(100),semester varchar(100),descr varchar(200),DateofP varchar(100),TimeofPu varchar(100))
create table Branch(branch varchar(100))
create table Subject(subject varchar(100))
create table semester(semester varchar(100))

insert into AdminLogin values('A001','admin1','admin')
insert into AdminLogin values('A002','admin2','admin')

insert into Branch values ('CSE')
insert into Branch values ('IT')

insert into semester values ('I')
insert into semester values ('II')

insert into Subject values ('CSE I DELD')
insert into Subject values ('CSE II CHEM')
insert into Subject values ('IT I BE')
insert into Subject values ('IT II C++')

insert into EmployeeLogin values('E001','employee1','employee')
insert into EmployeeLogin values('E002','employee2','employee')
insert into EmployeeLogin values('E003','employee3','employee')
insert into EmployeeLogin values('E004','employee4','employee')
insert into EmployeeLogin values('E005','employee5','employee')

insert into StudentLogin values('S201801','2018stud1','student')
insert into StudentLogin values('S201802','2018stud2','student') 
insert into StudentLogin values('S201803','2018stud3','student')
insert into StudentLogin values('S201804','2018stud4','student')
insert into StudentLogin values('S201805','2018stud5','student')
insert into StudentLogin values('S201806','2018stud6','student')

select * from EmployeeLogin
select * from AdminLogin,EmployeeLogin,StudentLogin where AdminLogin.aid='A001'
where ((aid ='A002' and apass='admin1') or (eid='E002' and epass='employee2') or (sid='S003' and spass= '2018stud10' ))

select * from StudentDetail
create  table subject(subjectid varchar(20) not null,subjectname varchar(20) not null,semester varchar(20) not null,branch varchar(20) not null)

insert into subject values('301','M3','III','COMPUTER')
insert into subject values('302','C','III','COMPUTER')
insert into subject values('303','CS','III','COMPUTER')
insert into subject values('304','CCWT','III','COMPUTER')
insert into subject values('305','DELD','III','COMPUTER')

create table teaches(teacher_teacherid varchar(20) not null,idsubject varchar(20) not null)

insert into teaches values(21,301)
insert into teaches values(22,302)
insert into teaches values(21,303)
insert into teaches values(23,304)
insert into teaches values(24,305)

create table student(idstudent varchar(20) not null,student varchar(20) not null,dept varchar(20) not null,semester varchar(20) not null,subject_subjectid varchar(20) not null)
select * from EmployeeDetail
 
create table attendence(date1 varchar(20) not null,status varchar(20) not null,student_idstudent varchar(20) not null,student_subject_subjectid varchar(20) not null)