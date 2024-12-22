use master;
go
drop database if exists G_hemp;
go
create database G_hemp collate Croatian_CI_AS;
go
use G_hemp;

create table kupci(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11) null,
datum_rodenja datetime not null
);

create table robe(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
vrsta varchar(50) not null,
cijena decimal(10,2),
kolicina int not null,
brojnarudzba int not null references narudzbe(sifra)

);

create table narudzbe(
sifra int not null primary key identity (1,1),
kolicina int  null,
cijena decimal(10,2) null ,
roba int not null references robe(sifra),
kupac int not null references kupci(sifra)
);



insert into kupci 
(ime,prezime,datum_rodenja) values
('petar','gudelj','13-08-2005',1);

insert into robe
(ime,vrsta,cijena,kolicina) values
('cbd','orangehase','20,59','1',1);

insert into narudzbe
( kupac, roba) values
(1,1);

