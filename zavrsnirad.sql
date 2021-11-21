drop database if exists zavrsnirad;
create database zavrsnirad character set utf8;

use zavrsnirad;

create table klijent(
    sifra int not null primary key auto_increment,
    ime varchar(50)not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(50),
    proizvod varchar(50)

);

creat table proizvod(
    sifra int not null primary key auto_increment,
    naziv varchar (50),
    cijena decimal(18,2),
    količina int,
    klijent int
);

alter table klijent add foreign key (proizvod) references proizvod (sifra);

