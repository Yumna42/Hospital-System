create database Hospital;
create table patients 
(
	patient_id int,
	patient_first_name varchar(200) NOT NULL,
	patient_last_name varchar(200) NOT NULL,
	patient_gender varchar(50),
	patient_age int,
	patient_address varchar(1000) not null,
	patient_mobile char(15)  unique ,
	patient_email varchar(100) not null unique,
	doctor_id int,
	Primary Key(patient_id),
	FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
	);
create table doctors
(
	doctor_id int,
    doctor_first_name varchar(200) NOT NULL,
	doctor_last_name varchar(200) NOT NULL,
	doctor_age int,
	doctor_experience int,
	doctor_major varchar(80),
    Primary Key(doctor_id)
);

create table rooms
(
	room_id int,
	room_number int,
	room_location varchar(200),
	nurse_id int,
    Primary Key(room_id),
	FOREIGN KEY (nurse_id) REFERENCES nurses(nurse_id)
);
create table nurses
(
	nurse_id int,
    nurse_first_name varchar(200) NOT NULL,
	nurse_last_name varchar(200) NOT NULL,
	nurse_age int,
	nurse_experience int,
    Primary Key(nurse_id)
);


insert into doctors values (2,'James','Arnold',32,6,'Orthopedic');
insert into doctors values (3,'Patricia','William',27,3,'pediatrician');
insert into doctors values (4,'Robert','Adison',38,7,'Obstetrician and Gynecologist');
insert into doctors values (5,'Christopher','Vocher',40,10,'neurologist');
insert into doctors values (6,'Jennifer','Charles',29,5,'oculist');
insert into doctors values (7,'Lisa','Matthew',48,16,'dentist');
insert into doctors values (8,'Donald','George',33,8,'Internist');
insert into doctors values (9,'Timothy','Jason',25,2,'Dermatologist');
insert into doctors values (10,'Stephen','Nicholas',23,1,'Psychologist');
insert into doctors values (11,'Anna','King',44,13,'Urologist');
insert into doctors values (12,'Jack','Raymond',47,18,'Hepatologist');
insert into doctors values (13,'Victoria','Carl',32,10,'Oncologist');
insert into doctors values (14,'Jeremy','King',38,7,'Physiotherapist');


select * from doctors;



insert into patients values (10,'Mari','Philip','Female',46,'76street',0167566811,'mariph@gmail.com',3);
insert into patients values (11,'Johnny','Zachary','Male',12,'16street',012847364,'johnny13@gmail.com',6);
insert into patients values (12,'Bradley','Walter','Male',18,'874street',012474764,'bar7@gmail.com',9);
insert into patients values (13,'Eugene','Henry','Male',27,'743street',011485893,'eug9@gmail.com',10);
insert into patients values (14,'Alexis','Aaron','Female',41,'555street',090047892,'alex245@gmail.com',11);
insert into patients values (15,'Lori','Raymond','Female',49,'129street',0038752654,'lori876@gmail.com',13);
insert into patients values (16,'Denise','Brian','Female',50,'130street',02971356896,'dene99@gmail.com',14);

select * from patients;



insert into nurses values(1,'Linda','Micheal',20,1);
insert into nurses values(2,'Elizabeth','Kenneth',24,3);
insert into nurses values(3,'Barbara','David',26,5);
insert into nurses values(4,'Susan','Kani',29,8);
insert into nurses values(5,'Sarah','Dion',30,9);
insert into nurses values(6,'Karen','Lopiz',33,11);
insert into nurses values(7,'Margaret','Anderas',38,14);
insert into nurses values(8,'Dorothy','Timothy',40,19);
insert into nurses values(9,'Ashley','Walter',35,12);
insert into nurses values(10,'Donna','Mark',42,20);

select * from nurses;


