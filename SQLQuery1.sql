--Utilizar la base de datos para poder almacenar
use informaticonfig
go;

-- Crear la tabla empleados
CREATE TABLE empleados (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    puesto VARCHAR(50) NOT NULL,
    departamento VARCHAR(50),
    salario DECIMAL(10, 2),
    fecha_contratacion DATE,
    correo VARCHAR(100)
);

-- Insertar 20 registros en la tabla empleados
INSERT INTO empleados (nombre, apellido, puesto, departamento, salario, fecha_contratacion, correo)
VALUES
('Juan', 'Pérez', 'Gerente', 'Administración', 85000.00, '2020-01-15', 'juan.perez@empresa.com'),
('Ana', 'Gómez', 'Desarrollador', 'Tecnología', 55000.00, '2021-03-10', 'ana.gomez@empresa.com'),
('Luis', 'Martínez', 'Analista', 'Finanzas', 62000.00, '2019-07-25', 'luis.martinez@empresa.com'),
('María', 'Rodríguez', 'Diseñadora', 'Marketing', 50000.00, '2022-05-30', 'maria.rodriguez@empresa.com'),
('Pedro', 'Sánchez', 'Técnico', 'Soporte', 48000.00, '2020-11-12', 'pedro.sanchez@empresa.com'),
('Claudia', 'Fernández', 'Consultora', 'Recursos Humanos', 72000.00, '2018-02-28', 'claudia.fernandez@empresa.com'),
('Andrés', 'García', 'Administrador', 'Sistemas', 65000.00, '2017-09-14', 'andres.garcia@empresa.com'),
('Laura', 'López', 'Especialista', 'Ventas', 57000.00, '2021-06-22', 'laura.lopez@empresa.com'),
('Diego', 'Hernández', 'Supervisor', 'Producción', 60000.00, '2020-04-18', 'diego.hernandez@empresa.com'),
('Carla', 'Ramírez', 'Analista', 'Calidad', 56000.00, '2022-08-05', 'carla.ramirez@empresa.com'),
('Sofía', 'Mendoza', 'Programadora', 'Tecnología', 59000.00, '2019-10-01', 'sofia.mendoza@empresa.com'),
('Roberto', 'Cruz', 'Vendedor', 'Ventas', 45000.00, '2021-12-15', 'roberto.cruz@empresa.com'),
('Elena', 'Ortiz', 'Asistente', 'Administración', 40000.00, '2022-03-20', 'elena.ortiz@empresa.com'),
('Javier', 'Torres', 'Ingeniero', 'Producción', 70000.00, '2020-09-30', 'javier.torres@empresa.com'),
('Gabriela', 'Silva', 'Coordinadora', 'Logística', 62000.00, '2018-11-08', 'gabriela.silva@empresa.com'),
('Carlos', 'Ramos', 'Capacitador', 'Recursos Humanos', 58000.00, '2021-07-10', 'carlos.ramos@empresa.com'),
('Daniela', 'Morales', 'Diseñadora', 'Marketing', 51000.00, '2020-02-19', 'daniela.morales@empresa.com'),
('Fernando', 'Gómez', 'Técnico', 'Sistemas', 49000.00, '2019-06-25', 'fernando.gomez@empresa.com'),
('Patricia', 'Álvarez', 'Jefa de Proyecto', 'Tecnología', 85000.00, '2017-12-03', 'patricia.alvarez@empresa.com'),
('Esteban', 'Vargas', 'Especialista', 'Finanzas', 64000.00, '2022-01-16', 'esteban.vargas@empresa.com');

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


SELECT * FROM SYS.TABLES

--PARA CAMBIAR EL NOMBRE DE UN CAMPO SE HACE CON EL SIGUIENTE CODIGO
exec sp_rename 'empleados.idempleado','id'; --primero colocas la tabla seguido del punto el campo que deseas cambiar

select * from empleados;


--PARA ACTUALIAZAR UN DATO ESPECIFICO EN LA TABLA ES CON UPDATE

UPDATE empleados set nombre='wiliam'
where id=2;
--pero tambien puede modificar sin filtro

update empleados set salario=1500;

--esto es un ejemplo bueno 

update empleados set salario=2500
where id in (1,3,5,7)

select * from empleados


--UTILIZAMOS EL IN PARA TOMAR COMO LISTA DE LO QUE QUIERES HACER 

SELECT  * FROM EMPLEADOS WHERE ID IN (1,2,4,5,7);

--INSERTAR DATOS DE UNA TABLA  YA CREADA A UNA NUEVA: CON LOS SIGUIENTES PASO

