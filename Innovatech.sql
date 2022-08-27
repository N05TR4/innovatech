Angel Luis Decena  20-MIIN-1-005

create database Empresa
use Empresa

--creacion de tablas
 
 create table Empleado(
 nDIEmp int primary key not null,
 nomEmp nvarchar(40) not null,
 sexEmp varchar(1) check (sexEmp in ('F','M')),
 fecNac datetime,
 fecIncorporacion datetime,
 salEmp money,
 comis money,
 codSuc int,
 jefeDI nvarchar(40)not null,
 cargo varchar(40),
 nroDepto int,
 )
 go

 create table Departamento(
 codDepto int primary key not null,
 nombDepto nvarchar(40),
 ciudad varchar(50),
 director varchar(40),
 )
 go

 CREATE table client(
 id_cliente int PRIMARY key not null,
 nombre varchar(100)
 )go

 create table proveedor(
 id_proveedor int PRIMARY KEY not null,
 nombre varchar(100)
 )go

CREATE TABLE producto(
id_producto int PRIMARY KEY not null,
nombre varchar(100)
)

 --Relacion de la tabla empleado con la tabla departamento

 alter table Empleado
 add constraint pk_nroDepto foreign key (nroDepto) references Departamento (codDepto)

 --insertamos los datos

 select * from Empleado
 insert into Empleado values(1,'Jose Vasquez','M',CONVERT(char(19),'21/11/2000'),CONVERT(char(19),'5/4/2019'),5000,250,30,'001','Vendedor',1),
                            (2,'Alberto Lorenzo','M',CONVERT(char(19),'12/1/2000'),CONVERT(char(19),'6/6/2020'),6500,400,30,'001','Vendedor',1),
			    (3,'Gabriela Guzman','F',CONVERT(char(19),'17/8/2001'),CONVERT(char(19),'7/12/2018'),7500,300,09,'002','Secretaria',2),
			    (4,'Aleyda Lorenzo','F',CONVERT(char(19),'28/7/1980'),CONVERT(char(19),'2/2/2006'),45000,1500,09,'002','Contable',2),
			    (5,'Gidel Gabriel Garcia','M',CONVERT(char(19),'19/8/1994'),CONVERT(char(19),'20/10/2015'),9700,500,05,'003','Administrador',3),
			    (6,'Leydi Josefina Lorenzo','F',CONVERT(char(19),'25/9/1987'),CONVERT(char(19),'23/12/2012'),40000,4000,05,'003','Adm. General',3),
			    (7,'nelson decena','M',CONVERT(char(19),'21/11/2003'),CONVERT(char(19),'5/4/2019'),5000,250,30,'001','Vendedor',1),
			    (8,'angel gabriel','M',CONVERT(char(19),'21/11/2001'),CONVERT(char(19),'5/4/2019'),5000,250,30,'001','Vendedor',1),
			    (9,'juliana puello','M',CONVERT(char(19),'21/11/2004'),CONVERT(char(19),'5/4/2019'),5000,250,30,'001','Vendedor',1),
			    (10,'dominga jimenez','M',CONVERT(char(19),'21/11/2003'),CONVERT(char(19),'5/4/2019'),5000,250,30,'001','Vendedor',1)



select * from Departamento
insert into Departamento values (1,'Puesto de ventas','San Cristobal','Pedro Alfonso'),
                                (2,'Depto. de Gestion','Santo Domingo','Nanci Garcia'),
				(3,'Depto. de Administracion General','Santo Domingo','Leydi Josefina Lorenzo'),
                                (3,'puesto de venta','Santo Domingo','manuel cabrera'), 
                                (3,'puesto de venta','Santo Domingo','nelson decena'),
                                (3,'puesto de venta','Santo Domingo','juliana puello'),
                                (3,'puesto de venta','Santo Domingo','antero heredia'),
                                (3,'puesto de venta','Santo Domingo','Gabriela Guzman'),
                                (3,'puesto de venta','Santo Domingo','Aleyda Lorenzo'),
                                (3,'puesto de venta','Santo Domingo','Gidel Gabriel Garcia')
                                

insert into cliente(id_cliente, nombre) values  (1, 'juan peres'),
                                                (2, 'juana sales'),
                                                (3, 'predro peres'),
                                                (4, 'jaime paredes'),
                                                (5, 'juan zosa'),
                                                (6, 'martina sol'),
                                                (7, 'petronila tais'),
                                                (8, 'manuel san'),
                                                (9, 'jose man'),
                                                (10, 'super man')

insert into proveedor(id_proveedor, nombre) VALUES (1, 'juan peres'),
                                                (2, 'juana sales'),
                                                (3, 'predro peres'),
                                                (4, 'jaime paredes'),
                                                (5, 'juan zosa'),
                                                (6, 'martina sol'),
                                                (7, 'petronila tais'),
                                                (8, 'manuel san'),
                                                (9, 'jose man'),
                                                (10, 'super man')


insert into producto(id_producto, nombre) values (1, 'juan peres'),
                                                (2, 'juana sales'),
                                                (3, 'predro peres'),
                                                (4, 'jaime paredes'),
                                                (5, 'juan zosa'),
                                                (6, 'martina sol'),
                                                (7, 'petronila tais'),
                                                (8, 'manuel san'),
                                                (9, 'jose man'),
                                                (10, 'super man')


