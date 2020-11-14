create database web
use web

create table usuario(
	idUsuario int identity,
	usu nvarchar(100),
	pass nvarchar(100),
	rol nvarchar(100),
	constraint pk_usuario_idUsuario primary key(idUsuario)
)

create table producto(
	idProducto int identity,
	producto nvarchar(100),
	stock int,
	precioVenta decimal,
	precioCompra decimal,
	constraint pk_producto_idProducto primary key(idProducto)
)

create table proveedor(
	idProveedor int identity,
	provee nvarchar(100),
	telefono nvarchar(10),
	constraint pk_proveedor_idProveedor primary  key(idProveedor)
)

create table compra(
	idPedido int identity,
	fechaPedido date,
	fechaPago date,
	usuarioElab nvarchar(100),
	usuarioAut nvarchar(100),
	usuarioRev nvarchar(100),
	idProveedor int references proveedor,
	constraint pk_compra_idPedido primary key(idPedido)
)

create table detalleCompra(
	idDetalle int identity,
	idPedido int references compra,
	idProducto int references producto,
	cantidadCompra int,
	precioCompra decimal,
)

insert into usuario values ('jjfparedes','12345','Admin')


