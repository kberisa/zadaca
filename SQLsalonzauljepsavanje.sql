use master;
go
drop database if exists salonzauljepsavanje;
go
create database salonzauljepsavanje;
go
use salonzauljepsavanje;

create table korisnik(
	sifra int not null primary key identity(1,1),
	ime  varchar(50)not null,
	prezime varchar(50),
);

create table djelatnica(
	sifra int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	oib char(11)
);

create table usluga(
	sifra int not null primary key identity(1,1),
	cijena decimal(11,2),
);

create table termin(
	sifra int not null primary key identity(1,1),
	date datetime,
	korisnik int,
	djelatnica int,
	usluga int,
);

alter table termin add foreign key (korisnik) references korisnik(sifra);
alter table termin add foreign key (djelatnica) references djelatnica(sifra);
alter table termin add foreign key (usluga) references usluga (sifra);
