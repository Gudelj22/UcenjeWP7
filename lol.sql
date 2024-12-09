use master;
go
drop database  if exists lol ;
go
create database lol collate Croatian_CI_AS;
go 
use lol;

create table moci(
sifra int not null primary key identity (1,1),
ime varchar(20) not null,
vrste varchar(20) not null
);
create table rune(
sifra int not null primary key identity (1,1),
ime varchar(20)  null ,  
vrste varchar(50)  not null,
moc int not null references moci(sifra)
);

create table heroji(
sifra int not null primary key identity(1,1),
ime varchar(20) not null ,
runa int  null references rune(sifra),
razina int null,
vrsta varchar(50) null,
datum_izlaska date not null,
primarna_moc int not null references moci(sifra),
sekundarna_moc int  null references moci(sifra) 
);

insert into moci(ime,vrste) values
('izblizine'),
('izdaljine'),
('izsredine');


insert into rune(vrste, moc) values
('ap','sorcery',1),
('ad',precision_',2),
('supp','domination',3),
('tank','resolve',4);

INSERT INTO heroji(ime, datum_izlaska,primarna_moc ) VALUES
('Aatrox', '2013-06-13','mocdemonskogmaca'),
('Ahri', '2011-12-14','ljubavnakugla'),
('Akali', '2010-05-11','ostrice'),
('Akshan','2021-07-21','automatskostreljivo'),
('Alistar', '2009-02-21','snagaruku'),
('Amumu', '2009-06-26','mocfaraona'),
('Anivia', '2009-07-10','ledenakugla'),
('Annie', '2009-02-21','vatrenakugla');




