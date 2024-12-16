create database nogomet
go
use  nogomet
go

create table klub(
sifra not null int primary key identity(1,1),
naziv varchar(50) not null,
osnovan datetime null,
stadion int not null,
predsjednik int null 
drzava int null
liga int not null

);

create table utakmica(
sifra int not null primary key identity(1,1),
datum datetime not null,
vrijeme time not null,
lokacija int not null,
stadion int not null,
domaci_klub int not null references domaci_klub(sifra),
gostujuci_klub int  not null references gostujuci_klub(sifra),

);

create table igrac(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rodenja datetime null,
pozicija int null,
broj_dresa
);