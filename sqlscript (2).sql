REM   Script: dbms_project_bbms
REM   sql,pl/sql


create table bloodcamp( 
  camp_id varchar(5) primary key, 
  venue varchar(50) not null, 
  DOC date, 
  quantity number not null 
);

insert into bloodcamp values('C1', 'Urban Estate', '09-Aug-2021', 63 );

insert into bloodcamp values('C2', 'Model Town', '29-Sep-2021', 121 );

insert into bloodcamp values('C3', 'Aman Nagar', '30-Oct-2021', 53 );

insert into bloodcamp values('C4', 'Patiala Cantt', '09-Nov-2021', 98 );

insert into bloodcamp values('C5', 'Bajoria Road', '10-Dec-2021', 100 );

create table type_quantity( 
   camp_id varchar(5), 
   A_positive number, 
   A_negative number, 
   B_positive number, 
   B_negative number, 
   AB_positive number, 
   AB_negative number, 
   O_positive number, 
   O_negative number, 
   foreign key (camp_id) references bloodcamp (camp_id) 
);

insert into type_quantity values('C1',10, 20, 15, 5, NULL, 9, 7, NULL );

insert into type_quantity values('C2',30, 22, 20, 13, 30, 5, NULL, 1 );

insert into type_quantity values('C3', NULL, 15, 16, 5, NULL , NULL, 7, 10 );

insert into type_quantity values('C4', 5, 16, 28, 8, 11, NULL, 15, 15 );

insert into type_quantity values('C5',12, 12, 12, 14, 15, 11, 17, 7 );

create table employees( 
  emp_id varchar(5) primary key, 
  emp_name varchar(20) not null, 
  salary number(10) not null, 
  emp_gender varchar(6) not null, 
  emp_desc varchar(20) not null, 
  telephone number(10) not null, 
  emp_address varchar2(100) not null, 
  qualification varchar(10) not null 
);

insert into employees values('E1','Kabir Oberoi', 50000, 'M', 'Doctor' ,9876525442, 'Model Town', 'MBBS');

insert into employees values('E2','Maya Malhotra', 90000, 'F', 'Doctor' , 9521480136, 'Urban Estate', 'MBBS-MD-DM');

insert into employees values('E3','Ahad Raza Meer', 50000, 'M', 'Nurse', 8549620136, 'Model Town', 'BSN');

insert into employees values('E4','Shweta Sharma', 70000, 'F', 'Doctor' , 9876525542, 'Aman Nagar', 'MBBS-MD');

insert into employees values('E5','Sajal Ali', 40000, 'F', 'Nurse', 9876510252, 'Urban Estate', 'BSN');

insert into employees values('E6','Rajesh Khanna', 60000, 'M', 'Doctor', 8876525442, 'Model Town', 'MBBS');

insert into employees values('E7','Rajiv Kumar', 30000, 'M', 'Nurse', 7852015442, 'Aman Nagar', 'BSN');

insert into employees values('E8','Preeti Mehta', 80000, 'F', 'Doctor' , 7786525442, 'Patiala Cantt', 'MBBS-MD');

insert into employees values('E9','Anu Kapoor', 30000, 'M', 'Nurse' , 8852525442, 'Urban Estate', 'BSN');

insert into employees values('E10','Ameesha Gupta', 70000, 'F', 'Doctor', 9870000442, 'Patiala Cantt', 'MBBS-MD');

insert into employees values('E11','Kiran Kumari', 10000, 'F', 'Nurse' , 9001225442, 'Aman Nagar', 'BSN');

insert into employees values('E12','Dev Sharma', 40000, 'M', 'Nurse' , 6854120254, 'Rajpura', 'BSN');

insert into employees values('E13','Virat Gupta', 70000, 'M', 'Doctor' , 6876525642, 'Model Town', 'MBBS-MD');

insert into employees values('E14','Ravbeer Kaur', 30000, 'F', 'Nurse', 9999952542, 'Model Town', 'BSN');

insert into employees values('E15','Ravinder Singh', 40000, 'M', 'Nurse', 9876566666, 'Aman Nagar', 'BSN');

insert into employees values('E16','Dilpreet Singh', 50000, 'M', 'Doctor', 9678501254, 'Urban Estate', 'MBBS');

insert into employees values('E17','Ishita Mahajan', 60000, 'F', 'Doctor', 7601852344, 'Aman Nagar', 'MBBS');

