drop database if exists MuseosDB;
create database MuseosDB;

create table Museo(
idMuseo int not null auto_increment,
nombre varchar(60),
ubicacion varchar(60),
descripcion varchar(400),
constraint PK_Museo primary key (idMuseo asc)
);

create table Muestra(
idMuestra int not null auto_increment,
idMuseo int not null,
descripcion varchar(400),
constraint PK_Muestra primary key (idMuestra asc),
constraint FK_Muestra_Museo foreign key (idMuseo) references Museo (idMuseo) on delete Restrict on update Restrict
);

create table Recorrido(
idRecorrido int not null auto_increment,
idMuseo int not null,
constraint PK_Recorrido primary key (idRecorrido asc),
constraint FK_Recorrido_Museo foreign key (idMuseo) references Museo (idMuseo) on delete Restrict on update Restrict
);

create table MuestrasXRecorrido(
idMuestraRecorrido int not null auto_increment,
idRecorrido int not null,
idMuestra int not null,
constraint PK_MuestrasXRecorrido primary key (idMuestraRecorrido),
constraint FK_MuestrasXRecorrido_Recorrido foreign key (idRecorrido) references Recorrido (idRecorrido) on delete restrict on update restrict,
constraint FK_MuestrasXRecorrido_Muestra foreign key (idMuestra) references Muestra (idMuestra) on delete restrict on update restrict
);

create table Usuario(
idUsuario int not null auto_increment,
nombre varchar(45),
apellido varchar(45),
email varchar(60),
constraint PK_Usuario primary key (idUsuario asc)
);

create table Resenia(
idResenia int not null auto_increment,
idUsuario int not null,
idMuestra int not null,
resenia varchar(400),
constraint PK_Resenias primary key (idResenia),
constraint FK_Resenia_Usuario foreign key (idUsuario) references Usuario (idUsuario) on delete restrict on update restrict,
constraint FK_Resenia_Muestra foreign key (idMuestra) references Muestra (idMuestra) on delete restrict on update restrict
);

create table Visita(
idVisita int not null auto_increment,
idUsuario int not null,
idGuia int not null,
idRecorrido int not null,
fechaHora datetime,
constraint PK_Visita primary key (idVisita),
constraint FK_Visita_Usuario foreign key (idUsuario) references Usuario (idUsuario) on delete restrict on update restrict,
constraint FK_Visita_Guia foreign key (idGuia) references Guia (idGuia) on delete restrict on update restrict,
constraint FK_Visita_Recorrido foreign key (idRecorrido) references Recorrido (idRecorrido) on delete restrict on update restrict
);

create table Guia(
idGuia int not null auto_increment,
nombreCompleto varchar(70),
constraint PK_Guia primary key (idGuia)
);

create table Idioma(
idIdioma int not null auto_increment,
idioma varchar(45),
constraint PK_Idioma primary key (idIdioma)
);

create table IdiomasXGuia(
idIdiomaGuia int not null auto_increment,
idGuia int not null,
idIdioma int not null,
constraint PK_IdiomasXGuia primary key (idIdiomaGuia asc),
constraint FK_IdiomasXGuia_Guia foreign key (idGuia) references Guia (idGuia) on delete restrict on update restrict,
constraint FK_IdiomasXGuia_Idioma foreign key (idIdioma) references Idioma (idIdioma) on delete restrict on update restrict
);