insert into rooms values(1,100,'First floor',1);
insert into rooms values(2,101,'First floor',2);
insert into rooms values(3,102,'First floor',3);
insert into rooms values(4,103,'First floor',4);
insert into rooms values(5,104,'First floor',5);
insert into rooms values(6,105,'Second floor',6);
insert into rooms values(7,106,'Second floor',7);
insert into rooms values(8,107,'Second floor',8);
insert into rooms values(9,108,'Second floor',9);
insert into rooms values(10,109,'Second floor',10);
insert into rooms values(11,111,'Third floor',1);
insert into rooms values(12,112,'Third floor',3);
insert into rooms values(13,113,'Third floor',5);
insert into rooms values(14,114,'Third floor',7);
insert into rooms values(15,115,'Third floor',9);
insert into rooms values(16,116,'Last floor',2);
insert into rooms values(17,117,'Last floor',4);
insert into rooms values(18,118,'Last floor',6);
insert into rooms values(19,119,'Last floor',8);
insert into rooms values(20,120,'Last floor',10);

select * from rooms;


select * from doctors;
select * from patients;

select * from rooms;
select * from nurses;
select doctor_age from doctors;
select doctor_major from doctors;
select doctor_first_name,doctor_last_name from doctors;
select doctor_experience from doctors;
select nurse_first_name,nurse_last_name from nurses;
select nurse_age from nurses;
select nurse_age,nurse_experience from nurses;
select patient_first_name,patient_last_name from patients;
select patient_age,patient_gender,patient_first_name from patients;
select patient_address from patients;
select patient_mobile,patient_email from patients;
select patient_mobile,patient_email,patient_last_name from patients;
select room_number from rooms;
select room_location from rooms;
select * from rooms where room_location='last floor';
select room_number,nurse_id from rooms;
select top 3 * from doctors;
select MAX(doctor_experience) from doctors;
select MIN(nurse_age) from nurses;
select * from patients where patient_first_name like'a%';
select * from nurses where nurse_last_name not like'd%';
select * from doctors where doctor_age>30;
select * from doctors where doctor_last_name='King';
select * from doctors where doctor_experience < 5;
select * from doctors where doctor_experience > 5 and doctor_age>35;
select * from doctors where doctor_age >36 and doctor_experience=7 or doctor_experience= 10;
select * from patients where patient_age between 10 AND 20;
select count(doctor_id), doctor_id
from patients
group by doctor_id;
select doctor_first_name
from doctors
where doctor_age>30
group by doctor_first_name;
select doctors.doctor_first_name , patients.patient_first_name
from doctors
right join patients on patients.doctor_id = doctors.doctor_id; 

	select doctors.doctor_id, patients.patient_first_name
from doctors
left join patients on patients.doctor_id = doctors.doctor_id; 

select * from doctors
inner join patients on patients.doctor_id = doctors.doctor_id;

select * from nurses
full outer join rooms on rooms.nurse_id = nurses.nurse_id; 

select * from nurses
left join rooms on rooms.nurse_id = nurses.nurse_id; 
insert into doctors values (16,'Lily','Lukas',27,3,'oculist');

insert into patients values (20,'Loren','Markous','Female',15,'564 street',0589732496,'loren@gmail.com',2);

insert into nurses values(13,'Emy','White',31,5); 

insert into rooms values(22,222,'ground floor',10);

insert into doctors(doctor_id,doctor_first_name,doctor_last_name,doctor_age) values (17,'Mulan','Moon',44);
UPDATE patients
SET patient_age = 22 , patient_address= '345street'
WHERE patient_id = 4;

UPDATE nurses
SET nurse_experience=2
WHERE nurse_age<22;

UPDATE doctors
SET doctor_age=25
WHERE doctor_experience<5;

UPDATE patients
set patient_address = '44 street'
where patient_address = '45 street';

UPDATE rooms
set room_location ='Forth floor'
where room_location='Last floor';

delete from doctors where doctor_first_name='Mulan';

delete from rooms where room_location='ground floor';

delete from nurses where nurse_age=20;

delete from patients where patient_id=20;

delete from doctors where doctor_first_name='Lily';




