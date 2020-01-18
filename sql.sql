alter table hotel drop primary key cascade;

drop table hotel purge;
select * from product

create table hotel(
	room_num number(5) primary key ,
	price number(20),
	res_sta char(1) default 'x',
	max_people number(5),
	image varchar2(20),
	content varchar2(50),
	room_class char(1),
	last_chk_out date default sysdate
);

delete from hotel where room_num=201

select *from hotel;

insert into hotel values(201,600000,'x',5,'room1.png','편해요','A',sysdate);
insert into hotel values(202,500000,'x',7,'room2.png','편해요','B',sysdate);
insert into hotel values(203,400000,'x',4,'room3.png','편해요','C',sysdate);
insert into hotel values(204,300000,'x',2,'room4.png','편해요','D',sysdate);
insert into hotel values(205,200000,'x',5,'room5.png','편해요','E',sysdate);
insert into hotel values(206,100000,'x',7,'room6.png','편해요','F',sysdate);
insert into hotel values(207,600000,'x',5,'room7.png','편해요','A',sysdate);
insert into hotel values(208,500000,'x',7,'room8.png','편해요','B',sysdate);
insert into hotel values(209,400000,'x',4,'room9.png','편해요','C',sysdate);
insert into hotel values(210,300000,'x',2,'room10.png','편해요','D',sysdate);
insert into hotel values(211,200000,'x',5,'room11.png','편해요','E',sysdate);
insert into hotel values(212,100000,'x',7,'room12.png','편해요','F',sysdate);
insert into hotel values(213,600000,'x',5,'room13.png','편해요','A',sysdate);
insert into hotel values(214,500000,'x',7,'room14.png','편해요','B',sysdate);
insert into hotel values(215,400000,'x',5,'room15.png','편해요','C',sysdate);
insert into hotel values(216,300000,'x',7,'room16.png','편해요','D',sysdate);

 

select * from hotel where last_chk_out<=to_date('2019/11/9 15:30:00','YYYY-MM-DD HH24:MI:SS') and room_class='A' and max_people>=5 order by room_num asc

select * from hotel

alter table member drop primary key cascade;
drop table member purge;

 
create table customer(
	id varchar2(20) primary key,
	pwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(40),
	email varchar2(40)
);

 

select * from customer;

insert into customer values('id01','1234','김하나','010-1111-1111','one@naver.com');
insert into customer values('id012','1234','김하나','010-1111-1111','one@naver.com');

 

alter table reservation drop primary key cascade;
drop table reservation purge;

create table reservation(
	res_num number(5) primary key,
	name varchar2(20),
	res_date date default sysdate,
	chk_in date,
	chk_out date,
	package char(1),
	people_num number(3),
	room_num number(3),
	room_class char(1),
	price number(20),
	email varchar2(40),
	phone varchar2(40),
	id varchar2(20) 
);

select *from reservation

delete from reservation where res_num=1

alter table reservation add constraint reservation_rn_fk foreign key (room_num) 
references hotel(room_num) on delete cascade ;
alter table reservation add constraint reservation_id_fk foreign key (id)
references member(id) on delete cascade;

drop sequence res_seq;
create sequence res_seq start with 1 increment by 1;

insert into reservation values(res_seq.nextval,'홍길동',sysdate,(to_date('2020/1/10 15:30:00','YYYY-MM-DD HH24:MI:SS')),(to_date('2020/1/11 15:30:00','YYYY-MM-DD HH24:MI:SS'))
,'A',3,201,'A',600000,'asdf@asdf','010-1234-1234','id01');
insert into reservation values(res_seq.nextval,'홍길서',sysdate,(to_date('2020/1/10 15:30:00','YYYY-MM-DD HH24:MI:SS')),(to_date('2020/1/11 15:30:00','YYYY-MM-DD HH24:MI:SS'))
,'A',3,207,'A',600000,'asdf@asdf','010-1234-1234','id02');
insert into reservation values(res_seq.nextval,'홍길남',sysdate,(to_date('2020/1/10 15:30:00','YYYY-MM-DD HH24:MI:SS')),(to_date('2020/1/11 15:30:00','YYYY-MM-DD HH24:MI:SS'))
,'A',3,213,'A',600000,'asdf@asdf','010-1234-1234','id03');