insert into employees values('E18','Geet Kaur', 50000, 'F', 'Doctor' , 8888800008, 'Aman Nagar', 'MBBS');

insert into employees values('E19','Abhimanyu Sharma', 70000, 'M', 'Doctor', 9999000081, 'Urban Estate', 'MBBS-MD');

insert into employees values('E20','Abeer Singh', 90000, 'M', 'Doctor' , 6066909900, 'Model Town', 'MBBS-MD-DM');

create table recipient( 
  recipient_id varchar(20) primary key,	 
  recipient_name varchar(20) not null, 
  time_of_request date not null, 
  blood_type varchar(100) not null, 
  age number(2) not null, 
  gender varchar(10) not null, 
  phone_number number not null, 
  address varchar(50) not null, 
  type_received varchar(100) not null, 
  units_received number(2) not null, 
  emp_id varchar(5), 
  foreign key (emp_id) references employees (emp_id) 
);

insert into recipient values('R1','Rahul','8-March-2019','B-ve', 60,'M',9807562356,'Model Town','B-ve',1,'E20');

insert into recipient values('R2','Barney','10-June-2019','A-ve',26,'M',8797656787, 'Shastri Nagar','A-ve',2,'E1');

insert into recipient values('R3','Cristin','20-Sep-2019','AB+ve', 40,'F',9809876798, 'Bajoria Road','A+ve',3,'E15');

insert into recipient values('R4','Robin','18-April-2019','AB-ve', 65,'F',7807654676, 'Urban Estate','AB-ve',4,'E2');

insert into recipient values('R5','Riyaz','5-Nov-2020','A+ve', 61,'M',7675645665, 'Bajoria Road','A+ve',1,'E7');

insert into recipient values('R6','Anmay','9-Dec-2020','O+ve', 34,'M',7656745321, 'Bajoria Road','O+ve',2,'E8');

insert into recipient values('R7','Aayushi','1-May-2020','O+ve', 72,'F',8706223456, 'Model Town','O+ve',4,'E19');

insert into recipient values('R8','Ted','17-Jan-2020','AB+ve', 31,'M',6753476837, 'Urban Estate','AB+ve',2,'E17');

insert into recipient values('R9','Lily','29-Feb-2020','AB+ve', 70,'F',9908765787, 'Shastri Nagar','O+ve',1,'E11');

insert into recipient values('R10','Aahana','19-Dec-2021','B+ve', 54,'F',7786755644, 'Bajoria Road','B+ve',3,'E3');

insert into recipient values('R11','Atif','28-March-2021','AB-ve' ,46,'M',8546323156, 'Model Town','AB-ve',1,'E4');

insert into recipient values('R12','Anisha','1-june-2021','A-ve', 56,'F',8797689076, 'Urban Estate','A-ve',2,'E5');

insert into recipient values('R13','Rahul','8-March-2021','B-ve', 60,'M',9809087611, 'Model Town','B-ve',4,'E9');

insert into recipient values('R14','Ishan','10-Dec-2021','AB+ve', 25,'M',9086523512, 'Bajoria Road','AB+ve',1,'E6');

insert into recipient values('R15','Rijul','4-July-2021','O+ve', 45,'F',8897655426, 'Urban Estate','O+ve',3,'E10');

insert into recipient values('R16','Aarohi','20-March-2022','A+ve',32,'F',7805735124, 'Model Town','A+ve',2,'E12');

insert into recipient values('R17','Aayan','10-Feb-2022','B+ve' ,20,'M',9712345676, 'Shastri Nagar','B+ve',3,'E13');

insert into recipient values('R18','Rohan','5-March-2022','A+ve',21,'M',9095421356, 'Urban Estate','A+ve',1,'E14');

insert into recipient values('R19','Sabina','14-Aug-2022','B+ve' ,50,'F',7897656344, 'Bajoria Road','O+ve',3,'E16');

insert into recipient values('R20','Marshal','7-April-2022','O-ve',84,'M',9874517845, 'Model Town','O-ve',5,'E18');

create table equipments( 
  equipment_id varchar(10) primary key, 
  equipment_cost number not null, 
  equipment_type varchar(50) not null, 
  quantity number not null 
);

insert into equipments values('EQ1',50000,'Tube-sealer',300);

