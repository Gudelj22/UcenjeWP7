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
moc int null 
);
create table rune(
sifra int not null primary key identity (1,1),
ime varchar(20) not null ,  
moc varchar(20) not null references moci(sifra)
);

create table heroji(
sifra int not null primary key identity(1,1),
ime varchar(20) not null ,
runa int  null references rune(sifra),
razina int null,
datum_izlaska date not null,
primarna_moc int not null references moci(sifra),
sekundarna_moc int not null references moci(sifra) 
);

insert into moci(ime) values
('izblizine'),
('izdaljine'),
('izsredine');


insert into rune(ime,moci) values
('sorcery','ap'),
('precision_','ad'),
('domination','supp'),
('resolve','tank');

INSERT INTO heroji(ime, datum_izlaska,primarna_moc ) VALUES
('Aatrox', '2013-06-13','mocdemonskogmaca'),
('Ahri', '2011-12-14','ljubavnakugla'),
('Akali', '2010-05-11','ostrice'),
('Akshan','2021-07-21','automatskostreljivo'),
('Alistar', '2009-02-21','snagaruku'),
('Amumu', '2009-06-26','mocfaraona'),
('Anivia', '2009-07-10','ledenakugla'),
('Annie', '2009-02-21','vatrenakugla');




