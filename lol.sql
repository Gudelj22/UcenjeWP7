use master;
go
drop database  if exists lol;
go
create database lol ;
go 
use lol;

create table heroji(
sifra int not null primary key identity(1,1),
ime varchar(20) not null ,
moci varchar(50) not null references moci(sifra) ,
rune int not null references rune(sifra),
razina int null,
vrste int null,
datum_izlaska date null,
);

create table rune(
sifra int not null primary key identity,
ime varchar(20) not null ,  
vrste int null,
moci int not null references moci(sifra),
);

create table moci(
sifra int not null primary key identity,
ime varchar(20) null,
vrste int not null,
prvenstvena_moc int not null references ,
druda_moc int not null 
);


INSERT INTO heroji (ime, datum_izlaska) VALUES
('Aatrox', '2013-06-13'),
('Ahri', '2011-12-14'),
('Akali', '2010-05-11'),
('Akshan', '2021-07-21'),
('Alistar', '2009-02-21'),
('Amumu', '2009-06-26'),
('Anivia', '2009-07-10'),
('Annie', '2009-02-21'),
('Aphelios', '2019-12-11'),
('Ashe', '2009-02-21'),
('Aurelion Sol', '2016-03-24'),
('Azir', '2014-09-16'),
('Bard', '2015-03-12'),
('Bel�Veth', '2022-06-09'),
('Blitzcrank', '2009-09-02'),
('Brand', '2011-04-12'),
('Braum', '2014-05-12'),
('Caitlyn', '2011-01-04'),
('Camille', '2016-12-07'),
('Cassiopeia', '2010-12-14'),
('Cho�Gath', '2009-06-26'),
('Corki', '2009-09-19'),
('Darius', '2012-05-23'),
('Diana', '2012-08-07'),
('Dr. Mundo', '2009-09-02'),
('Draven', '2012-06-06'),
('Ekko', '2015-05-29'),
('Elise', '2012-10-26'),
('Evelynn', '2009-05-01'),
('Ezreal', '2010-03-16'),
('Fiddlesticks', '2009-02-21'),
('Fiora', '2012-02-29'),
('Fizz', '2011-11-15'),
('Galio', '2010-08-10'),
('Gangplank', '2009-08-19'),
('Garen', '2010-04-27'),
('Gnar', '2014-08-14'),
('Gragas', '2010-02-02'),
('Graves', '2011-10-19'),
('Gwen', '2021-04-15'),
('Hecarim', '2012-04-18'),
('Heimerdinger', '2009-10-10'),
('Illaoi', '2015-11-24'),
('Irelia', '2010-11-16'),
('Ivern', '2016-10-05'),
('Janna', '2009-09-02'),
('Jarvan IV', '2011-03-01'),
('Jax', '2009-02-21'),
('Jayce', '2012-07-07'),
('Jhin', '2016-02-01'),
('Jinx', '2013-10-10'),
('Kai�Sa', '2018-03-07'),
('Kalista', '2014-11-20'),
('Karma', '2011-02-01'),
('Karthus', '2009-06-12'),
('Kassadin', '2009-08-07'),
('Katarina', '2009-09-19'),
('Kayle', '2009-02-21'),
('Kayn', '2017-07-12'),
('Kennen', '2010-04-08'),
('Kha�Zix', '2012-09-27'),
('Kindred', '2015-10-14'),
('Kled', '2016-08-10'),
('Kog�Maw', '2010-06-24'),
('LeBlanc', '2010-11-02'),
('Lee Sin', '2011-04-01'),
('Leona', '2011-07-13'),
('Lillia', '2020-07-22'),
('Lissandra', '2013-04-30'),
('Lucian', '2013-08-22'),
('Lulu', '2012-10-20'),
('Lux', '2010-10-19'),
('Malphite', '2009-09-02'),
('Malzahar', '2010-06-01'),
('Maokai', '2011-02-16'),
('Master Yi', '2009-02-21'),
('Miss Fortune', '2010-09-08'),
('Mordekaiser', '2010-02-24'),
('Morgana', '2009-02-21'),
('Nami', '2012-12-07'),
('Nasus', '2009-10-01'),
('Nautilus', '2012-02-14'),
('Neeko', '2018-12-05'),
('Nidalee', '2009-12-17'),
('Nilah', '2022-07-13'),
('Nocturne', '2011-03-15'),
('Nunu and Willump', '2009-02-21'),
('Olaf', '2010-06-09'),
('Orianna', '2011-06-01'),
('Ornn', '2017-10-23'),
('Pantheon', '2010-02-02'),
('Poppy', '2010-01-13'),
('Pyke', '2018-05-31'),
('Qiyana', '2019-06-28'),
('Quinn', '2013-03-01'),
('Rakan', '2017-04-19'),
('Rammus', '2009-07-10'),
('Rek�Sai', '2014-12-11'),
('Rell', '2020-12-10'),
('Renata Glasc', '2022-02-17'),
('Renekton', '2011-01-18'),
('Rengar', '2012-08-21'),
('Riven', '2011-09-14'),
('Rumble', '2011-04-26'),
('Ryze', '2009-02-21'),
('Samira', '2020-09-21'),
('Sejuani', '2012-01-18'),
('Senna', '2019-11-10'),
('Seraphine', '2020-10-29'),
('Sett', '2020-01-14'),
('Shaco', '2009-10-10'),
('Shen', '2010-03-23'),
('Shyvana', '2011-11-01'),
('Singed', '2009-04-18'),
('Sion', '2009-02-21'),
('Sivir', '2009-02-21'),
('Skarner', '2011-08-09'),
('Sona', '2010-09-21'),
('Soraka', '2009-02-21'),
('Swain', '2010-10-05'),
('Sylas', '2019-01-25'),
('Syndra', '2012-09-13'),
('Tahm Kench', '2015-07-09'),
('Taliyah', '2016-05-18'),
('Talon', '2011-08-24'),
('Taric', '2009-08-19'),
('Teemo', '2009-02-21'),
('Thresh', '2013-01-23'),
('Tristana', '2009-02-21'),
('Trundle', '2010-12-01'),
('Tryndamere', '2009-05-01'),
('Twisted Fate', '2009-02-21'),
('Twitch', '2009-05-01'),
('Udyr', '2009-12-02'),
('Urgot', '2010-08-24'),
('Varus', '2012-05-08'),
('Vayne', '2011-05-10'),
('Veigar', '2009-07-24'),
('Vel�Koz', '2014-02-27'),
('Vex', '2021-09-23'),
('Vi', '2012-12-19'),
('Viego', '2021-01-22'),
('Viktor', '2011-12-29'),
('Vladimir', '2010-07-27'),
('Volibear', '2011-11-29'),
('Warwick', '2009-02-21'),
('Wukong', '2011-07-26'),
('Xayah', '2017-04-19'),
('Xerath', '2011-10-05'),
('Xin Zhao', '2010-07-13'),
('Yasuo', '2013-12-13'),
('Yone', '2020-08-06'),
('Yorick', '2011-06-22'),
('Yuumi', '2019-05-14'),
('Zac', '2013-03-29'),
('Zed', '2012-11-13'),
('Zeri', '2022-01-19'),
('Ziggs', '2012-02-01'),
('Zilean', '2009-04-18'),
('Zoe', '2017-11-21'),
('Zyra', '2012-07-24');


insert into rune(vrste) values
('ap',1),
('ad',2),
('supp',3),
('tank',4);

insert into moci(vrste)
('izblizine'),
('izdaljine'),
('izsredine');
