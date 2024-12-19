  create database libraray_system;
  use library_system;
  
  create table std(
  id int primary key identity(1,1),
  name varchar(50));
  
  create table library(
  id int primary key identity(1,1),
  name varchar(50),
  location varchar(50));

create table book(
  id int primary key identity(1,1),
  name varchar(50),
  sid int foreign key references std(id),
  lid int foreign key references library(id));

insert into std (name) values ("user1");
insert into library (name,location) values ("lib1","loc1");
insert into book (name,sid,lid) values ("book1",1,1);

select * from std;
select * from library;
select * from book;