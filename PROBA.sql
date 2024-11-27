use master;
go
drop database if exists PROBA;
go
create database PROBA;
go
use PROBA;
go

create table IspitniRok(
sifra int,
predmet int,
vrstaIspita int,
datu datetime,
pristupio varchar
);

create table Pristupnici(
ispitniRok datetime,
student int,
brojBodova varchar(50),
ocjena varchar(50)

);