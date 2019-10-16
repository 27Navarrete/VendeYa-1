create database VendeYa;

use VendeYa;

create table Usuarios(
idUsuario int not null auto_increment,
nombreUsuario varchar(100) not null,
numeroTelefono varchar(13) not null,
email varchar(100) not null,
password varchar(100) not null,
primary key(idUsuario)
)engine = innoDB;

create table Cuentas (
idCuenta int not null auto_increment,
idUsuario int not null,
foto varchar(100) not null,
fec_creacion datetime not null,
primary key(idCuenta),
foreign key(idUsuario) references Usuarios(idUsuario)
)engine = innoDB;


create table Categorias(
idCategoria int not null auto_increment,
nombre varchar(50) not null,
Img varchar(200) not null,
Descripcion varchar(1000) not null,
primary key(idCategoria)
)engine=innoDB;

create table subCategorias(
idsubCategoria int not null auto_increment,
nombre varchar(100) not null,
idCategoria int not null,
primary key(idSubCategoria),
foreign key(idCategoria)
references Categorias(idCategoria)
)engine=innoDB;

create table Imagenes(
idImagen int not null auto_increment,
Imagen longtext not null,
primary key(idImagen)
)engine= innoDB;

create table Productos(
idProducto int not null auto_increment,
idImagen int not null,
nombre varchar(100) not null,
precio decimal(5,2) not null,
idSubCategoria int not null,
primary key(idProducto),
foreign key(idSubCategoria)
references SubCategorias(idsubCategoria),
foreign key(idImagen) references Imagenes(idImagen)
)engine = innoDB;


create table Publicaciones (
idPublicacion int not null auto_increment,
idProducto int not null,
idCuenta int not null,
fec_Post date not null,
estado bool not null,
ubicacion varchar(25) not null,
primary key(idPublicacion),
foreign key(idCuenta)
references Cuentas(idCuenta),
foreign key(idProducto)
references Productos(idProducto)
)engine = innoDB;

