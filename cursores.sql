create table simple1(id_simple iteger, edad integer, nombre varchar2(40));
-- la llenamos con informacion rapida 
declare
mi_edad integer;
begin 
mi_edad:=20;
for i iin 1..20 loop
mi_edad:=mi_edad+i;
insert into simple1 values(i, mi_edad,'juan carlos');
end loop;
end;
/
--hacer un select
select * from simple1 
-- crear un cursor que busque el id que valga 21 y que cambie el nombre por el tuyo
set serveroutput on;
declare
mi_nombre varchar2(40);
begin
select nombre into mi_nombre from simple1 where edad=21;
dbms_output.put_line(mi nombre);
end;
/

-- otra forma

declare
mi_nombre varchar2;
begin
select nombre into mi_nombre from simple1 where ead=21;
dbms_output.put_line(mi_nombre);
end;
/

