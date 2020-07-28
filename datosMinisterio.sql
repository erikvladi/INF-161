INSERT INTO DEPARTAMENTO (ID_DEPARTAMENTO, NOMBRE_DEPARTAMENTO, NRO_HABITANTES)
VALUES (1, 'LA PAZ', 31415600),
       (2, 'COCHABAMBA', 31415600),
       (3, 'SANTA CRUZ', 31415600),
       (4, 'POTOSI', 31415600),
       (5, 'TARIJA', 31415600),
       (6, 'ORURO', 31415600),
       (7, 'BENI', 31415600),
       (8, 'PANDO', 31415600),
       (9, 'CHUQUISACA', 31415600)
;

INSERT INTO PROVINCIA (ID_PROVINCIA, ID_DEPARTAMENTO, NOMBRE_PROVINCIA)
VALUES (1, 1, 'ABEL ITURRALDE'),
       (2, 1, 'PEDRO DOMINGO MURILLO'),
       (3, 1, 'PACAJES'),
       (4, 1, 'LARECAJA'),
       (5, 1, 'INQUISIVI'),
       (6, 1, 'SUD YUNGAS'),
       (7, 1, 'INGAVI'),
       (8, 1, 'MUÑECAS'),
       (9, 1, 'FRANZ TAMAYO'),
       (10, 1, 'AROMA'),
       (11, 1, 'CARANAVI'),
       (12, 1, 'JOSE RAMON LOAYZA'),
       (13, 1, 'BAUTISTA SAAVEDRA'),
       (14, 1, 'ELIODORO CAMACHO'),
       (15, 1, 'OMASUYOS'),
       (16, 1, 'GENERAL JOSE MANUEL PANDO'),
       (17, 1, 'GUALBERTO VILLAROEL'),
       (18, 1, 'NOR YUNGAS'),
       (19, 1, 'LOS ANDES'),
       (20, 1, 'MANKO KAPAC');

INSERT INTO MUNICIPIO (ID_MUNICIPIO, ID_PROVINCIA, NOMBRE_MUNICIPIO)
VALUES (1, 1, 'IXIAMAS'),
       (2, 1, 'SAN BUENAVENTURA'),
       (3, 2, 'LA PAZ'),
       (4, 2, 'PALCA'),
       (5, 2, 'MECAPACA'),
       (6, 2, 'ACHOCALLA'),
       (7, 2, 'EL ALTO'),
       (8, 3, 'CORO CORO'),
       (9, 3, 'CAQUIAVIRI'),
       (10, 3, 'CALACOTO'),
       (11, 3, 'COMANCHE'),
       (12, 3, 'CHARAÑA'),
       (13, 3, 'WALDO BALLIVIAN'),
       (14, 3, 'NAZACARA DE PACAJES'),
       (15, 3, 'CALLAPA');
       -- (16, 4, '...'); -- SIGUIENTE PROVINCIA...LARECAJA