insert into reservation values(res_seq.nextval,'홍길동',sysdate,(to_date('2020/1/10 15:30:00','YYYY-MM-DD HH24:MI:SS')),(to_date('2020/1/11 15:30:00','YYYY-MM-DD HH24:MI:SS'))
,'A',3,202,'A',300000,'asdf@asdf','010-1234-1234','id01');

insert into reservation values(res_seq.nextval,'홍길동',sysdate,(to_date('2019/11/14 15:30:00','YYYY-MM-DD HH24:MI:SS')),(to_date('2019/11/15 15:30:00','YYYY-MM-DD HH24:MI:SS'))
,'A',3,202,'A',300000,'asdf@asdf','010-1234-1234','id01');
insert into reservation values(res_seq.nextval,'홍길동',sysdate,(to_date('2019/11/14 15:30:00','YYYY-MM-DD HH24:MI:SS')),(to_date('2019/11/15 15:30:00','YYYY-MM-DD HH24:MI:SS'))
,'A',3,202,'A',300000,'asdf@asdf','010-1234-1234','id01');
insert into reservation values(res_seq.nextval,'홍길동',sysdate,(to_date('2019/11/14 15:30:00','YYYY-MM-DD HH24:MI:SS')),(to_date('2019/11/15 15:30:00','YYYY-MM-DD HH24:MI:SS'))
,'A',3,202,'A',300000,'asdf@asdf','010-1234-1234','id01');
insert into reservation values(res_seq.nextval,'홍길동',sysdate,(to_date('2019/11/14 15:30:00','YYYY-MM-DD HH24:MI:SS')),(to_date('2019/11/15 15:30:00','YYYY-MM-DD HH24:MI:SS'))
,'A',3,202,'A',300000,'asdf@asdf','010-1234-1234','id01'); 

select * from reservation where (chk_in between (to_date('2019/11/14 15:30:00','YYYY-MM-DD HH24:MI:SS')) and (to_date('2019/11/15 15:30:00','YYYY-MM-DD HH24:MI:SS')) and chk_out between (to_date('2019/11/14 15:30:00','YYYY-MM-DD HH24:MI:SS')) and (to_date('2019/11/15 15:30:00','YYYY-MM-DD HH24:MI:SS')) or
(to_date('2019/11/14 15:30:00','YYYY-MM-DD HH24:MI:SS')) between chk_in and chk_out and 
(to_date('2019/11/15 15:30:00','YYYY-MM-DD HH24:MI:SS')) between chk_in and chk_out );

select hotel.room_num from hotel,reservation where reservation.room_num=hotel.room_num
select distinct room_num from reservation
select * from reservation; 

alter table qna drop primary key cascade;
drop table qna purge; 

create table qna(
	qna_num varchar2(20),
	subject varchar2(20),
	content varchar2(200),
	reply varchar2(40),
	id varchar2(40),
	rep varchar2(40) default 'x',
	indate date default sysdate,
	qna_pwd varchar2(40)
);
select * from qna
alter table qna add constraint qna_id_fk foreign key (id) 
references member(id) on delete cascade ;

drop sequence qna_seq;
create sequence qna_seq start with 1 increment by 1; 

insert into qna(qna_num,subject,content,reply,id,rep,qna_pwd)
values(qna_seq.nextval,'질문이요','답변해주세요','답변해드렷어요','id01','o','1234');
insert into qna(qna_num,subject,content,id,rep,qna_pwd)
values(qna_seq.nextval,'질문이요2','답변해주세요2','id01','x','1234'); 

select * from qna;

select * from (select * from(select rownum row_num, hotel.* from hotel order by room_num desc) where row_num>=1) where row_num<=2

alter table admin drop primary key cascade;
drop table admin purge; 

create table admin(
	id varchar2(20) primary key,
	pwd varchar2(20)
); 

insert into admin values('id01','1234'); 
create table res_room(
	

);