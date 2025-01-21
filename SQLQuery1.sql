--Utilizar la base de datos para poder almacenar
use informaticonfig
go;

--Es para eliminar la base de datos
drop database Informaticonfig;

--para que nos muestre todo las base de datos del servidor
select * from sys.databases;


-- para Cambiar el nombre de la base de dato ya creado
alter database wilde modify name= informaticonfig;

--TIPO DE DATOS EN SQL SERVER
--char --> almacenar tipo de  datos de ancho fijo;
--varchar --> almacenar tipo de  datos alfanumericos de ancho variable;
--text --> almacenar tipo de  datos de texto;
--nchar --> almacenar tipo de  datos alfanumericos de ancho fijo;
--nvarchar --> almacenar tipo de  datos alfanumericos de ancho variable;
--bit --> alamcena valores entre 1 y 0
-- int -->almacena valores entre -2,147,483,648 y 2,147,483,647
--bigint --almacena valores entre -9.223,372,036,854,775,808 and 9.223,372,036,854,775,808 
--decimal --> almacena valores entre -10^38 +1 to 10^38 -1
--money almacena valores entre -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807
--float --> almacena valores entre -1,79 E +308 to 1,79 E +308

--TABLAS EN SQL SERVER : SE REPRESENTA POR CAMPOS Y FILAS

create table empleados(
idempleado int ,
nombre varchar(30) not null,
apellido varchar(35) not null,
edad numeric(2),
telefono numeric(10),
direccion varchar(100),
fecha_nacimiento date,
salario decimal(18,2),
activo char(2)
);

--esto es para ver que tipo de datos va almacenar cada atributos
exec sp_help empleados;

-- Insertar datos a la tabla 
insert into empleados values(1,'wiliam','gastelu',18,123456789,'santa isabel mz a lt 4','2024-09-03',300.25,'si');
insert into empleados values(2,'jose','martinez',25,987456321,'ufc','2024-09-03',300.25,'si');
--para mostrar la tabla los datos insertado aremos la consulta select
select * from empleados

--nos muestra todas las tablas de la bd que estamos usando
select * from sys.tables

-- para cambiar de nombre ala tabla ya creada

exec sp_rename 'empleados','usuarios' --> el primero es la tabla actual el sgeugndo es el nuevo tabla

--para eliminar una tabla ya creada

drop table empleados

--para eliminar todo los registro de la tabla 
truncate table empleados 

--para borrar un registro en especifico 

delete from empleados where idempleado=1;

--para agregar un campo a una tabla ya creada 

alter table empleados add sexo char(1)

insert into empleados values(3,'maki','nestor',58,456123456,'polonia ms d 45','1996-09-12',54.23,'no','F');

--para eliminar un campo de una tabla ya creada

alter table empleados drop column sexo;


--OPERADORES RELACIONALES
--   = COMPARA SI DOS VALORES SON IGUALES
--   != COMPARA SI DOS VALORES SON DIFERENTES

--  PARA VER OTRA FORMA DIFERENTE EN SQL SERVER ES ASI :        <>

--   > COMPARA SI UN VALOR ES MAYOR QUE OTRO
--   < COMPARA SI UN VALOR ES MENOR QUE OTRO
--   >= COMPARA SI UN VALOR ES MAYOR O IGUAL
--   <= COMPARA SI UN VALOR ES MENOR O IGUAL




















truncate table empleados
select * from empleados












