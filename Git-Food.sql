create database GIT_FOOD;
use GIT_FOOD;

create table RECETAS(
Id_Recetas int primary key,
Nombre_recetas varchar(50),
Descripcion_Recetas varchar(100),
Ingredientes_Recetas varchar(max),
Cantidades_Recetas varchar (max),
Instrucciones_Recetas varchar (max),
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
ID_Usuario int
CONSTRAINT FK_VENTAS_USUARIO FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO (ID_USUARIO)
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

create table COMENTARIOS(
ID_Comentarios int primary key,
estado_comentario varchar(10),
ID_Usuario int,
constraint FK_USUARIO2 foreign key(ID_Usuario) references USUARIO(ID_Usuario)
)


select *from RECETAS
INSERT INTO RECETAS (Id_Recetas, Nombre_recetas, Descripcion_Recetas, Ingredientes_Recetas, Cantidades_Recetas, Instrucciones_Recetas, Tiempo_Recetas, Porciones_Recetas, Dificultad_Recetas, Categoria_Recetas, Origen_Recetas) VALUES
(001, 'Bruschetta de Tomate y Albahaca', 'Tostadas de pan crujientes cubiertas con tomate fresco, albahaca y ajo.', 'Pan, Tomates, Albahaca, Ajo, Aceite de oliva, Sal, Pimienta', '4 rebanadas de pan, 2 tomates, 1/2 taza de albahaca, 1 diente de ajo, 2 cucharadas de aceite de oliva, al gusto', 'Tostar el pan. Cortar los tomates en cubos y mezclar con la albahaca, el ajo, el aceite de oliva, la sal y la pimienta. Colocar la mezcla sobre el pan tostado.', '15 minutos', 2, 1, 'Aperitivo', 'Italiana'),
(002, 'Guacamole', 'Dip cremoso hecho con aguacate, cebolla, cilantro, jugo de limón y especias.', 'Aguacate, Cebolla, Cilantro, Jugo de limón, Sal, Pimienta', '2 aguacates, 1/2 cebolla, 1/4 taza de cilantro, 2 cucharadas de jugo de limón, al gusto', 'Machacar el aguacate con un tenedor. Agregar la cebolla picada, el cilantro, el jugo de limón, la sal y la pimienta. Mezclar bien.', '10 minutos', 4, 1, 'Aperitivo', 'Mexicana'),
(003, 'Rollitos de Jamón y Queso', 'Finas lonchas de jamón enrolladas con queso y rellenas con diferentes ingredientes.', 'Jamón, Queso, Lechuga, Tomate, Mayonesa', '8 lonchas de jamón, 8 rebanadas de queso, 4 hojas de lechuga, 2 tomates, 2 cucharadas de mayonesa', 'Extender las lonchas de jamón. Colocar una rebanada de queso sobre cada loncha. Agregar lechuga, tomate y mayonesa. Enrollar el jamón y servir.', '15 minutos', 4, 1, 'Aperitivo', 'Internacional'),
(004, 'Hummus Clásico', 'Dip cremoso hecho con garbanzos, tahini, ajo, jugo de limón y especias.', 'Garbanzos, Tahini, Ajo, Jugo de limón, Sal, Pimienta', '1 taza de garbanzos cocidos, 1/4 taza de tahini, 1 diente de ajo, 2 cucharadas de jugo de limón, al gusto', 'Licuar los garbanzos con el tahini, el ajo, el jugo de limón, la sal y la pimienta hasta obtener una textura suave.', '10 minutos', 4, 1, 'Aperitivo', 'Medio Oriente'),
(005, 'Pollo Al Limón', 'Pollo asado con una salsa de limón, hierbas y especias.', 'Pollo, Limón, Ajo, Perejil, Romero, Sal, Pimienta', '1 pollo, 1 limón, 2 dientes de ajo, 1/4 taza de perejil, 1 ramita de romero, al gusto', 'Marinar el pollo con el jugo de limón, el ajo, el perejil, el romero, la sal y la pimienta. Asar el pollo hasta que esté cocido.', '45 minutos', 4, 2, 'Plato Principal', 'Internacional'),
(006, 'Spaghetti a la Boloñesa', 'Pasta spaghetti con una salsa de carne italiana.', 'Spaghetti, Carne picada, Cebolla, Zanahoria, Apio, Tomates triturados, Vino tinto, Caldo de carne, Orégano, Sal, Pimienta', '250 gramos de spaghetti, 500 gramos de carne picada, 1 cebolla, 1 zanahoria, 1 tallo de apio, 1 lata de tomates triturados, 1/2 taza de vino tinto, 1 taza de caldo de carne, 1 cucharadita de orégano, al gusto', 'Cocinar la carne picada con la cebolla, la zanahoria y el apio. Agregar los tomates triturados, el vino tinto, el caldo de carne, el orégano, la sal y la pimienta. Cocinar la pasta y mezclar con la salsa.', '45 minutos', 4, 2, 'Plato Principal', 'Italiana'),
(007, 'Tacos de Pescado', 'Tortillas de maíz rellenas con pescado fresco, salsa y otros ingredientes.', 'Tortillas de maíz, Pescado, Cebolla, Cilantro, Limón, Salsa picante', '12 tortillas de maíz, 500 gramos de pescado, 1 cebolla, 1/4 taza de cilantro, 2 limones, al gusto', 'Cocinar el pescado y desmenuzarlo. Mezclar el pescado con la cebolla picada, el cilantro, el jugo de limón y la salsa picante. Rellenar las tortillas con la mezcla.', '30 minutos', 4, 2, 'Plato Principal', 'Mexicana'),
(008, 'Lentejas Estofadas', 'Lentejas cocidas en un estofado con verduras y especias.', 'Lentejas, Zanahoria, Cebolla, Ajo, Tomates triturados, Caldo de verduras, Laurel, Pimienta negra', '1 taza de lentejas, 1 zanahoria, 1 cebolla, 2 dientes de ajo, 1 lata de tomates triturados, 4 tazas de caldo de verduras, 1 hoja de laurel, al gusto', 'Cocinar las lentejas con la zanahoria, la cebolla, el ajo, los tomates triturados, el caldo de verduras, el laurel y la pimienta negra.', '45 minutos', 4, 2, 'Plato Principal', 'Internacional'),
(009, 'Puré de Papas', 'Papas cocidas y machacadas hasta obtener una textura suave.', 'Papas, Leche, Mantequilla, Sal, Pimienta', '1 kilo de papas, 1/2 taza de leche, 2 cucharadas de mantequilla, al gusto', 'Cocinar las papas hasta que estén blandas. Machacar las papas con la leche, la mantequilla, la sal y la pimienta.', '30 minutos', 4, 1, 'Acompañamiento', 'Internacional'),
(0010, 'Ensalada César', 'Ensalada con lechuga romana, pollo, queso parmesano, crutones y aderezo César.', 'Lechuga romana, Pollo, Queso parmesano, Crutones, Aderezo César', '1 lechuga romana, 200 gramos de pollo, 1/4 taza de queso parmesano, 1/2 taza de crutones, al gusto', 'Lavar y cortar la lechuga romana. Cocinar el pollo y cortarlo en cubos. Mezclar la lechuga, el pollo, el queso parmesano, los crutones y el aderezo César.', '20 minutos', 4, 2, 'Ensalada', 'Internacional'),
(0011, 'Arroz Pilaf', 'Arroz cocinado con cebolla, ajo, caldo de pollo y especias.', 'Arroz, Cebolla, Ajo, Caldo de pollo, Pimienta negra, Comino', '1 taza de arroz, 1 cebolla, 2 dientes de ajo, 2 tazas de caldo de pollo, al gusto', 'Saltear la cebolla y el ajo. Agregar el arroz y cocinar por 1 minuto. Agregar el caldo de pollo, la pimienta negra y el comino. Cocinar hasta que el arroz esté cocido.', '20 minutos', 4, 1, 'Acompañamiento', 'Internacional'),
(0012, 'Vegetales Asados', 'Verduras asadas al horno con aceite de oliva, sal y pimienta.', 'Verduras (pimientos, calabacín, berenjena, cebolla, etc.), Aceite de oliva, Sal, Pimienta', 'Al gusto', 'Lavar y cortar las verduras. Mezclar las verduras con aceite de oliva, sal y pimienta. Asar en el horno hasta que estén tiernas.', '30 minutos', 4, 1, 'Acompañamiento', 'Internacional'),
(0013, 'Brownies de Chocolate', 'Bizcocho denso y chocolatoso con una textura húmeda y crujiente.', 'Chocolate negro, Azúcar, Huevos, Harina, Mantequilla, Vainilla', '200 gramos de chocolate negro, 1 taza de azúcar, 2 huevos, 1/2 taza de harina, 1/4 taza de mantequilla, 1 cucharadita de vainilla', 'Derretir el chocolate con la mantequilla. Batir los huevos con el azúcar. Agregar la mezcla de chocolate y la vainilla. Incorporar la harina. Hornear hasta que estén cocidos.', '30 minutos', 12, 2, 'Postre', 'Internacional'),
(0014, 'Tarta de Manzana', 'Tarta dulce con una base de masa quebrada y un relleno de manzanas caramelizadas.', 'Masa quebrada, Manzanas, Azúcar, Canela, Mantequilla', '1 masa quebrada, 4 manzanas, 1/2 taza de azúcar, 1 cucharadita de canela, 2 cucharadas de mantequilla', 'Preparar la masa quebrada. Cortar las manzanas en rodajas y caramelizarlas con el azúcar y la canela. Colocar las manzanas sobre la masa quebrada y hornear hasta que estén doradas.', '45 minutos', 8, 3, 'Postre', 'Internacional'),
(0015, 'Flan de Caramelo', 'Postre cremoso con una base de caramelo y un relleno de crema de huevo.', 'Azúcar, Huevos, Leche, Vainilla', '1 taza de azúcar, 4 huevos, 1 litro de leche, 1 cucharadita de vainilla', 'Preparar el caramelo con el azúcar. Batir los huevos con la leche y la vainilla. Agregar la mezcla al caramelo y hornear hasta que esté firme.', '45 minutos', 6, 2, 'Postre', 'Internacional'),
(0016, 'Galletas de Avena y Pasas', 'Galletas crujientes con avena, pasas y especias.', 'Avena, Pasas, Harina, Azúcar, Mantequilla, Huevos, Canela', '1 taza de avena, 1/2 taza de pasas, 1 taza de harina, 1/2 taza de azúcar, 1/4 taza de mantequilla, 1 huevo, 1 cucharadita de canela', 'Mezclar la avena, las pasas, la harina, el azúcar, la mantequilla, el huevo y la canela. Formar bolitas y hornear hasta que estén doradas.', '20 minutos', 12, 1, 'Postre', 'Internacional');

select *from USUARIO
INSERT INTO USUARIO (ID_Usuario, Nombre_Usuario, Correo_Usuario, Contraseña_Usuario) VALUES
(100, 'Juan Perez', 'juan.perez@example.com', 'password123'),
(200, 'Maria Rodriguez', 'maria.rodriguez@example.com', 'password456'),
(300, 'Pedro Garcia', 'pedro.garcia@example.com', 'password789'),
(400, 'Ana Gonzalez', 'ana.gonzalez@example.com', 'password012'),
(500, 'Luis Martinez', 'luis.martinez@example.com', 'password345'),
(600, 'Sofia Hernandez', 'sofia.hernandez@example.com', 'password678'),
(700, 'Carlos Lopez', 'carlos.lopez@example.com', 'password901'),
(800, 'Isabel Sanchez', 'isabel.sanchez@example.com', 'password234'),
(900, 'David Ramirez', 'david.ramirez@example.com', 'password567'),
(1000, 'Laura Torres', 'laura.torres@example.com', 'password890');

select *from COMENTARIOS
INSERT INTO COMENTARIOS (ID_Comentarios, estado_comentario, ID_Usuario) VALUES
(10, 'Activo', 1),
(11, 'Inactivo', 2),
(12, 'Activo', 3),
(13, 'Inactivo', 4),
(14, 'Activo', 5),
(15, 'Inactivo', 6),
(16, 'Activo', 7),
(17, 'Inactivo', 8),
(18, 'Activo', 9),
(19, 'Inactivo', 10);

select *from RECETAS_USUARIO
INSERT INTO RECETAS_USUARIO(Id_Recetas,ID_Usuario) VALUES
(001,100),
(002,200),
(004,300),
(005,400),
(007,500),
(009,600),
(0011,700),
(0012,800),
(0014,900),
(0016,1000);

select * from CUCHILLOS
insert into CUCHILLOS (ID_Cuchillo,Nombre_Cuchillo,Descripcion_Cuchillo,Tipo_Cuchillo,Material_Hoja,Material_Mango,Longitud_Hoja,Peso_cuchillo,Precio_Cuchillo,Marca_Cuchillo) values
(001,'Cuchillo de chef multiusos','Cuchillo de chef de 8 in de acero inoxid','cuchillo de chef','acero inoxidable','madera de Pakka',25,69,179.260,'imarku'),
(002,'Paudin Cuchillo de chef','Paudin Cuchillo de chef de acero inoxid','cuchillo de chef','acero inoxidable','madera',25,69,143399,'paudin'),

-- crear un procedimiento para insertar registros en la tabla RECETAS

select * from RECETAS
-- aun no se ejecuta
create proc insertar_recetas  
@idRecetas int,
@nombreRecetas varchar (50),
@descripcionRecetas varchar(100),
@ingredientesRecetas varchar (max),
@cantidadesRecetas varchar (max),
@instruccionesRecetas varchar (max),
@tiempoRecetas varchar (20),
@porcionesRecetas smallint,
@dificultadRecetas smallint,
@categoriaRecetas varchar (20),
@origenRecetas varchar (30)
as
insert into RECETAS(Id_Recetas,Nombre_recetas,Descripcion_Recetas,Ingredientes_Recetas,Cantidades_Recetas,Instrucciones_Recetas,Tiempo_Recetas,Porciones_Recetas,Dificultad_Recetas,Categoria_Recetas,Origen_Recetas)


--procedimiento almacenado para la tabla usuario

select* from USUARIO
--aun no se ejecuta
create proc insertar_usuario
@idUsuario int,
@nombreUsuario varchar (50),
@correoUsuario varchar (50),
@contraseñaUsuario varchar (15),
as
insert into USUARIO(ID_Usuario,Nombre_Usuario,Correo_Usuario,Contraseña_Usuario) values(@idUsuario,@nombreUsuario,@correoUsuario,@contraseñaUsuario)


--insercion de registros a manera de codigo vivo
select * from RECETAS
exec insertar_recetas 001, 'Bruschetta de Tomate y Albahaca', 'Tostadas de pan crujientes cubiertas con tomate fresco, albahaca y ajo.', 'Pan, Tomates, Albahaca, Ajo, Aceite de oliva, Sal, Pimienta', '4 rebanadas de pan, 2 tomates, 1/2 taza de albahaca, 1 diente de ajo, 2 cucharadas de aceite de oliva, al gusto', 'Tostar el pan. Cortar los tomates en cubos y mezclar con la albahaca, el ajo, el aceite de oliva, la sal y la pimienta. Colocar la mezcla sobre el pan tostado.', '15 minutos', 2, 1, 'Aperitivo', 'Italiana'

--se requiere crear un procedimiento almacenado que modifique datos en la tabla usuario
select * from USUARIO
-- aun no se ejecuta
create proc modificar_usuario
@idUsuario int,
@nombreUsuario varchar (50),
@correoUusuario varchar (50),
@contraseñaUsuario varchar (15)
as
update USUARIO set Nombre_Usuario=@nombreUsuario, Correo_Usuario=@correoUusuario where ID_Usuario=@idUsuario

--se requiere crear un procediminero que modifique datos en la tabla recetas
--aun no se ejecuta
exec insertar_recetas 002, 'Guacamole', 'Dip cremoso hecho con aguacate, cebolla, cilantro, jugo de limón y especias.', 'Aguacate, Cebolla, Cilantro, Jugo de limón, Sal, Pimienta', '2 aguacates, 1/2 cebolla, 1/4 taza de cilantro, 2 cucharadas de jugo de limón, al gusto', 'Machacar el aguacate con un tenedor. Agregar la cebolla picada, el cilantro, el jugo de limón, la sal y la pimienta. Mezclar bien.', '10 minutos', 4, 1, 'Aperitivo', 'Mexicana'

--se requiere realizar una consulta de un registro especifico en la tabla usuario
--aun no se ejecuta
create proc consultarIdUsuario
@idUsuario int,
as
select*from USUARIO where ID_Usuario=@idUsuario

--se requiere crear un procedimiento almacenado donde elimine un registro especifico
--aun no se ejecuta
 select * from USUARIO
create proc eliminarregistro
@eliminarNombreUsuario varchar (50)
as
delete from USUARIO where Nombre_Usuario=@eliminarNombreUsuario

--procedimiento para saber cuantos nombre de usuarios hay
--aun no se ejecuta
create proc cantidad_NombreUsuarios
@cantidadNombreUsuarios int output
as
select @cantidadNombreUsuarios=count(Nombre_Usuario)from USUARIO

--se requiere generar un informe sobre una receta x donde indique el nombre del dueño, el tiempo que demora y los comentarios que tiene--

select *from RECETAS
select *from USUARIO
select*from COMENTARIOS

create proc consulta
@nombreReceta varchar (50)
as
select  from RECETAS 
inner join  
on  
inner join
on
inner join
on
inner join
on 