use master;
go
drop database if exists udrugazazastituzivotinja;
go
create database udrugazazastituzivotinja;
go
use udrugazazastituzivotinja;

create table zaposlenik(
	sifra int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
);

create table sticenik(
	sifra int not null primary key identity(1,1),
	vrsta varchar(100) not null,
);

create table prostorija(
	sifra int not null primary key identity(1,1),
	broj int not null,
);

create table termin(
	sifra int not null primary key identity(1,1),
	usluga varchar(50) not null,
	datum datetime,
	zaposlenik int,
	sticenik int,
	prostorija int,
);


alter table termin add foreign key (zaposlenik) references zaposlenik(sifra);
alter table termin add foreign key (sticenik) references sticenik(sifra);
alter table termin add foreign key (prostorija) references prostorija(sifra);