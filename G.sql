use master;
go
drop database if exists G;
go
create database G collate Croatian_CI_AS;
go
use G;

create table kupci(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rodenja date not null,
oib char(11) null
);

create table robe(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
vrsta varchar(50) not null,
cijena decimal(10,2),
kolicina int not null,
brojnarudzba int  null 

);

create table narudzbe(
sifra int not null primary key identity (1,1),
kolicina int  null,
cijena decimal(10,2) null ,
roba int not null references robe(sifra),
kupac int not null references kupci(sifra)
);

create table stavke(
sifra int not null primary key identity (1,1),
roba int not null references  robe(sifra),
kupac int not null references kupci(sifra)
);


insert into kupci 
(ime, prezime, datum_rodenja) values
('petar','gudelj','13-08-2005',1);

insert into robe
(ime,vrsta,cijena,kolicina) values
('oreo','crni','20,59','1',1);

insert into narudzbe
( kupac, roba) values
(1,1);

insert into stavke
(kupac, roba) values
(1,1);