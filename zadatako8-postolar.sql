use master
go
drop database if  exists postolar;
go
create database postolar;
go
use  postolar

create  table korisnik(
	sifra int not null primary key identity(1,1),
	obuca varchar(50),
	ime varchar(50),
	prezime varchar(50),
	telbroj varchar(50)
);

create table popravak(
	sifra int not null primary key identity(1,1),
	korisnik int,
	obuca varchar(50),
	segrt int
);

create table postolar(
	sifra  int not null primary key identity(1,1),
	ime varchar(50),
	segrt varchar(50),
	popravak int
);


alter table postolar add foreign key (popravak) references popravak(sifra);
alter table popravak add foreign key (korisnik) references korisnik(sifra);