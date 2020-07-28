-- Tablas SQL Proyecto

drop table if exists ACTIVIDAD;

drop table if exists ASIGNA;

drop table if exists CARPETA;

drop table if exists CLASIFICACION;

drop table if exists DEDICA;

drop table if exists DEPARTAMENTO;

drop table if exists ENCUENTRA;

drop table if exists ESTADO;

drop table if exists ILEGAL;

drop table if exists JURIDICO;

drop table if exists MINISTERIO;

drop table if exists MUNICIPIO;

drop table if exists PARCELA;

drop table if exists PERSONAL;

drop table if exists PROPIEDAD;

drop table if exists PROPIETARIO;

drop table if exists PROVINCIA;

drop table if exists SANEADO;

drop table if exists SANEAR;

drop table if exists SUPERFICIE;

drop table if exists TECNICO;

drop table if exists TIENE;

drop table if exists TRAMITE;

drop table if exists UNIDAD;

/*==============================================================*/
/* Table: ACTIVIDAD                                             */
/*==============================================================*/
create table ACTIVIDAD
(
   ID_ACTIVIDAD         int not null auto_increment,
   TIPO_ACTIVIDAD       char(200) not null,
   primary key (ID_ACTIVIDAD)
);

/*==============================================================*/
/* Table: ASIGNA                                                */
/*==============================================================*/
create table ASIGNA
(
   ID_TRAMITE           int not null auto_increment,
   ID_PERSONAL          int not null,
   primary key (ID_TRAMITE, ID_PERSONAL)
);

/*==============================================================*/
/* Table: CARPETA                                               */
/*==============================================================*/
create table CARPETA
(
   ID_CARPETA           int not null auto_increment,
   ID_UNIDAD            int not null,
   ID_PROPIEDAD         int not null,
   FECHA                date not null,
   NOTAS                char(200) not null,
   HOJA_DE_RUTA         int not null,
   primary key (ID_CARPETA)
);

/*==============================================================*/
/* Table: CLASIFICACION                                         */
/*==============================================================*/
create table CLASIFICACION
(
   ID_CLASIFICACION     int not null auto_increment,
   TIPO_CLASIFICACION   char(200) not null,
   primary key (ID_CLASIFICACION)
);

