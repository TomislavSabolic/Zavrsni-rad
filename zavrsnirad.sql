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


alter table proizvod add foreign key (klijent) references klijent (sifra);
alter table dostavljac add foreign key(klijent)references klijent(sifra);
alter table dostavljac add foreign key(proizvod)references proizvod(sifra);

alter table lokacija add foreign key(klijent)references klijent(sifra);
alter table lokacija add foreign key(proizvod)references proizvod(sifra);
alter table lokacija add foreign key (dostavljac)references dostavljac(sifra);