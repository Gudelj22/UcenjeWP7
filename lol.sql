use master;
go
drop database  if exists lol ;
go
create database lol collate Croatian_CI_AS;
go 
use lol;

create table moci(
sifra int not null primary key identity (1,1),
ime varchar(20) null,
vrste varchar(6) not null,


);
create table rune(
sifra int not null primary key identity (1,1),
ime varchar(20)  null ,  
vrste int  not null,
moci int  null references moci(sifra),
moci int not null references moci(sifra),
);

create table heroji(
sifra int not null primary key identity(1,1),
ime varchar(20) not null ,
rune int  null references rune(sifra),
razina int null,
vrsta int null,
datum_izlaska date not null,
primarna_moc int  null references moci(sifra),
sekundarna_moc int  null references moci(sifra) 
);

insert into moci(vrste) values
('izblizine'),
('izdaljine'),
('izsredine');


insert into rune(vrste) values
('ap',1),
('ad',1),
('supp',2),
('tank',3);
INSERT INTO heroji(ime, datum_izlaska) VALUES
('Aatrox', '2013-06-13'),
('Ahri', '2011-12-14'),
('Akali', '2010-05-11'),
('Akshan', '2021-07-21'),
('Alistar', '2009-02-21'),
('Amumu', '2009-06-26'),
('Anivia', '2009-07-10'),
('Annie', '2009-02-21');