insert into equipments values('EQ2',80000,'Donor-couch',10);

insert into equipments values('EQ3',80000,'Collection-monitor',100);

insert into equipments values('EQ4',10000,'Plasma-freezer',10);

insert into equipments values('EQ5',12000,'Ultralow deep-freezer',8);

insert into equipments values('EQ6',14000,'Refrigerated centrifuge ',10);

insert into equipments values('EQ7',750000,'Plasma-thawing-bath',5);

insert into equipments values('EQ8',100000,'Platelet-agitator',10);

insert into equipments values('EQ9',40000,'laminar-air-flow',5);

insert into equipments values('EQ10',1000,'Hemoglobinometer',15);

create table blood_inventory( 
  blood_type varchar(5) primary key, 
  quantity_on_hand number(30), 
  issue_request number(30) not null 
);

insert into blood_inventory values('A+ve', 20, 5);

insert into blood_inventory values('A-ve', 10, 10);

insert into blood_inventory values('B+ve', 28, 15);

insert into blood_inventory values('B-ve', 10, 7);

insert into blood_inventory values('AB+ve', 20, 9);

insert into blood_inventory values('AB-ve', 15, 6);

insert into blood_inventory values('O+ve', 20, 13);

insert into blood_inventory values('O-ve', 10, 8);

create table Blood( 
  Blood_Bag_No varchar(10) primary key, 
  blood_type varchar(5), 
  BloodCost number(6,2) not null,  
  Haemoglobin number(6,2) not null, 
  Plasma number(6,2) not null, 
  Platelets number(6,2) not null, 
  RBC number(6,2) not null, 
  WBC number(6,2) not null, 
  foreign key (blood_type) references blood_inventory (blood_type) 
);

insert into Blood values('B10','A+ve',900,12.5,6,45.5,4.7,45);

insert into Blood values('B55','AB-ve',950,13,6,28,6.1,110);

insert into Blood values('B61','A-ve',900,12.5,6.5,20,6.1,100);

insert into Blood values('B108','A-ve',900,14,8,25,5.5,50);

insert into Blood values('B110','B+ve',850,18,7,45,5.5,45);

insert into Blood values('B125','B-ve',850,18,6.5,42,6.2,90);

insert into Blood values('B165','O+ve',1000,15,7,34,4.9,110);

insert into Blood values('B170','O-ve',1000,12.5,7.2,41,4.9,85);

insert into Blood values('B180','AB+ve',950,12.5,7.1,33,5.3,89);

insert into Blood values('B195','B+ve',850,15,7.1,39.5,5.3,110);

insert into Blood values('B201','A+ve',900,11,6,45.5,4.7,45);

insert into Blood values('B202','AB+ve',950,11.5,7.1,25.5,5.3,10);

insert into Blood values('B203','O+ve',1000,13.5,7.3,38.5,6.1,90);

insert into Blood values('B204','B+ve',850,10.9,6.1,42.5,5.2,70);

insert into Blood values('B205','B-ve',850,18,7.1,39,5.1,75);

insert into Blood values('B206','AB-ve',950,15.5,8,44,5.3,95);

insert into Blood values('B207','AB+ve',950,16.6,6.5,37.5,4.8,110);

insert into Blood values('B208','A-ve',900,15,7.5,45,5,50);

insert into Blood values('B209','AB-ve',950,17.2,6.8,31.5,4.9,65);

insert into Blood values('B210','O-ve',1000,13,6.6,41.5,5.3,75);

insert into Blood values('B211','AB+ve',950,13.8,7.1,33,5.2,110);

insert into Blood values('B212','O+ve',1000,15,7.9,37.5,5,100);

insert into Blood values('B213','AB+ve',950,11,8,39.5,4.9,80);

insert into Blood values('B214','A+ve',900,12,7.5,36,5.2,70);

insert into Blood values('B215','O+ve',1000,13,6.6,36.5,5.3,88);

create table Donor( 
  Donor_Id varchar(10) primary key, 
  Donor_name char(30) not null, 
  DateOfDonation date not null, 
  Donor_gender char(1) not null, 
  Donor_Address varchar(40) not null,    
  Donor_Age number(2)not null, 
  Disease_If_Any char(30), 
  Donor_Blood_type varchar(5) not null, 
  Donor_Phone_no number not null, 
  Blood_Bag_No varchar(10), 
  Constraint fk1 foreign key (Blood_Bag_No) references Blood (Blood_Bag_No), 
  emp_id varchar(5), 
  constraint fk3 foreign key (emp_id) references employees (emp_id) 
);

