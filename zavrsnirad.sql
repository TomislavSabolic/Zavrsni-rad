drop database if exists zavrsnirad;
create database zavrsnirad character set utf8;

use zavrsnirad;

create table klijent(
    sifra int not null primary key auto_increment,
    ime varchar(50)not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(50)

);