-- show grants for 'INF'@'%';
SELECT *
FROM CARPETA; -- Completa en el script cuidado con las claves primarias
SELECT *
FROM MINISTERIO; -- Completo en el script
SELECT *
FROM DEPARTAMENTO; -- Completo en la base de datos
SELECT *
FROM PROVINCIA; -- Completo en el script
SELECT *
FROM MUNICIPIO; -- Completo en el script
SELECT *
FROM CLASIFICACION; -- Completo en el script
SELECT *
FROM UNIDAD; -- Se tienen datos en el script
SELECT *
FROM ESTADO; -- Completo en el script
SELECT *
FROM PROPIEDAD; -- Se tiene en el script
SELECT *
FROM PROPIETARIO; -- Se tiene en el script con fechas "currendate"
SELECT *
FROM ACTIVIDAD; -- Completa en el script
SELECT *
FROM PARCELA; -- Faltan datos
SELECT *
FROM TRAMITE; -- Faltan datos
SELECT *
FROM PERSONAL; -- Faltan datos
SELECT *
FROM ASIGNA; -- Faltan datos
SELECT *
FROM DEDICA; -- Faltan datos
SELECT *
FROM ENCUENTRA; -- Faltan datos
SELECT *
FROM TIENE;
-- Faltan datos

-- REPORTES DE LAS PROPIEDADES EN SUS DIFERENTES ESTADOS
SELECT *
FROM (DEPARTAMENTO
         NATURAL JOIN PROVINCIA
         NATURAL JOIN MUNICIPIO
         NATURAL JOIN PROPIEDAD
         NATURAL JOIN PARCELA);

-- REPORTES DE LAS PROPIEDADES SANEADAS - NO SANEADAS
SELECT ID_PROPIEDAD, NOMBRE_PROPIEDAD, APELLIDO_PATERNO, APELLIDO_MATERNO, NOMBRES, SUPERFICIE, TIPO
FROM (PROPIEDAD
         NATURAL JOIN PARCELA
         NATURAL JOIN PROPIETARIO)
WHERE TIPO = 'SANEADA'
  AND TIPO = 'POR SANEAR';

-- REPORTES DE LAS PROPIEDADES CON ILEGALIDAD DE POSESION
SELECT ID_PROPIEDAD, NOMBRE_PROPIEDAD, APELLIDO_PATERNO, APELLIDO_MATERNO, NOMBRES, SUPERFICIE, TIPO
FROM (PROPIEDAD
         NATURAL JOIN PARCELA
         NATURAL JOIN PROPIETARIO)
WHERE TIPO = 'ILEGAL';

-- REPORTE DE PLANOS EN GENERAL???? O POR PARCELA??

-- REPORTES DIFERENTES CON PROPIETARIOS

-- REPORTES DIFERENTES CON PROCESOS

SELECT *
FROM (PROPIEDAD
         NATURAL JOIN CARPETA
         NATURAL JOIN TRAMITE
         NATURAL JOIN ENCUENTRA
         NATURAL JOIN ESTADO)




