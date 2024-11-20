CREATE DATABASE GitFood;
USE GitFood;

CREATE TABLE Usuario (
    ID_Usuario int identity(0,1) PRIMARY KEY,
    Nombre_Usuario VARCHAR(50) NOT NULL,
    Correo_Usuario VARCHAR(50) NOT NULL,
    Contraseña_Usuario VARCHAR(15) NOT NULL
);

CREATE TABLE Recetas (
    Id_Recetas INT IDENTITY(1,1) PRIMARY KEY,
    Nombre_recetas VARCHAR(50) NOT NULL,
    Descripcion_Recetas VARCHAR(100),
    Ingredientes_Recetas TEXT,
    Cantidades_Recetas TEXT,
    Instrucciones_Recetas TEXT,
    Tiempo_Recetas VARCHAR(20),
    Porciones_Recetas SMALLINT,
    Dificultad_Recetas SMALLINT,
    Categoria_Recetas VARCHAR(20),
    Origen_Recetas VARCHAR(30),
    ID_Usuario INT,
    CONSTRAINT FK_USUARIO1 FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario)
);
CREATE TABLE Comentarios (
    ID_Comentarios INT IDENTITY(1,1) PRIMARY KEY,
    estado_comentario VARCHAR(10),
	texto_comentario TEXT,
    ID_Usuario INT,
    Id_Recetas INT,
    CONSTRAINT FK_USUARIO2 FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    CONSTRAINT FK_RECETA FOREIGN KEY (Id_Recetas) REFERENCES Recetas(Id_Recetas)
);


CREATE PROC InsertarUsuario 
    @Nombre_Usuario VARCHAR(50),
    @Correo_Usuario VARCHAR(50),
    @Contraseña_Usuario VARCHAR(15)
AS
BEGIN
    INSERT INTO Usuario (Nombre_Usuario, Correo_Usuario, Contraseña_Usuario)
    VALUES (@Nombre_Usuario, @Correo_Usuario, @Contraseña_Usuario);
END;


CREATE PROC ActualizarUsuario 
    @ID_Usuario INT,
    @Nombre_Usuario VARCHAR(50),
    @Correo_Usuario VARCHAR(50),
    @Contraseña_Usuario VARCHAR(15)
AS
BEGIN
    UPDATE Usuario
    SET Nombre_Usuario = @Nombre_Usuario, 
        Correo_Usuario = @Correo_Usuario,
        Contraseña_Usuario = @Contraseña_Usuario
    WHERE ID_Usuario = @ID_Usuario;
END;

CREATE PROC EliminarUsuario 
    @ID_Usuario INT
AS
BEGIN
    DELETE FROM Usuario
    WHERE ID_Usuario = @ID_Usuario;
END;

CREATE PROC FiltrarUsuario 
    @ID_Usuario INT
AS
BEGIN
    SELECT * FROM Usuario WHERE ID_Usuario = @ID_Usuario;

    SELECT R.* 
    FROM Recetas R
    INNER JOIN Usuario U ON R.ID_Usuario = U.ID_Usuario
    WHERE U.ID_Usuario = @ID_Usuario;

    SELECT C.* 
    FROM Comentarios C
    INNER JOIN Usuario U ON C.ID_Usuario = U.ID_Usuario
    WHERE U.ID_Usuario = @ID_Usuario;
END;

CREATE PROC InsertarReceta 
    @Nombre_recetas VARCHAR(50),
    @Descripcion_Recetas VARCHAR(100),
    @Ingredientes_Recetas TEXT,
    @Cantidades_Recetas TEXT,
    @Instrucciones_Recetas TEXT,
    @Tiempo_Recetas VARCHAR(20),
    @Porciones_Recetas SMALLINT,
    @Dificultad_Recetas SMALLINT,
    @Categoria_Recetas VARCHAR(20),
    @Origen_Recetas VARCHAR(30),
    @ID_Usuario INT
AS
BEGIN
    INSERT INTO Recetas (Nombre_recetas, Descripcion_Recetas, Ingredientes_Recetas, Cantidades_Recetas, Instrucciones_Recetas, Tiempo_Recetas, Porciones_Recetas, Dificultad_Recetas, Categoria_Recetas, Origen_Recetas, ID_Usuario)
    VALUES (@Nombre_recetas, @Descripcion_Recetas, @Ingredientes_Recetas, @Cantidades_Recetas, @Instrucciones_Recetas, @Tiempo_Recetas, @Porciones_Recetas, @Dificultad_Recetas, @Categoria_Recetas, @Origen_Recetas, @ID_Usuario);
END;

CREATE PROC ActualizarReceta 
    @Id_Recetas INT,
    @Nombre_recetas VARCHAR(50),
    @Descripcion_Recetas VARCHAR(100),
    @Ingredientes_Recetas TEXT,
    @Cantidades_Recetas TEXT,
    @Instrucciones_Recetas TEXT,
    @Tiempo_Recetas VARCHAR(20),
    @Porciones_Recetas SMALLINT,
    @Dificultad_Recetas SMALLINT,
    @Categoria_Recetas VARCHAR(20),
    @Origen_Recetas VARCHAR(30)
AS
BEGIN
    UPDATE Recetas
    SET Nombre_recetas = @Nombre_recetas, 
        Descripcion_Recetas = @Descripcion_Recetas,
        Ingredientes_Recetas = @Ingredientes_Recetas,
        Cantidades_Recetas = @Cantidades_Recetas,
        Instrucciones_Recetas = @Instrucciones_Recetas,
        Tiempo_Recetas = @Tiempo_Recetas,
        Porciones_Recetas = @Porciones_Recetas,
        Dificultad_Recetas = @Dificultad_Recetas,
        Categoria_Recetas = @Categoria_Recetas,
        Origen_Recetas = @Origen_Recetas
    WHERE Id_Recetas = @Id_Recetas;
END;

CREATE PROC EliminarReceta 
    @Id_Recetas INT
AS
BEGIN
    DELETE FROM Recetas
    WHERE Id_Recetas = @Id_Recetas;
END;

CREATE PROC FiltrarReceta 
    @Id_Recetas INT
AS
BEGIN
    SELECT * FROM Recetas WHERE Id_Recetas = @Id_Recetas;

    SELECT C.* 
    FROM Comentarios C
    INNER JOIN Recetas R ON C.Id_Recetas = R.Id_Recetas
    WHERE R.Id_Recetas = @Id_Recetas;
END;

CREATE PROC InsertarComentario 
    @estado_comentario VARCHAR(10),
    @ID_Usuario INT,
    @Id_Recetas INT
AS
BEGIN
    INSERT INTO Comentarios (estado_comentario, ID_Usuario, Id_Recetas)
    VALUES (@estado_comentario, @ID_Usuario, @Id_Recetas);
END;

CREATE PROC ActualizarComentario 
    @ID_Comentarios INT,
    @estado_comentario VARCHAR(10)
AS
BEGIN
    UPDATE Comentarios
    SET estado_comentario = @estado_comentario
    WHERE ID_Comentarios = @ID_Comentarios;
END;

CREATE PROC EliminarComentario 
    @ID_Comentarios INT
AS
BEGIN
    DELETE FROM Comentarios
    WHERE ID_Comentarios = @ID_Comentarios;
END;

CREATE PROC FiltrarComentario 
    @ID_Comentarios INT
AS
BEGIN
    SELECT * FROM Comentarios WHERE ID_Comentarios = @ID_Comentarios;
END;





