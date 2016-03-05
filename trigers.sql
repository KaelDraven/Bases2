create table regitro_menor(id_regmen integer, nombre varchar2(40), email varchar2(40), edad integer, constraint pk_id_regmen primary key(id_regmen));
create table regitro_mayor(id_regm integer, nombre varchar2(40), email varchar2(40), edad integer, constraint pk_id_regm primary key(id_regm));
create table regitro(id_registro integer, nombre varchar2(40), email varchar2(40), edad integer, constraint pk_id_registro primary key(id_registro));

create or replace trigger respaldo_registro after insert on registro for each row
begin
if :new.edad >=18 then
insert into registro_mayor_values(:new.id_registro, :new.nombre, :new.email, :new.edad);
else
insert into registro_menor values(:new.id_registro, :new.nombre, :new.email, :new.edad);
end if;
end;
/

create or replace 
trigger respaldo_ch before insert on registro for each row
begin
if :new.edad <=0 then
dbms_output.put_line('ERROR NO PUEDES TENER EDAD NEGATIVA MILHOUSE IDIOTA!!');

end if;
end;

/
create or replace 
trigger respaldo_registro after insert on registro for each row
begin
if :new.edad >=18 then
insert into regitro_mayor values(:new.id_registro, :new.nombre, :new.email, :new.edad);
else
insert into regitro_menor values(:new.id_registro, :new.nombre, :new.email, :new.edad);
end if;
end;