insert into Donor values('D101','Atishay','09-Aug-2021','M','Model Town',28,NULL,'A+ve',9854102473,'B201', 'E1');

insert into Donor values('D102','Rekha','09-Aug-2021','F','Bajoria Road',25,'Flu','AB+ve',8754210235,'B202', 'E5');

insert into Donor values('D106','Sanjay','29-Sep-2021','M','Shastri Nagar',24,NULL,'O+ve',8547459678,'B203', 'E7');

insert into Donor values('D107','Reema', '29-Sep-2021','F','Model Town',25,'Cold Sore','B+ve',7012001023,'B204', 'E9');

insert into Donor values('D108','Bhavya', '09-Aug-2021','M','Urban Estate',32,NULL,'B-ve',7878789590,'B205', 'E10');

insert into Donor values('D109','Harsh','30-Oct-2021','M','Bajoria Road',35,NULL,'AB-ve',9587956820,'B206', 'E12');

insert into Donor values('D110','Kartikey', '09-Aug-2021','M','Shastri Nagar',40,NULL,'AB+ve',9825028546,'B207', 'E13');

insert into Donor values('D111','Karan', '29-Sep-2021','M','Bajoria Road',41,'Flu','A-ve',9825028116,'B208', 'E14');

insert into Donor values('D113','Aashima', '30-Oct-2021','F','Model Town',50,NULL,'AB-ve',9825020006,'B209','E16');

insert into Donor values('D115','Abhay', '29-Sep-2021','M','Bajoria Road',68,NULL,'O-ve',7825028546,'B210', 'E17');

insert into Donor values('D117','Dilraj', '09-Nov-2021','M','Shastri Nagar',25,'Cold Sore','AB+ve',7777028546,'B211','E18');

insert into Donor values('D120','Bhavika', '09-Nov-2021','F','Bajoria Road',55,NULL,'O+ve',9815028546,'B212','E19');

insert into Donor values('D122','Monica', '10-Dec-2021','F','Model Town',69,NULL,'AB+ve',8885028546,'B213', 'E20');

insert into Donor values('D125','Rehmaan', '10-Dec-2021','M','Shastri Nagar',32,NULL,'A+ve',6825028546,'B214', 'E2');

insert into Donor values('D130','Aayaan', '30-Oct-2021','M','Bajoria Road',33,NULL,'O+ve',6625028546,'B215', 'E3');

create table tests( 
   equipment_id varchar(10), 
   Blood_Bag_No varchar(10), 
   primary key(equipment_id,Blood_Bag_No), 
   constraint fk8 foreign key (equipment_id) references equipments(equipment_id), 
   constraint fk9 foreign key (Blood_Bag_No) references Blood(Blood_Bag_No) 
);

insert into tests values('EQ1','B10');

insert into tests values('EQ2','B55');

insert into tests values('EQ5','B61');

insert into tests values('EQ6','B108');

insert into tests values('EQ1','B110');

insert into tests values('EQ9','B125');

insert into tests values('EQ10','B165');

insert into tests values('EQ3','B170');

insert into tests values('EQ4','B180');

insert into tests values('EQ7','B195');

insert into tests values('EQ6','B201');

insert into tests values('EQ8','B202');

insert into tests values('EQ5','B203');

insert into tests values('EQ3','B204');

insert into tests values('EQ4','B205');

insert into tests values('EQ1','B206');

insert into tests values('EQ3','B207');

insert into tests values('EQ9','B208');

insert into tests values('EQ1','B209');

insert into tests values('EQ10','B210');

insert into tests values('EQ4','B211');

insert into tests values('EQ3','B212');

insert into tests values('EQ2','B213');

insert into tests values('EQ4','B214');

insert into tests values('EQ7','B215');

create table Donate( 
  camp_id varchar(5), 
  Donor_Id varchar(10), 
  primary key(camp_id,Donor_id), 
  Constraint fk4 foreign key (camp_id) references bloodcamp (camp_id), 
  Constraint fk5 foreign key (Donor_Id) references Donor (Donor_Id) 
);

insert into Donate values('C1','D101');

insert into Donate values('C1','D102');

insert into Donate values('C1','D108');

