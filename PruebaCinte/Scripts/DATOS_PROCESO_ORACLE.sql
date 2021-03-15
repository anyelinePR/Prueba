/* 
	Autor			:	Angela Pardo 
	Fecha			:	14032021
	Tabla           :	DATOS_PROCESO
	BD				:	ORACLE
*/

DECLARE
v_sql INTEGER;
 
BEGIN
SELECT COUNT(*) INTO v_sql FROM all_tables WHERE table_name = 'DATOS_PROCESO';
IF v_sql<=0
THEN
execute immediate 'CREATE TABLE DATOS_PROCESO(
	dp_pk_id int GENERATED ALWAYS AS IDENTITY,
	dp_nombre_archivo varchar(100) NULL,
	dp_fecha_inicio date DEFAULT SYSDATE NOT NULL,
	dp_fecha_fin date NULL,
	dp_cantidad_registros numeric(8, 0) NULL,
    PRIMARY KEY(dp_pk_id)
)';
ELSE
    DBMS_OUTPUT.put_line ('TABLA YA EXISTE');
END IF;
END;