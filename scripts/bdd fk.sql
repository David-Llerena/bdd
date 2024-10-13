Select * from personas

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key(codigo)
)

alter table personas
add constraint personas_estado_civil_fk 
foreign key (estado_civil_codigo)
references estado_civil(codigo)

insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('0926324237','David','Llerena','U')
insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('0926324232','David2','Llerena2','U')

select * from estado_civil

insert into estado_civil(codigo,descripcion)
values('U','UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values('C','CASADO');
insert into estado_civil(codigo,descripcion)
values('S','SOLTERO');