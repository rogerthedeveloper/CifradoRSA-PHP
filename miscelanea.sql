-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2019 a las 01:34:40
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miscelanea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `idBitacora` int(11) NOT NULL,
  `fechaHora` date NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `tabla` varchar(45) NOT NULL,
  `actividad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ingreso` double NOT NULL,
  `retiro` double NOT NULL,
  `saldo` decimal(8,2) DEFAULT NULL,
  `motivo` text COLLATE ucs2_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id`, `fecha`, `ingreso`, `retiro`, `saldo`, `motivo`) VALUES
(96, '2018-12-12', 0, 5000, '-5000.00', ''),
(97, '2018-12-12', 0, 5000, '-10000.00', ''),
(98, '2018-12-12', 0, 500, '-10500.00', ''),
(99, '2018-12-12', 9400, 0, '-1100.00', ''),
(100, '2018-12-12', 15, 0, '-1085.00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga`
--

CREATE TABLE `carga` (
  `idcarga` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idproducto` varchar(20) COLLATE ucs2_spanish2_ci NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(9,2) NOT NULL,
  `precio_total` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogoegresos`
--

CREATE TABLE `catalogoegresos` (
  `idCatalogoEgresos` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `descripcion`) VALUES
(1, 'Linea blanca'),
(2, 'Linea de sala');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `dpi` bigint(13) DEFAULT NULL,
  `nit` varchar(15) COLLATE ucs2_spanish2_ci NOT NULL,
  `direccion` varchar(125) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `departamento` varchar(100) COLLATE ucs2_spanish2_ci NOT NULL,
  `municipio` varchar(100) COLLATE ucs2_spanish2_ci NOT NULL,
  `referencia` varchar(150) COLLATE ucs2_spanish2_ci NOT NULL,
  `telefono` varchar(45) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `email` varchar(45) COLLATE ucs2_spanish2_ci NOT NULL,
  `idTipo_cliente` int(11) NOT NULL,
  `saldo` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `dpi`, `nit`, `direccion`, `departamento`, `municipio`, `referencia`, `telefono`, `email`, `idTipo_cliente`, `saldo`) VALUES
