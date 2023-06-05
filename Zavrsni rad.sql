use master
go
drop database if exists dostava_hrane;
go
create database dostava_hrane;
go
use dostava_hrane;

create table kupac(
	sifra int not null primary key identity(1,1),
	korisnicko_ime varchar(50),
	ime varchar(50),
	prezime varchar(50),
	adresa varchar(50),
	telefon varchar(20)
);

create table proizvod(
	sifra int not null primary key identity(1,1),
	naziv varchar(50),
	opis varchar(200),
	cijena dec(18,2),
	dostupnost bit
);

create table dostavljac(
	sifra int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	oib char(11),
	email varchar(50),
	telefon varchar(20)
);

create table kosarica(
	sifra int not null primary key identity(1,1),
	proizvod int,
	kolicina int,
	kupac int,
	adresa_dostave varchar(50),
	status_dostave varchar(20),
	dostavljac int
);

alter table kosarica add foreign key (proizvod) references proizvod(sifra);
alter table kosarica add foreign key (kupac) references kupac(sifra);
alter table kosarica add foreign key (dostavljac) references dostavljac(sifra);

