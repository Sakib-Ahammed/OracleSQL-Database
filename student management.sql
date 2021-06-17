create table college
    (
    id number(6) PRIMARY KEY ,
    college_id number(10) unique,
    address varchar2(200)
    );

create table student
    (id number(6) PRIMARY KEY,
    st_name varchar2(25),
    phone varchar2(14),
    email varchar2(25),
    address varchar2(200),     
    college_id number(10), 
    constraint st_col_id_fk FOREIGN KEY(college_id) REFERENCES COLLEGE (college_id)) 
   ;
    

create table bill
    (
    id number(6) PRIMARY KEY ,
    st_id number(6),FOREIGN KEY(st_id) REFERENCES student (id), 
    college_id number(10),FOREIGN KEY(college_id) REFERENCES COLLEGE (college_id), 
    due varchar2(200)
    );
    
    drop table bill;
    drop table student;
    drop table college;
    insert into college values (1,111,'chuadanga');
      insert into college values (2,112,'meherpur');
          insert into college values (3,113,'jheneidah'); 
            insert into college values (4,114,'khustia');
    desc college;

desc student; 
select * from student;
insert into student values (124534,'sakib','01758173764','satuhin6573gmail.com','chuadanga',111);
 insert into student values (124540,'akib','01758173700','tuhin6573gmail.com','meherpur',112);
   