insert into Donate values('C1','D110');

insert into Donate values('C2','D106');

insert into Donate values('C2','D107');

insert into Donate values('C2','D111');

insert into Donate values('C2','D115');

insert into Donate values('C3','D109');

insert into Donate values('C3','D113');

insert into Donate values('C3','D130');

insert into Donate values('C4','D120');

insert into Donate values('C4','D117');

insert into Donate values('C5','D122');

insert into Donate values('C5','D125');

create table manages( 
emp_id varchar(5), 
equipment_id varchar(10), 
primary key(emp_id,equipment_id), 
Constraint fk6 foreign key(emp_id )references employees(emp_id), 
Constraint fk7 foreign key(equipment_id )references equipments(equipment_id) 
);

insert into manages values('E1','EQ1');

insert into manages values('E2','EQ2');

insert into manages values('E5','EQ3');

insert into manages values('E7','EQ4');

insert into manages values('E8','EQ5');

insert into manages values('E10','EQ6');

insert into manages values('E11','EQ7');

insert into manages values('E12','EQ8');

insert into manages values('E13','EQ9');

insert into manages values('E15','EQ10');

create table Organises( 
camp_id varchar(5), 
emp_id varchar(5), 
primary key(camp_id,emp_id), 
Constraint fk10 foreign key (camp_id) references bloodcamp (camp_id), 
Constraint fk11 foreign key (emp_id) references employees (emp_id) 
);

insert into Organises values('C1','E1');

insert into Organises values('C1','E2');

insert into Organises values('C1','E3');

insert into Organises values('C1','E4');

insert into Organises values('C2','E5');

insert into Organises values('C2','E6');

insert into Organises values('C2','E7');

insert into Organises values('C2','E8');

insert into Organises values('C3','E9');

insert into Organises values('C3','E10');

insert into Organises values('C3','E11');

insert into Organises values('C3','E12');

insert into Organises values('C4','E13');

insert into Organises values('C4','E14');

insert into Organises values('C4','E15');

insert into Organises values('C4','E16');

insert into Organises values('C5','E17');

insert into Organises values('C5','E18');

insert into Organises values('C5','E19');

insert into Organises values('C5','E20');

select * from bloodcamp;

select * from type_quantity;

select * from employees;

select * from recipient;

select * from equipments;

select * from blood_inventory;

select * from Blood;

select * from Donor;

select * from tests;

select * from Donate;

select * from manages;

select * from Organises;

After BCNF: 


Donor table split into two tables: one donor table and another donor_blood 


create table Donor( 
  Donor_Id varchar(10) primary key, 
  Donor_name char(30) not null, 
  DateOfDonation date not null, 
  Donor_gender char(1) not null, 
  Donor_Address varchar(40) not null,    
  Donor_Age number(2)not null, 
  Disease_If_Any char(30), 
  Donor_Blood_type varchar(5) not null, 
  Donor_Phone_no number not null, 
  emp_id varchar(5), 
  constraint fk3 foreign key (emp_id) references employees (emp_id) 
);

insert into Donor values('D101','Atishay','09-Aug-2021','M','Model Town',28,NULL,'A+ve',9854102473, 'E1');

insert into Donor values('D102','Rekha','09-Aug-2021','F','Bajoria Road',25,'Flu','AB+ve',8754210235, 'E5');

insert into Donor values('D106','Sanjay','29-Sep-2021','M','Shastri Nagar',24,NULL,'O+ve',8547459678, 'E7');

insert into Donor values('D107','Reema', '29-Sep-2021','F','Model Town',25,'Cold Sore','B+ve',7012001023, 'E9');

insert into Donor values('D108','Bhavya', '09-Aug-2021','M','Urban Estate',32,NULL,'B-ve',7878789590, 'E10');

insert into Donor values('D109','Harsh','30-Oct-2021','M','Bajoria Road',35,NULL,'AB-ve',9587956820, 'E12');

insert into Donor values('D110','Kartikey', '09-Aug-2021','M','Shastri Nagar',40,NULL,'AB+ve',9825028546, 'E13');

insert into Donor values('D111','Karan', '29-Sep-2021','M','Bajoria Road',41,'Flu','A-ve',9825028116, 'E14');

insert into Donor values('D113','Aashima', '30-Oct-2021','F','Model Town',50,NULL,'AB-ve',9825020006,'E16');

