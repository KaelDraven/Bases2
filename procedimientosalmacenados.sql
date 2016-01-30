
create or replace 
procedure hola_mundo(nombre in varchar2) 
as
begin 
--aqui va la logica 
dbms_output.put_line('ola ke ase programando en php o ke ase '||nombre);
end;
--este es uno
CREATE OR REPLACE PROCEDURE SUMA 
(
  PRIMERO IN NUMBER  
, SEGUNDO IN NUMBER  
, RESULTADO OUT NUMBER  
) AS 
BEGIN
resultado:=primero+segundo;
 
END SUMA;
--este es otro

CREATE OR REPLACE PROCEDURE GUARDAR_PELICULA 
(
  MY_ID_PELICULA OUT NUMBER  
, MY_TITULO IN VARCHAR2  
, MY_SYNOPSIS IN VARCHAR2  
, MY_CLASIFICACION IN VARCHAR2  
) AS 
BEGIN
select sec_pelicula.nextval into MY_ID_PELICULA from dual;
insert into pelicula values(MY_ID_PELICULA,MY_TITULO, MY_SYNOPSIS, MY_CLASIFICACION);
 
END GUARDAR_PELICULA;
-- el ultimo

--esto es otro codigo secuencia 
create sequence sec_pelicula
                    start with 1
                    increment by 1
                    nomaxvalue;
                    
 --estos son lo procedimientos lel                   
                    
set serveroutput on;

create or replace procedure hola_mundo(nombre in varchar2) 
as
begin 
--aqui va la logica 
dbms_output.put_line('hola como estas'||nombre);
end;
/
begin
hola_mundo('alejandro');

end;
/
declare
valor number;
begin 
suma(12,8,valor);
dbms_output.put_line('la suma es '||valor);
end;
/