CREATE TABLE SALARIOS(
nombre varchar(30),
apellido varchar(30),
salario decimal(18,2)
);

select * from SALARIOS

--para insertar datos a una tabla nueva de otra tabla con datos

insert into SALARIOS(nombre,apellido,salario)
select nombre,apellido,salario from empleados
where salario >3000;

select nombre,apellido,salario from SALARIOS
where salario >3000;


create table datos(
nombre varchar(20),
apellido varchar(30));

select * from datos
insert into datos(nombre,apellido)
select nombre,apellido from empleados


---------------------------------------------------------------------------------------------------------------------------
							--SELECT TOP , SELECT PERCENT
---------------------------------------------------------------------------------------------------------------------------

select top 5 * from salarios where salario>35000  --se le tiene que colocar el top 5 seguido el * por que es referencial te mostrara el salario

select top 50 percent * from SALARIOS   --esto muestra el 50% de registros de la tabla las filas 

select top 3 * from empleados
where salario>3000

select * from empleados

update empleados set apellido='gastelu'
where id=2;

----------------------------------------------------------------------------------------------------------------------
                  --NULL Y NOT NULL
----------------------------------------------------------------------------------------------------------------------

-- IS NOT NULL: es una condición en SQL que se utiliza para verificar si un valor en una columna no es nulo, es decir, que contiene algún dato.
-- IS NULL : es una condición en SQL que se utiliza para verificar si un valor en una columna es nulo, es decir, que no tiene ningún dato o está vacío.

UPDATE empleados set departamento ='NO TIENE'
where id=2

select * from empleados where departamento ='NO TIENE';

-------------------------------------------------------------------------------------------
--agregamos la tabla estudiante para ver practicas 
-------------------------------------------------------------------------------------------

-- Crear la tabla 'estudiantes'
CREATE TABLE estudiantes (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    correo VARCHAR(100),
    telefono VARCHAR(15),
    direccion VARCHAR(255)
);

-- Insertar 10 registros en la tabla
INSERT INTO estudiantes (id, nombre, edad, correo, telefono, direccion) VALUES
(1, 'Juan Pérez', 20, NULL, '555-1234', NULL),
(2, 'Ana López', NULL, 'ana@example.com', NULL, 'Calle Falsa 123'),
(3, 'Carlos Gómez', 22, NULL, '555-2345', NULL),
(4, 'María Ruiz', 19, 'maria@example.com', '555-3456', 'Avenida Siempre Viva 456'),
(5, 'José Martínez', NULL, NULL, '555-4567', NULL),
(6, 'Laura Sánchez', 21, 'laura@example.com', NULL, 'Calle del Sol 789'),
(7, 'Pedro Díaz', 23, NULL, NULL, 'Calle Luna 101'),
(8, 'Sara Rodríguez', NULL, 'sara@example.com', '555-5678', NULL),
(9, 'Luis Fernández', 20, NULL, NULL, 'Calle del Mar 202'),
(10, 'Carmen García', 22, 'carmen@example.com', '555-6789', NULL);


SELECT * FROM estudiantes

SELECT * FROM estudiantes 
WHERE CORREO IS NULL;
UPDATE estudiantes SET correo='wiliamgastelu21@gmail.com'
where correo is null;

select * from estudiantes
where edad is not null;


----------------------------------------------------------------------------------------
--1 -PK ENLACE PRIMARY KEY PUEDE LLAMAR DE LA SIGUEINTE MANERA UNO DIRECTO EN EL CAMPO 
-- 2-- AL FINAL DEL CAMPO COLOCANDO CONSTRAINT PK_ENKACE_PERSONA PRIMARY KEY (ID_PERSONA)
-- 3-- ALTER TABLE ESTUDIANTES 
-- ADD CONSTRAINT PK_ENLACE PRIMARY KEY (ID_PERSONA)
----------------------------------------------------------------------------------------
-- primer caso como crear primary key sin constraint
CREATE TABLE MASCOTTAS(
id_mascota int primary key,
nombre varchar(30),
raza varchar(30));

-- con constraint
CREATE TABLE MASCOTAS(
id_mascota int ,
nombre varchar(30),
raza varchar(30),
constraint pk_enlace_mascota primary key (id_mascota));

--3 caso una ves ya creado sin primary key

alter table mascotas 
add constraint pk_enlace_mascota primary key (id_mascota);

-- COMO BORRAR UN ENLACE YA CREADO CON CONSTRAINT 

ALTER TABLE MASCOTAS DROP CONSTRAINT PK_ENLACE; -- ASI SE BORRA UN ENLACE DE PRIMARY KEY COLOANDO EL NOMBRE DE LA TABLA Y EL ENLACE 

