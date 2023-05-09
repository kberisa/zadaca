use master;
drop database if exists samostan;
go
create database samostan;
go
use samostan;


create table svecenik(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	nadredjenisvecenik int not null,
	posao int not null,
);

create table posao(
	sifra int not null primary key identity(1,1),
	naziv varchar(50) not null,
	svecenik int not null,
);

create table nadredjenisvecenik(
	sifra int not null primary key identity(1,1),
	ime int,
	svecenik int not null,
);

alter table svecenik add foreign key (posao) references posao(sifra);
alter table svecenik add foreign key (nadredjenisvecenik) references nadredjenisvecenik(sifra);
alter table posao add foreign key (svecenik) references svecenik(sifra);
alter table nadredjenisvecenik add foreign key (svecenik) references svecenik(sifra);
