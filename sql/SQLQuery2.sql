select a.naziv, b.naziv as grupa, b.predavac
from smjerovi a inner join grupe b
on a.sifra = b.sifra;

update grupe
set predavac='ante gudelj'
where sifra= 2;

select * from grupe;


select b.naziv as grupa,
a.naziv as smjer,
d.ime, d.prezime
from smjerovi a inner join grupe b on a.sifra=b.smjer
inner join clanovi c on b.sifra= c.grupa
inner join polaznici d on d.sifra=c.polaznik;

use knjiznica;

select concat(a.ime,'', a.prezime) as autor,
b.naslov, c.naziv as izdavac,
d.naziv as mjesto
from autor a
inner join katalog b on a.sifra = b.autor
inner join izdavac c on c.sifra= b.izdavac
inner join mjesto d on d.sifra = b.mjesto;
where a.ime like 'I%'

use svastara

select c.redniBroj, d.naziv,	
sum(b.cijena * b.kolicina) as vrijednost 
from Artikli a 
inner join ArtikliNaPrimci b on a.sifra = b.artikl
inner join Primke c on c.sifra= b.primka
inner join Dobavljaci d on c.sifra=b.primka
group by c.redniBroj
having sum(b.cijena * b.kolicina)>13000000
order by 2 desc;

select top 10 c.redniBroj, a.dugiNaziv, b.cijena, b.kolicina
b.cijena * b.kolicina as vrijednost 
from Artikli a 
inner join ArtikliNaPrimci b on a.sifra = b.artikl
inner join Primke c on c.sifra= b.primka
where c.redniBroj='1/2008';

select count(*) from artikli;

select distinct artikl from ArtikliNaPrimc;

select * from artikli where sifra not in (select distinct artikl from ArtikliNaPrimc);