(1, 'Byron Fernando Calderon Ferrera ', 2743342160201, '8847961-7', 'Aldea Santa Lucia', 'El Progreso', 'Guastatoya', 'Donde hay una funeraria', '30349707', 'bcalderonf18@gmail.com', 1, '5000.00'),
(2, 'Roger Sosa', 2314035500101, '8357481-6', 'Barrio las Joyas', 'El Progreso', 'Guastatoya', 'En el callejon despues del mine. de trabajo, hasta adentro.', '53436438', 'rogerthedeveloper@gmail.com', 1, '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `noFactura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idTipoCompra` int(11) NOT NULL,
  `idFormaPago` int(11) NOT NULL,
  `noCheque` bigint(15) NOT NULL,
  `banco` varchar(80) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuento`
--

CREATE TABLE `descuento` (
  `idDescuento` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `porcentaje` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `idDetalleCompra` int(11) NOT NULL,
  `idCompra` int(11) NOT NULL,
  `idproducto` varchar(20) CHARACTER SET ucs2 COLLATE ucs2_spanish2_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioUnitario` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_devolucion`
--

CREATE TABLE `detalle_devolucion` (
  `id_detalle_devolucion` int(11) NOT NULL,
  `id_devolucion` int(11) NOT NULL,
  `idproducto` varchar(20) COLLATE ucs2_spanish2_ci NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` varchar(20) COLLATE ucs2_spanish2_ci NOT NULL,
  `cantidad` float NOT NULL,
  `idDescuento` int(11) NOT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `id_devolucion` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `total` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formapago`
--

CREATE TABLE `formapago` (
  `idFormapago` int(11) NOT NULL,
  `descripcion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formapago`
--

INSERT INTO `formapago` (`idFormapago`, `descripcion`) VALUES
(1, 'Efectivo'),
(2, 'Cheque');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gasto`
--

CREATE TABLE `gasto` (
  `noDocumento` int(11) NOT NULL,
  `tipoDocumento` int(11) NOT NULL,
  `idEgreso` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idFormaPago` int(11) NOT NULL,
  `noCheque` bigint(15) NOT NULL,
  `banco` varchar(120) NOT NULL,
  `noCuenta` bigint(15) NOT NULL,
  `idTipoGasto` int(11) NOT NULL,
  `idTipoCombustible` int(11) NOT NULL,
  `cantidadGalones` float(4,2) NOT NULL,
  `motivo` text NOT NULL,
  `total` double(7,2) NOT NULL,
  `totalIdp` double(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idInventario` int(9) NOT NULL,
  `idproducto` varchar(20) CHARACTER SET ucs2 COLLATE ucs2_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `ingreso` int(9) NOT NULL,
  `egreso` int(9) NOT NULL,
  `tipoMovimiento` text NOT NULL,
  `existencia` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `user` varchar(25) COLLATE ucs2_spanish2_ci NOT NULL,
  `pass` varchar(150) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  `token` varchar(50) COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`user`, `pass`, `nombre`, `rol`, `token`) VALUES
('admin', '202cb962ac59075b964b07152d234b70', 'Administrador', 1, '0'),
('francisco', '77b585384d28bc492651b3b28a5d288f', 'Francisco', 1, '0'),
('otto', '77b585384d28bc492651b3b28a5d288f', 'Otto', 1, '0'),
('user', '202cb962ac59075b964b07152d234b70', 'Usuario', 0, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_cliente`
--

CREATE TABLE `pago_cliente` (
  `idpago_cliente` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  `idFormaPago` int(11) NOT NULL,
  `noCheque` bigint(15) NOT NULL,
  `banco` varchar(100) COLLATE ucs2_spanish2_ci NOT NULL,
  `total_abono` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` varchar(20) COLLATE ucs2_spanish2_ci NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `preciocosto` decimal(8,2) DEFAULT NULL,
  `precioSugerido` decimal(8,2) DEFAULT NULL,
  `precioTop` decimal(8,2) DEFAULT NULL,
  `marca` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL,
  `serie` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL,
  `modelo` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idCategoria`, `nombre`, `preciocosto`, `precioSugerido`, `precioTop`, `marca`, `serie`, `modelo`) VALUES
('1001', 2, 'Amueblado de sala', '3000.00', '6000.00', '5500.00', 'Salami', '7as6s56d56d4f', '2019'),
('1010', 1, 'Platera', '1500.00', '3000.00', '2600.00', 'Patito', '1245a6s2e3d3', '2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nombreComercial` varchar(120) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `departamento` varchar(150) NOT NULL,
  `municipio` varchar(120) NOT NULL,
  `telefono` int(8) NOT NULL,
  `http` varchar(85) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contacto` varchar(120) NOT NULL,
  `telefonoContacto` int(8) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `nombre`, `nombreComercial`, `direccion`, `departamento`, `municipio`, `telefono`, `http`, `email`, `contacto`, `telefonoContacto`, `saldo`) VALUES
(1, 'Vida en Linea', 'Vid@Online', 'Barrio el Porvenir', 'El Progreso', 'Guastatoya', 79456321, 'www.vidaenlinea.com', 'vidalinea@gmail.com', 'Oscar Antonio Valiente Arreaga', 5960, 6000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocliente`
--

CREATE TABLE `tipocliente` (
  `idTipoCliente` int(11) NOT NULL,
  `descripcion` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipocliente`
--

INSERT INTO `tipocliente` (`idTipoCliente`, `descripcion`) VALUES
(1, 'Mayorista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocombustible`
--

CREATE TABLE `tipocombustible` (
  `idTipoCombustible` int(11) NOT NULL,
  `descripcion` varchar(120) NOT NULL,
  `idp` float(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocompra`
--

CREATE TABLE `tipocompra` (
  `idTipoCompra` int(11) NOT NULL,
  `descripcion` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipocompra`
--

INSERT INTO `tipocompra` (`idTipoCompra`, `descripcion`) VALUES
(1, 'Credito'),
(2, 'Contado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `idTipoDo` int(11) NOT NULL,
  `descripcion` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipogasto`
--

CREATE TABLE `tipogasto` (
  `idTipoGasto` int(11) NOT NULL,
  `descripcion` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_venta`
--

CREATE TABLE `tipo_venta` (
  `idtipo_venta` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_venta`
--

INSERT INTO `tipo_venta` (`idtipo_venta`, `nombre`) VALUES
(1, 'Contado'),
(2, 'Crédito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  `idtipo_venta` int(11) NOT NULL,
  `idFormapago` int(11) NOT NULL,
  `noCheque` bigint(15) NOT NULL,
  `banco` varchar(45) COLLATE ucs2_spanish2_ci NOT NULL,
  `total` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`idBitacora`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carga`
--
ALTER TABLE `carga`
  ADD PRIMARY KEY (`idcarga`),
  ADD KEY `fk_carga_producto_idx` (`idproducto`);

--
-- Indices de la tabla `catalogoegresos`
--
ALTER TABLE `catalogoegresos`
  ADD PRIMARY KEY (`idCatalogoEgresos`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD KEY `fk_cliente_tipo_cliente` (`idTipo_cliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `fk_compra_proveedor` (`idProveedor`),
  ADD KEY `fk_compra_tipo_compra` (`idTipoCompra`),
  ADD KEY `fk_03_compra_forma_pago` (`idFormaPago`);

--
-- Indices de la tabla `descuento`
--
ALTER TABLE `descuento`
  ADD PRIMARY KEY (`idDescuento`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`idDetalleCompra`),
  ADD KEY `fk_detalle_compra_compra` (`idCompra`),
  ADD KEY `fk_detalle_compra_producto` (`idproducto`);

--
-- Indices de la tabla `detalle_devolucion`
--
ALTER TABLE `detalle_devolucion`
  ADD PRIMARY KEY (`id_detalle_devolucion`),
  ADD KEY `fk_detalle_devolucion_devolucion1_idx` (`id_devolucion`),
  ADD KEY `fk_detalle_devolucion_producto1_idx` (`idproducto`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle_venta`),
  ADD KEY `fk_detalle_venta_venta1_idx` (`idventa`),
  ADD KEY `fk_detalle_venta_producto1_idx` (`idproducto`),
  ADD KEY `fk_detalle_venta_descuento` (`idDescuento`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`id_devolucion`),
  ADD KEY `fk_devolucion_cliente1_idx` (`idcliente`),
  ADD KEY `fk_devolucion_venta1_idx` (`idventa`);

--
-- Indices de la tabla `formapago`
--
ALTER TABLE `formapago`
  ADD PRIMARY KEY (`idFormapago`);

--
-- Indices de la tabla `gasto`
--
ALTER TABLE `gasto`
  ADD PRIMARY KEY (`noDocumento`),
  ADD KEY `fk_01_gasto_egreso` (`idEgreso`),
  ADD KEY `fk_02_gasto_tipo_documento` (`tipoDocumento`),
  ADD KEY `fk_03_gasto_forma_pago` (`idFormaPago`),
  ADD KEY `fk_04_gasto_tipo_gasto` (`idTipoGasto`),
  ADD KEY `fk_05_gasto_tipo_combustible` (`idTipoCombustible`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idInventario`),
  ADD KEY `fk_inventario_idproducto` (`idproducto`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `pago_cliente`
--
ALTER TABLE `pago_cliente`
  ADD PRIMARY KEY (`idpago_cliente`),
  ADD KEY `fk_pago_cliente_cliente1_idx` (`idcliente`),
  ADD KEY `fk_pago_forma_pago` (`idFormaPago`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `01_fk_categoria_idcate` (`idCategoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  ADD PRIMARY KEY (`idTipoCliente`);

--
-- Indices de la tabla `tipocombustible`
--
ALTER TABLE `tipocombustible`
  ADD PRIMARY KEY (`idTipoCombustible`);

--
-- Indices de la tabla `tipocompra`
--
ALTER TABLE `tipocompra`
  ADD PRIMARY KEY (`idTipoCompra`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`idTipoDo`);

--
-- Indices de la tabla `tipogasto`
--
ALTER TABLE `tipogasto`
  ADD PRIMARY KEY (`idTipoGasto`);

--
-- Indices de la tabla `tipo_venta`
--
ALTER TABLE `tipo_venta`
  ADD PRIMARY KEY (`idtipo_venta`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `fk_venta_tipo_venta1_idx` (`idtipo_venta`),
  ADD KEY `fk_venta_cliente1_idx` (`idcliente`),
  ADD KEY `fk_ventas_forma_pago` (`idFormapago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `idBitacora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `carga`
--
ALTER TABLE `carga`
  MODIFY `idcarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalogoegresos`
--
ALTER TABLE `catalogoegresos`
  MODIFY `idCatalogoEgresos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `descuento`
--
ALTER TABLE `descuento`
  MODIFY `idDescuento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `idDetalleCompra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_devolucion`
--
ALTER TABLE `detalle_devolucion`
  MODIFY `id_detalle_devolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `id_devolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formapago`
--
ALTER TABLE `formapago`
  MODIFY `idFormapago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idInventario` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago_cliente`
--
ALTER TABLE `pago_cliente`
  MODIFY `idpago_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  MODIFY `idTipoCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipocombustible`
--
ALTER TABLE `tipocombustible`
  MODIFY `idTipoCombustible` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipocompra`
--
ALTER TABLE `tipocompra`
  MODIFY `idTipoCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `idTipoDo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipogasto`
--
ALTER TABLE `tipogasto`
  MODIFY `idTipoGasto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_venta`
--
ALTER TABLE `tipo_venta`
  MODIFY `idtipo_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga`
--
ALTER TABLE `carga`
  ADD CONSTRAINT `fk_carga_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_tipo_cliente` FOREIGN KEY (`idTipo_cliente`) REFERENCES `tipocliente` (`idTipoCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_01_compra_proveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_02_compra_tipo_compra` FOREIGN KEY (`idTipoCompra`) REFERENCES `tipocompra` (`idTipoCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_03_compra_forma_pago` FOREIGN KEY (`idFormaPago`) REFERENCES `formapago` (`idFormapago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `fk_detalle_compra_compra` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`idCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_compra_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_devolucion`
--
ALTER TABLE `detalle_devolucion`
  ADD CONSTRAINT `fk_detalle_devolucion_devolucion1` FOREIGN KEY (`id_devolucion`) REFERENCES `devolucion` (`id_devolucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_devolucion_producto1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_venta_descuento` FOREIGN KEY (`idDescuento`) REFERENCES `descuento` (`idDescuento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_venta_producto1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_venta_venta1` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gasto`
--
ALTER TABLE `gasto`
  ADD CONSTRAINT `fk_01_gasto_egreso` FOREIGN KEY (`idEgreso`) REFERENCES `catalogoegresos` (`idCatalogoEgresos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_02_gasto_tipo_documento` FOREIGN KEY (`tipoDocumento`) REFERENCES `tipodocumento` (`idTipoDo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_03_gasto_forma_pago` FOREIGN KEY (`idFormaPago`) REFERENCES `formapago` (`idFormapago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_04_gasto_tipo_gasto` FOREIGN KEY (`idTipoGasto`) REFERENCES `tipogasto` (`idTipoGasto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_05_gasto_tipo_combustible` FOREIGN KEY (`idTipoCombustible`) REFERENCES `tipocombustible` (`idTipoCombustible`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_inventario_idproducto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pago_cliente`
--
ALTER TABLE `pago_cliente`
  ADD CONSTRAINT `fk_pago_forma_pago` FOREIGN KEY (`idFormaPago`) REFERENCES `formapago` (`idFormapago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `01_fk_categoria_idcate` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_ventas_forma_pago` FOREIGN KEY (`idFormapago`) REFERENCES `formapago` (`idFormapago`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
