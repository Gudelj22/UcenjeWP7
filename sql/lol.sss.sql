use master;
go
drop database  if exists lol ;
go
create database lol collate Croatian_CI_AS;
go 
use lol;

create table moci(
sifra int not null primary key identity (1,1),
<<<<<<< HEAD:sql/lol.sss.sql
ime varchar(20) not null,
vrste varchar(50) not null 
=======
ime varchar(50) not null,
vrste int not null 
>>>>>>> a4437ec7757ec6d886ef5155ee899e99aa940f79:lol.sss.sql
);
create table rune(
sifra int not null primary key identity (1,1),
ime varchar(50) not null ,  
moc int not null references moci(sifra)
);

create table heroji(
sifra int not null primary key identity(1,1),
ime varchar(20) not null ,
runa int  null references rune(sifra),
razina int null,
datum_izlaska date not null,
primarna_moc int not null references moci(sifra),
sekundarna_moc int  null references moci(sifra) 
);

insert into moci(ime , vrste) values
('blizina','izblizine',1),
('daljina','izdaljine',2);


<<<<<<< HEAD:sql/lol.sss.sql
=======

>>>>>>> a4437ec7757ec6d886ef5155ee899e99aa940f79:lol.sss.sql
insert into rune(ime, moc) values
('sorcery','ap',1),
('precision','ad',2),
('domination','supp',3),
('resolve','tank',4);

INSERT INTO heroji(ime, datum_izlaska,primarna_moc ) VALUES
('Aatrox', '2013-06-13','mocdemonskogmaca',1,3),
('Ahri', '2011-12-14','ljubavnakugla',3,1),
('Akali', '2010-05-11','ostrice',1,1),
('Akshan','2021-07-21','automatskostreljivo',),
('Alistar', '2009-02-21','snagaruku'),
('Amumu', '2009-06-26','mocfaraona'),
('Anivia', '2009-07-10','ledenakugla'),
('Annie', '2009-02-21','vatrenakugla');