insert into Donor values('D115','Abhay', '29-Sep-2021','M','Bajoria Road',68,NULL,'O-ve',7825028546, 'E17');

insert into Donor values('D117','Dilraj', '09-Nov-2021','M','Shastri Nagar',25,'Cold Sore','AB+ve',7777028546,'E18');

insert into Donor values('D120','Bhavika', '09-Nov-2021','F','Bajoria Road',55,NULL,'O+ve',9815028546,'E19');

insert into Donor values('D122','Monica', '10-Dec-2021','F','Model Town',69,NULL,'AB+ve',8885028546, 'E20');

insert into Donor values('D125','Rehmaan', '10-Dec-2021','M','Shastri Nagar',32,NULL,'A+ve',6825028546, 'E2');

insert into Donor values('D130','Aayaan', '30-Oct-2021','M','Bajoria Road',33,NULL,'O+ve',6625028546, 'E3');

select * from Donor;

create table Donor_Blood( 
Donor_Blood_type varchar(5) not null, 
Blood_Bag_No varchar(10) primary key, 
Constraint fk12 foreign key (Blood_Bag_No) references Blood (Blood_Bag_No) 
);

insert into Donor_Blood values('A+ve', 'B201');

insert into Donor_Blood values('AB+ve', 'B202');

insert into Donor_Blood values('O+ve', 'B203');

insert into Donor_Blood values('B+ve', 'B204');

insert into Donor_Blood values('B-ve', 'B205');

insert into Donor_Blood values('AB-ve', 'B206');

insert into Donor_Blood values('AB+ve', 'B207');

insert into Donor_Blood values('A-ve', 'B208');

insert into Donor_Blood values('AB-ve', 'B209');

insert into Donor_Blood values('O-ve', 'B210');

insert into Donor_Blood values('AB+ve', 'B211');

insert into Donor_Blood values('O+ve', 'B212');

insert into Donor_Blood values('AB+ve', 'B213');

insert into Donor_Blood values('A+ve', 'B214');

insert into Donor_Blood values('O+ve', 'B215');

select * from Donor_Blood;

                                PLSQL 


Cursor 


DECLARE 
    total_rows integer; 
begin 
 
   update Donor 
   set Donor_Address = 'Shivalik Vihar' 
   where Donor_Id = 'D101' ; 
   if sql%notfound then  
      dbms_output.put_line('No Donors Address changed');  
   elsif sql%found then  
      total_rows := sql%rowcount; 
      dbms_output.put_line( total_rows || ' Donors address changed ');  
   end if;  
end; 
 
 
 
 
 
TRIGGER 
In inserting if any Donor has any fatal disease, the information will not be inserted. 
 
create or replace trigger disease_trg 
after insert on Donor 
for each row 
when(new.Donor_Id>0) 
begin 
    		if :new.Disease_If_Any = 'HepB' then 
        		dbms_output.put_line('donor with fatal disease!'); 
        		delete from Donor where Donor_Id = :new.Donor_Id; 
    		end if; 
end; 
 
 
 
 
 
If there is any update in Donor’s location, it will be displayed. 
create or replace trigger blood_received 
before update on Donor 
for each row 
when(new.Donor_Address != old.Donor_Address) 
declare 
 
begin 
	dbms_output.put_line('Old Location: ' || :old.Donor_Address); 
	dbms_output.put_line('New Location: ' || :new.Donor_Address); 
end; 
 
Checking:  
 
 
If any blood is given to donor, it will be updated and displayed. 
create or replace trigger blood_issued 
before update on blood_inventory 
for each row 
when (new.quantity_on_hand != old.quantity_on_hand) 
declare 
given number; 
 
begin 
	given := :old.quantity_on_hand - :new.quantity_on_hand; 
	dbms_output.put_line(:old.blood_type || ' Blood type, units= ' || given || ' is issued.'); 
end; 
 
 
 
 
 
FUNCTION 
>>Function to return total number of donors in donor table 
CREATE OR REPLACE FUNCTION totalDonor 
RETURN number IS 
   total integer := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM Donor; 
   RETURN total; 
END; 
 
>>Function call 
DECLARE 
   c number(2); 
BEGIN 
   c := totalDonor(); 
   dbms_output.put_line('Total no. of Donors are: ' || c); 
END; 
 
