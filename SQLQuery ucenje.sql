use master;
go
drop database if exists frizerskisalon;
go
create database frizerskisalon;
go
use frizerskisalon;


create table worker(
	name varchar(50),
	costumer varchar(11),
	service int,
	wid varchar(11) not null primary key,
);

create table costumer(
	name varchar(50),
	surname varchar(50),
	cid varchar(11) not null primary key,
);

create table service(
	price decimal(18,2),
	sid int not null primary key,
);

alter table worker add foreign key (costumer) references costumer(cid);
alter table worker add foreign key (service) references service(sid);