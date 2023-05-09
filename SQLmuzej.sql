use master;
go
drop database if exists muzej;
go
create database muzej;
go
use muzej;

create table kustos(
	sifra int not null primary key identity(1,1),
	ime varchar(50) not null,
	prezime varchar(50)not null,
);

create table djelo(
	sifra int not null primary key identity(1,1),
	naziv varchar not null,
	izlozba int not null,
	starost date,
);

create table sponzor(
	sifra int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
);

create table izlozba(
	sifra int not null primary key identity(1,1),
	sponzor int not null,
	kustos int not null,
	djelo int not null,
);

alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);
alter table djelo add foreign key (izlozba) references izlozba(sifra);
