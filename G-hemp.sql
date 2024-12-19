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

create table narudzbe(
sifra int not null primary key identity (1,1),
kupac_namalo int not null references kupci(sifra),
kupac_naveliko int not null references kupci(sifra)
);

create table robe(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
vrsta varchar(50) not null,
cijena decimal(10,2),
narudzba int null references narudzbe(sifra)
);

insert into kupci
(ime,prezime,datum_rodenja) values
('petar','gudelj','13-08-2005');

insert into narudzbe
(kupac_namalo,kupac_naveliko) values
('malo',1,'veliko',2);

insert into robe
(ime,vrsta,cijena) values
('cbd','orangehase','20,59',1);