------------------------------------
             --UNIQUE
------------------------------------
CREATE TABLE PERSONAS(
id_persona int not null unique,
nombre varchar(30) not null,
edad int not null,);

insert into PERSONAS values(1,'wiliam',15);
insert into PERSONAS values(1,'pedro',20);  --en este caso no te va dejar registrar por el caso de unique por que tiene que ser unico el campo id_persona

drop table PERSONAS

CREATE TABLE PERSONAS(
id_persona int not null ,
nombre varchar(30) not null,
edad int not null,
constraint UQ_persona unique (id_persona));

alter table PERSONAS
add constraint UK unique (id_persona)

CREATE TABLE PERSONAS1(
id_persona int not null ,
nombre varchar(30) not null,
edad int not null
);

ALTER TABLE PERSONAS1 ADD CONSTRAINT UK UNIQUE (id_persona);

ALTER TABLE PERSONAS1 DROP CONSTRAINT UQ_persona;


CREATE TABLE PERSONAS3(
id_persona int,
dni int,
nombre varchar(30) not null,
edad int not null,
primary key (id_persona,dni)
);

------------------------------------------------
--RESTRICCIONES CON CHECK --SIRVE PARA DAR INSTRUCCION QUE TIENE QUE CUMPLIR EL CAMPO
-----------------------------------------------

CREATE TABLE Ingenieros(
id_ingeniero int identity(1,1),
nombre varchar(30) not null,
apellido varchar(30) not null,
edad tinyint,
check(edad>=20));

--segundo caso que puedes llamar al check es mas directo escriberle en el mismo campo

CREATE TABLE Ingenieras(
id_ingeniero int identity(1,1),
nombre varchar(30) not null,
apellido varchar(30) not null,
edad tinyint check(edad>=20));

insert into Ingenieras values('rosa maria','peres hidalgo',36);

--tercer caso : agregar check con constraint 
CREATE TABLE Ingenios(
id_ingeniero int identity(1,1),
nombre varchar(30) not null,
apellido varchar(30) not null,
edad tinyint ,
constraint check_ingenios Check (edad>=10));


insert into Ingenios values('mari','pariona',10);
select * from Ingenios

update Ingenios set edad=19
where id_ingeniero=2;


---------------------------------------------------------------
--CONSTRAINT DEFAULT -- ES UN RESTRICCION ES USADA PARA ESTABLECER DATOS EN UNA COLUMNA
-------------------------------------------------------------------------------------------

CREATE TABLE PERSONAS4(
id_personas tinyint primary key,
nombre varchar(30) not null,
edad tinyint not null,
ciudad varchar(50) default 'no tiene' -- default es como es un parametro que le das por automatico cuando crees un default en una tabla
); 

insert into PERSONAS4 values(1,'wiliam',19,default)
select * from PERSONAS4

--agregamos default con constraint 
CREATE TABLE PERSONAS5(
id_personas tinyint primary key,
nombre varchar(30) not null,
edad tinyint not null,
ciudad varchar(50) 
); 

alter table Personas5 add constraint df_pe default 'no tiene' for ciudad;  -- esta es la sintaxis de default en un constraint
alter table Personas5 drop constraint df_pe; --esto es para eliminar  y si no tiene default en tu campo se colocara null automaticamente



-----------------------------------------------------------------
-- IDENTITY  --ES ALGO QUE TE GENERA AUTOMATICAMENTE EL SISTEMA EL MOTOR DE BD
------------------------------------------------------------------

CREATE TABLE PERSONAS6(
id_personas tinyint IDENTITY(1,1),
nombre varchar(30) not null,
edad tinyint not null,
ciudad varchar(50) 
); 
ALTER TABLE PERSONAS6 ADD CONSTRAINT DF_K DEFAULT 'PRO' for ciudad
--CON IDENTITY TE VA GENERAR AUTOMATICAMENTE EL REGISTRO 
INSERT INTO PERSONAS6 VALUES('WILY',18,'LIMA')

INSERT INTO PERSONAS6 VALUES('piero',18,default)
SELECT * FROM PERSONAS6

---IMPORTANTE EN EL CASO DE IDENTITY PARA PODER VER EL VALOR DONDE INICIA 
SELECT IDENT_SEED ('PERSONAS6');
---PARA VER EL INCREMENTO DE CADA REGISTRO 
SELECT IDENT_INCR ('PERSONAS6');

-----ESTO ES MAS IMPORTANTE
SET IDENTITY_INSERT PERSONAS6 ON ; --activa el identity
SET IDENTITY_INSERT PERSONAS6 OFF;   --esto desactiva el identity donde para registra deberas ingresar los campos 






