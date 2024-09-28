create database GIT_FOOD;
use GIT_FOOD;

create table RECETAS(
Id_Recetas int primary key,
Nombre_recetas varchar(50),
Descripcion_Recetas varchar(100),
Ingredientes_Recetas varchar(50),
Cantidades_Recetas varchar (30),
Instrucciones_Recetas varchar (80),
Tiempo_Recetas varchar(20),
Porciones_Recetas smallint,
Dificultad_Recetas smallint,
Categoria_Recetas varchar(20),
Origen_Recetas varchar(30)
)
create table USUARIO(
ID_Usuario int primary key,
Nombre_Usuario varchar(50),
Correo_Usuario varchar(50),
Contraseña_Usuario varchar(15),
Documento_Usuario varchar(20),
Fecha_Nacimiento date,
Lugar_Residencia varchar(20)
)
create table CUCHILLOS(
ID_Cuchillo int primary key,
Nombre_Cuchillo varchar(40),
Descripcion_Cuchillo varchar(40),
Tipo_Cuchillo varchar(20),
Material_Hoja varchar(20),
Material_Mango varchar(20),
Longitud_Hoja smallint,
Peso_cuchillo smallint,
Precio_Cuchillo int,
Marca_Cuchillo varchar(20),
)
create table VENTAS(
ID_Ventas int primary key,
Nombre_Producto varchar(25),
Cantidad_productos smallint,
)
create table RECETAS_USUARIO(
Id_Recetas int,
ID_Usuario int,
constraint FK_RECETAS foreign key(Id_Recetas) references RECETAS(Id_Recetas),
constraint FK_USUARIO foreign key(ID_Usuario) references USUARIO(ID_Usuario),
)
create table VENTAS_CUCHILLOS(
ID_Ventas int,
ID_Cuchillo int,
constraint FK_VENTAS foreign key(ID_Ventas) references VENTAS(ID_Ventas),
constraint FK_CUCHILLOS foreign key(ID_Cuchillo) references CUCHILLOS(ID_Cuchillo)
)
create table VENTAS_USUARIO(
ID_Ventas int,
ID_Usuario int,
constraint FK_VENTAS1 foreign key(ID_Ventas) references Ventas(ID_Ventas),
constraint FK_USUARIO1 foreign key(ID_Usuario) references USUARIO(ID_Usuario),
)
create table COMENTARIOS(
ID_Comentarios int primary key,
comentario varchar(max),
fecha_comentario datetime,
estado_comentario varchar(10),
ID_Usuario int,
constraint FK_USUARIO2 foreign key(ID_Usuario) references USUARIO(ID_Usuario)
)
create table COMENTARIOS_USUARIOS(
ID_Comentarios int,
ID_Usuario int,
constraint FK_COMENTARIOS foreign key(ID_Comentarios) references COMENTARIOS(ID_Comentarios),
constraint FK_USUARIO3 foreign key(ID_Usuario) references USUARIO(ID_Usuario)
)

