drop table if exists teach;
drop table if exists take;

drop table if exists student;
create table student
(
	sno integer,
	sname varchar(10),
	age integer
);


drop table if exists courses;
create table courses
(
	cno varchar(5),
	title varchar(10),
	credits integer
);

drop table if exists professor;
create table professor
(
	fname varchar(10),
	lname varchar(10),
	dept varchar(10),
	uni_rank integer,
	salary integer,
	age integer,
	constraint pk_professor primary key (fname, lname)
);

create table take
(
	sno integer,
	cno varchar(5),
	grade integer
);

create table teach
(
	fname varchar(10),
	lname varchar(10),
	cno varchar(5),
	constraint fk_professor_teach foreign key (fname, lname) references professor(fname, lname)
);

insert into student
values
	(1, 'AARON', 20);
insert into student
values
	(2, 'CHUCK', 21);
insert into student
values
	(3, 'DOUG', 20);
insert into student
values
	(4, 'MAGGIE', 19);
insert into student
values
	(5, 'STEVE', 22);
insert into student
values
	(6, 'JING', 18);
insert into student
values
	(7, 'BRIAN', 21);
insert into student
values
	(8, 'KAY', 20);
insert into student
values
	(9, 'GILLIAN', 20);
insert into student
values
	(10, 'CHAD', 21);

insert into courses
values
	('CS112', 'PHYSICS', 4);
insert into courses
values
	('CS113', 'CALCULUS', 4);
insert into courses
values
	('CS114', 'HISTORY', 3);
insert into courses
values
	('CS115', 'SCIENCE', 3);
insert into courses
values
	('CS116', 'MATH', 4);

insert into professor
values
	('DAVID', 'CHOI', 'SCIENCE', 2, 400, 45);
insert into professor
values
	('STEEL', 'GUNN', 'HISTORY', 3, 300, 60);
insert into professor
values
	('SHERYL', 'CROW', 'HISTORY', 1, 700, 60);
insert into professor
values
	('JOHN', 'MAYER', 'MATH', 1, 400, 55);
insert into professor
values
	('POMEL', 'CROW', 'SCIENCE', 4, 500, 65);
insert into professor
values
	('JANE', 'FEUER', 'MATH', 2, 400, 40);
insert into professor
values
	('DAVID', 'FEUER', 'MATH', 3, 400, 61);
insert into professor
values
	('BRIAN', 'MAY', 'MATH', 1, 500, 62);
insert into professor
values
	('WALTER', 'WHITE', 'MATH', 2, 550, 65);
insert into professor
values
	('MARTIN', 'CROW', 'MATH', 2, 650, 72);
insert into professor
values
	('DAVID', 'GUNN', 'SCIENCE', 3, 600, 61);
insert into professor
values
	('JANE', 'AUSTIN', 'SCIENCE', 2, 720, 77);
insert into professor
values
	('JOHN', 'LENNON', 'SCIENCE', 1, 650, 59);

insert into take
values
	(1, 'CS112', 78);
insert into take
values
	(1, 'CS115', 45);
insert into take
values
	(1, 'CS116', 76);
insert into take
values
	(1, 'CS113', 81);
insert into take
values
	(1, 'CS114', 65);
insert into take
values
	(2, 'CS112', 91);
insert into take
values
	(3, 'CS112', 83);
insert into take
values
	(3, 'CS114', 66);
insert into take
values
	(4, 'CS112', 78);
insert into take
values
	(4, 'CS113', 78);
insert into take
values
	(5, 'CS113', 83);
insert into take
values
	(6, 'CS113', 76);
insert into take
values
	(6, 'CS114', 67);

insert into teach
values
	('DAVID', 'CHOI', 'CS112');
insert into teach
values
	('DAVID', 'CHOI', 'CS112');
insert into teach
values
	('DAVID', 'CHOI', 'CS112');
insert into teach
values
	('POMEL', 'CROW', 'CS113');
insert into teach
values
	('JOHN', 'MAYER', 'CS112');
insert into teach
values
	('JOHN', 'MAYER', 'CS114');