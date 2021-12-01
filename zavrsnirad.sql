drop database if exists zavrsnirad;
create database zavrsnirad character set utf8;

use zavrsnirad;

create table klijent(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(50),
    proizvod varchar(50)
    

);

create table proizvod(
    sifra int not null primary key auto_increment,
    naziv varchar (50),
    cijena decimal(18,2),
    kolicina int,
    klijent int not null
);

create table dostavljac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    brojugovora char(11) not null,
    klijent int not null ,
    proizvod int not null 
);

create table lokacija(
 sifra int not null primary key auto_increment,
 grad varchar(50)not null,
 ulica varchar(50)not null,
 kucnibroj int not null,
 klijent int,
 proizvod int,
 dostavljac int
);






alter table lokacija add foreign key(klijent)references klijent(sifra);
alter table lokacija add foreign key(proizvod)references proizvod(sifra);
alter table lokacija add foreign key (dostavljac)references dostavljac(sifra);

insert into klijent values 
(null,'Petar','Peric',84395254464,'pero.peric@gmail.com','proizvod01'),
(null,'Ivo','Ivic',15920473256,'ivo.ivic@gmail.com','proizvod02'),
(null,'Tomo','Tomic',91354036420,'tomo.tomic@gmail.com','proizvod03');


