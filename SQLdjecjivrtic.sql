use master;
go
drop database if exists djecjivrtic;
go
create database djecjivrtic;
go
use djecjivrtic;

create table odgajateljica(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	verificirana int not null,
);

create table djeca(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	datumrodjenja date not null,
	spol int,
);

create table odgojnaskupina(
	sifra int not null primary key identity(1,1),
	odgajateljica int not null,
	djeca int not null,
);

alter table odgojnaskupina add foreign key (odgajateljica) references odgajateljica(sifra);
alter table odgojnaskupina add foreign key (djeca) references djeca(sifra);