Error 
 
 
DECLARE  
    num integer;  
    total_rows integer;  
    cnt integer;  
    res integer;  
    p_id integer;  
    d_id integer;  
    dd_id integer;  
    d_name Donor.Donor_name%type;  
    d_blood Donor.Donor_Blood_type%type;  
    d_place Donor.Donor_Address%type;  
    p_blood Recipient.blood_type%type;  
    p_place Recipient.address%type;  
    type don_bl is varray (11) of Donor.Donor_Blood_type%type;   
    dbl_list don_bl := don_bl();   
  
CREATE OR REPLACE PROCEDURE no_of_donation(Donor_name IN Donor.Donor_name%type,num OUT integer) IS   
BEGIN   
   num := 0;  
   cnt := 10001;  
   while cnt<=10010  
   loop  
        select Donor_Id into d_id  
        from Donor where Donor_name = d_name;   
      
        select Donor_Id into dd_id  
        from Donate where Donor_Id = cnt;  
      
        if (d_id = dd_id) then  
            num := num + 1;  
        end if;   
    cnt:=cnt+1;   
   end loop;  
END no_of_donation; 
 
 
 
 
EXCEPTION HANDLING 
DECLARE 
   bl_type blood_inventory.blood_type%type;  
   quantity blood_inventory.quantity_on_hand%type;  
   issued blood_inventory.issue_request%type:=20;  
BEGIN 
   SELECT  blood_type, quantity_on_hand INTO  bl_type, quantity  
   FROM blood_inventory 
   WHERE issue_request < issued;   
   DBMS_OUTPUT.PUT_LINE ('Blood type is: '||  bl_type);  
   DBMS_OUTPUT.PUT_LINE ('Available is: '||  quantity);  
  
EXCEPTION  
   WHEN no_data_found THEN 
      dbms_output.put_line ('No quantity available.');  
   WHEN others THEN 
      dbms_output.put_line ('Issued request not allowed.');  
END; 
 
 
Query to check: 
UPDATE blood_inventory 
SET issue_request = 30 
WHERE blood_type = 'A+ve'; 
 
 
 
 
 
Procedure -1: 
create or replace procedure auto_update(last_date Donor.DateOfDonation%type, nage Donor.Donor_Age%type, usr Donor.Donor_name%type) 
is 
update_id number; 
begin 
select max(Donor_Id)+1 into update_id from Donor; 
UPDATE Donor 
SET DateOfDonation=last_date, Donor_Age=nage 
WHERE Donor_name=usr; 
end; 
 
 
Procedure -2: 
create or replace function VALID_BLOOD(B_GROUP Blood.blood_type%TYPE) 
return Boolean 
IS 
cursor c1 
is 
select blood_type from Blood; 
begin 
for i in c1 loop 
IF(i.blood_type=B_GROUP) then 
return true; 
END IF; 
END LOOP; 
return false; 
End; 
 
 
create or replace procedure b_cost(ID Blood.Blood_Bag_No%type,B_GROUP Blood.blood_type%TYPE,cost Blood.BloodCost%type) 
IS 
 
begin 
IF (VALID_BLOOD(B_GROUP)) then 
INSERT INTO Blood VALUES (ID,B_GROUP,COST,NULL,NULL,NULL,NULL,NULL); 
 
ELSE 
dbms_output.put_line('BLOOD did not match'); 
END IF; 
End; 
 
 
LOOP  
DECLARE 
   cnt integer; 
   d_name Donor.Donor_name%type; 
   d_blood Donor.Donor_Blood_type%type; 
   d_place Donor.Donor_Address%type; 
BEGIN 
cnt := 101; 
   while cnt<=110 
   loop 
    select Donor_name into d_name 
    from Donor where Donor_Id = ('D' || TO_CHAR(cnt)); 
     
    select Donor_Blood_type into d_blood 
    from Donor where Donor_Id = ('D' || TO_CHAR(cnt)); 
     
    select Donor_Address into d_place 
    from Donor where Donor_Id = ('D' || TO_CHAR(cnt)); 
     
        if (d_blood = 'A+' and d_place = 'Model Town') then 
            dbms_output.put_line('Desired donor : ' || cnt ||' '||d_name||' '||d_blood||' '||d_place); 
        end if;  
    cnt:=cnt+1;  
   end loop; 
   end; 
    
 
 
 
 
 
 
 
 
 
 

/

