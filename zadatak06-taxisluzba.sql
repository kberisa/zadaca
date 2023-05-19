use master
go
drop database if exists taxisluzba;
go
create database taxisluzba;
go
use taxisluzba;

create table vozac(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11)
);

create table putnik(
	sifra int  not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	telbroj varchar(50)
);

create  table voznja(
	sifra int not null primary key identity(1,1),
	vozac int,
	putnik int,
	datum datetime,
	brojputnika int
);

create table tvrtka(
	sifra int not null primary key identity(1,1),
	vozilo int not null,
	vozac int
);

alter table voznja add foreign key (putnik) references putnik (sifra);
alter table tvrtka add foreign key (vozac)  references vozac (sifra);
alter table voznja add foreign key (vozac) references vozac (sifra);


