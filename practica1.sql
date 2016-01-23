--crearemos una tabla muy simple para probar el poder de ps/sql
create table dance(id_dance integer, nombre varchar2(40), edad integer);

--prendemos el servidor en modo de desarrollador 
set serveroutput on;

--vamos a empezar con un bloque pl sql

declare
--aqui se declaran las variables a usar
edad integer;
years integer;

begin
--a qui va la logica de tu programita
years:=24;
edad:=years*365;

dbms_output.put_line('tu edad en dias es: '||edad);
end;
/
--crear un bloque en sql que genere 200000 registro en secuencia acscendente en la tabla dance
begin
for i in 1..200000 loop
insert into dance values (I,'alex',24);
end loop;
end;
/
select * from dance;
--Sistema de peliculas la de salas sera tu tarea 

create table pelicula (id_pelicula integer, 
                        titulo varchar2(120),
                        sinopsis varchar2(500),
                        clasificacion varchar2(5),
                        constraint pk_id_pelicula primary key(id_pelicula) 
                        );
describe pelicula;

create table horarios(id_horario integer,
                      id_pelicula integer,
                      horario varchar2(8),
                      constraint pk_id_horario primary key(id_horario),
                      constraint fk1_id_pelicula foreign key(id_pelicula) references pelicula (id_pelicula));
