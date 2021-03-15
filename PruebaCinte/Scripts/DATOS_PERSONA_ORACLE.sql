/* 
	Autor			:	Angela Pardo 
	Fecha			:	14032021
	Tabla           :	DATOS_PERSONA
	BD				:	ORACLE
*/

DECLARE
v_sql INTEGER;
 
BEGIN
SELECT COUNT(*) INTO v_sql FROM all_tables WHERE table_name = 'DATOS_PERSONA';
IF v_sql<=0
THEN
execute immediate 'CREATE TABLE DATOS_PERSONA(
    id_datos int GENERATED ALWAYS AS IDENTITY,
    fk_proceso int REFERENCES DATOS_PROCESO(dp_pk_id),
    documento number(15,0) null,
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
    codigoDane number(15,0)  null,
    PRIMARY KEY(id_datos)
)';
ELSE
    DBMS_OUTPUT.put_line ('TABLA YA EXISTE');
END IF;
END;