/*==============================================================*/
/* Table: DEDICA                                                */
/*==============================================================*/
create table DEDICA
(
   CI                   int not null auto_increment,
   ID_ACTIVIDAD         int not null,
   primary key (CI, ID_ACTIVIDAD)
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO
(
   ID_DEPARTAMENTO      int not null auto_increment,
   NOMBRE_DEPARTAMENTO  char(200) not null,
   NRO_HABITANTES       int not null,
   primary key (ID_DEPARTAMENTO)
);

/*==============================================================*/
/* Table: ENCUENTRA                                             */
/*==============================================================*/
create table ENCUENTRA
(
   ID_TRAMITE           int not null auto_increment,
   ID_ESTADO            int not null,
   primary key (ID_TRAMITE, ID_ESTADO)
);

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO
(
   ID_ESTADO            int not null auto_increment,
   NOMBRE_ESTADO        char(200) not null,
   primary key (ID_ESTADO)
);

/*==============================================================*/
/* Table: ILEGAL                                                */
/*==============================================================*/
create table ILEGAL
(
   ID_SUPERFICIE        int not null auto_increment,
   ID_PARCELA           int,
   EXTENSION            float not null,
   UBICACION            char(200) not null,
   primary key (ID_SUPERFICIE)
);

/*==============================================================*/
/* Table: JURIDICO                                              */
/*==============================================================*/
create table JURIDICO
(
   ID_PERSONAL          int not null auto_increment,
   ESPECIALIDAD         char(200) not null,
   primary key (ID_PERSONAL)
);

/*==============================================================*/
/* Table: MINISTERIO                                            */
/*==============================================================*/
create table MINISTERIO
(
   ID_MINISTERIO        int not null auto_increment,
   NOMBRE_MINISTERIO    char(200) not null,
   primary key (ID_MINISTERIO)
);

/*==============================================================*/
/* Table: MUNICIPIO                                             */
/*==============================================================*/
create table MUNICIPIO
(
   ID_MUNICIPIO         int not null auto_increment,
   ID_PROVINCIA         int not null,
   NOMBRE_MUNICIPIO     char(200) not null,
   primary key (ID_MUNICIPIO)
);

/*==============================================================*/
/* Table: PARCELA                                               */
/*==============================================================*/
create table PARCELA
(
   ID_PARCELA           int not null auto_increment,
   CI                   int not null,
   ID_PROPIEDAD         int not null,
   NOMBRE_PARCELA       char(200) not null,
   primary key (ID_PARCELA)
);

/*==============================================================*/
/* Table: PERSONAL                                              */
/*==============================================================*/
create table PERSONAL
(
   ID_PERSONAL          int not null auto_increment,
   primary key (ID_PERSONAL)
);

/*==============================================================*/
/* Table: PROPIEDAD                                             */
/*==============================================================*/
create table PROPIEDAD
(
   ID_PROPIEDAD         int not null auto_increment,
   ID_MUNICIPIO         int not null,
   NOMBRE_PROPIEDAD     char(100) not null,
   primary key (ID_PROPIEDAD)
);

/*==============================================================*/
/* Table: PROPIETARIO                                           */
/*==============================================================*/
create table PROPIETARIO
(
   CI                   int not null auto_increment,
   NOMBRES              char(200) not null,
   APELLIDO_PATERNO     char(200) not null,
   APELLIDO_MATERNO     char(200) not null,
   FECHA_NACIMIENTO     date not null,
   primary key (CI)
);

/*==============================================================*/
/* Table: PROVINCIA                                             */
/*==============================================================*/
create table PROVINCIA
(
   ID_PROVINCIA         int not null auto_increment,
   ID_DEPARTAMENTO      int not null,
   NOMBRE_PROVINCIA     char(200) not null,
   primary key (ID_PROVINCIA)
);

/*==============================================================*/
/* Table: SANEADO                                               */
/*==============================================================*/
create table SANEADO
(
   ID_SUPERFICIE        int not null auto_increment,
   ID_PARCELA           int,
   EXTENSION            float not null,
   UBICACION            char(200) not null,
   NRO_RESOLUCION       int,
   FECHA_SANEAMIENTO    date,
   OBSERVACIONES        char(200),
   primary key (ID_SUPERFICIE)
);

/*==============================================================*/
/* Table: SANEAR                                                */
/*==============================================================*/
create table SANEAR
(
   ID_SUPERFICIE        int not null auto_increment,
   ID_TRAMITE           int not null,
   ID_PARCELA           int,
   EXTENSION            float not null,
   UBICACION            char(200) not null,
   primary key (ID_SUPERFICIE)
);

/*==============================================================*/
/* Table: SUPERFICIE                                            */
/*==============================================================*/
create table SUPERFICIE
(
   ID_SUPERFICIE        int not null auto_increment,
   ID_PARCELA           int not null,
   EXTENSION            float not null,
   UBICACION            char(200) not null,
   primary key (ID_SUPERFICIE)
);

/*==============================================================*/
/* Table: TECNICO                                               */
/*==============================================================*/
create table TECNICO
(
   ID_PERSONAL          int not null auto_increment,
   ESPECIALIDAD         char(200) not null,
   primary key (ID_PERSONAL)
);

/*==============================================================*/
/* Table: TIENE                                                 */
/*==============================================================*/
create table TIENE
(
   ID_PROPIEDAD         int not null auto_increment,
   ID_CLASIFICACION     int not null,
   primary key (ID_PROPIEDAD, ID_CLASIFICACION)
);

/*==============================================================*/
/* Table: TRAMITE                                               */
/*==============================================================*/
create table TRAMITE
(
   ID_TRAMITE           int not null auto_increment,
   ID_CARPETA           int not null,
   ID_SUPERFICIE        int not null,
   FECHA_INICIO         date not null,
   FECHA_FIN            date not null,
   primary key (ID_TRAMITE)
);

/*==============================================================*/
/* Table: UNIDAD                                                */
/*==============================================================*/
create table UNIDAD
(
   ID_UNIDAD            int not null auto_increment,
   ID_MINISTERIO        int not null,
   NOMBRE_UNIDAD        char(200) not null,
   primary key (ID_UNIDAD)
);

alter table ASIGNA add constraint FK_ASIGNA foreign key (ID_TRAMITE)
      references TRAMITE (ID_TRAMITE) on delete restrict on update restrict;

alter table ASIGNA add constraint FK_ASIGNA2 foreign key (ID_PERSONAL)
      references PERSONAL (ID_PERSONAL) on delete restrict on update restrict;

alter table CARPETA add constraint FK_ADJUNTA foreign key (ID_PROPIEDAD)
      references PROPIEDAD (ID_PROPIEDAD) on delete restrict on update restrict;

alter table CARPETA add constraint FK_ENVIA foreign key (ID_UNIDAD)
      references UNIDAD (ID_UNIDAD) on delete restrict on update restrict;

alter table DEDICA add constraint FK_DEDICA foreign key (CI)
      references PROPIETARIO (CI) on delete restrict on update restrict;

alter table DEDICA add constraint FK_DEDICA2 foreign key (ID_ACTIVIDAD)
      references ACTIVIDAD (ID_ACTIVIDAD) on delete restrict on update restrict;

alter table ENCUENTRA add constraint FK_ENCUENTRA foreign key (ID_TRAMITE)
      references TRAMITE (ID_TRAMITE) on delete restrict on update restrict;

alter table ENCUENTRA add constraint FK_ENCUENTRA2 foreign key (ID_ESTADO)
      references ESTADO (ID_ESTADO) on delete restrict on update restrict;

alter table ILEGAL add constraint FK_INHERITANCE_6 foreign key (ID_SUPERFICIE)
      references SUPERFICIE (ID_SUPERFICIE) on delete restrict on update restrict;

alter table JURIDICO add constraint FK_ES foreign key (ID_PERSONAL)
      references PERSONAL (ID_PERSONAL) on delete restrict on update restrict;

alter table MUNICIPIO add constraint FK_CONTIENE foreign key (ID_PROVINCIA)
      references PROVINCIA (ID_PROVINCIA) on delete restrict on update restrict;

alter table PARCELA add constraint FK_CORRESPONDE foreign key (ID_PROPIEDAD)
      references PROPIEDAD (ID_PROPIEDAD) on delete restrict on update restrict;

alter table PARCELA add constraint FK_PERTENECE_P_P foreign key (CI)
      references PROPIETARIO (CI) on delete restrict on update restrict;

alter table PROPIEDAD add constraint FK_CONTIENE_M_P foreign key (ID_MUNICIPIO)
      references MUNICIPIO (ID_MUNICIPIO) on delete restrict on update restrict;

alter table PROVINCIA add constraint FK_PERTENECE foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTO (ID_DEPARTAMENTO) on delete restrict on update restrict;

alter table SANEADO add constraint FK_INHERITANCE_3 foreign key (ID_SUPERFICIE)
      references SUPERFICIE (ID_SUPERFICIE) on delete restrict on update restrict;

alter table SANEAR add constraint FK_INHERITANCE_4 foreign key (ID_SUPERFICIE)
      references SUPERFICIE (ID_SUPERFICIE) on delete restrict on update restrict;

alter table SANEAR add constraint FK_RELATIONSHIP_15 foreign key (ID_TRAMITE)
      references TRAMITE (ID_TRAMITE) on delete restrict on update restrict;

alter table SUPERFICIE add constraint FK_TIENE_P_S foreign key (ID_PARCELA)
      references PARCELA (ID_PARCELA) on delete restrict on update restrict;

alter table TECNICO add constraint FK_INHERITANCE_5 foreign key (ID_PERSONAL)
      references PERSONAL (ID_PERSONAL) on delete restrict on update restrict;

alter table TIENE add constraint FK_TIENE foreign key (ID_PROPIEDAD)
      references PROPIEDAD (ID_PROPIEDAD) on delete restrict on update restrict;

alter table TIENE add constraint FK_TIENE2 foreign key (ID_CLASIFICACION)
      references CLASIFICACION (ID_CLASIFICACION) on delete restrict on update restrict;

alter table TRAMITE add constraint FK_RELATIONSHIP_16 foreign key (ID_SUPERFICIE)
      references SANEAR (ID_SUPERFICIE) on delete restrict on update restrict;

alter table TRAMITE add constraint FK_TIENE_C_T foreign key (ID_CARPETA)
      references CARPETA (ID_CARPETA) on delete restrict on update restrict;

alter table UNIDAD add constraint FK_PERTENECE_M_U foreign key (ID_MINISTERIO)
      references MINISTERIO (ID_MINISTERIO) on delete restrict on update restrict;
