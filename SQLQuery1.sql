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



