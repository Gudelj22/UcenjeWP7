create table heroji_(
sifra int not null primary key identity(1,1),
ime varchar(20) not null references ime(sifra),
moci varchar(50) not null,
rune int null,
level_ int null,
);

create table rune(
sifra int not null primary key identity,
ime varchar(20) not null references ime(sifra),
sposobnosti varchar(50) not null references sposobnosti(sifra) ,
kategorije int null,
);

create table moci(
sifra int not null primary key identity,
ime varchar(20) null,
sposobnosti varchar(50) not null references sposobnosti(sifra),
vrste int not null
);