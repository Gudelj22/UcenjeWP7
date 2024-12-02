use master;
go
drop database if exists PROBA;
go
create database PROBA;
go
use PROBA;
go

create table IspitniRok(
sifra int not null primary key identity(1,1),
predmet int not null,
vrstaIspita int null,
datu datetime not null,
pristupio varchar not null
);

create table Pristupnici(
ispitniRok int not null references ispitniRok(sifra),
student int not null,
brojBodova varchar(50) null,
ocjena varchar(50) not null

);