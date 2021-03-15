USE [PRUEBAS]
GO
PRINT N'<<<<< creando table - "DATOS_PERSONA" >>>>>'
GO
/* 
	Autor			:	Angela Pardo
	Fecha			:	14032021
	Tabla           :	DATOS_PERSONA
	BD				:	SQL_SERVER
*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


IF NOT EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'DATOS_PERSONA') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
BEGIN
	CREATE TABLE DATOS_PERSONA(
	id_datos int IDENTITY(1,1) NOT NULL,
    fk_proceso int not null,
    documento numeric(15,0) null,
    fecha date  null,
    departamento varchar(255)  null,
    municipio varchar(255)  null,
    dia varchar(255)  null,
    hora date  null,
    sitio varchar(255)  null,
    agresor varchar(255)  null,
    victima varchar(255)  null,
    edad numeric(15,0) null,
    pais_nacimiento varchar(255)  null,
    clase_empleado varchar(255)  null,
    profesion varchar(255)  null,
    escolaridad varchar(255)  null,
    codigoDane numeric(15,0)  null,
)


ALTER TABLE DATOS_PERSONA
 ADD CONSTRAINT id_datos
	PRIMARY KEY CLUSTERED (id_datos ASC)

END
GO
