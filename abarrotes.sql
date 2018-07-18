-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-07-2018 a las 05:28:04
-- Versión del servidor: 5.5.42
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `abarrotes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `fecha` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL,
  `ingreso` double NOT NULL,
  `retiro` double NOT NULL,
  `saldo` decimal(8,2) DEFAULT NULL,
  `motivo` text COLLATE ucs2_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id`, `fecha`, `ingreso`, `retiro`, `saldo`, `motivo`) VALUES
(1, '2018-05-11', 0, 0, '100.00', '0'),
(2, '20180511', 0, 5, '95.00', 'Prueba'),
(3, '2018-05-11', 100, 0, '195.00', ''),
(4, '2018-05-11', 200, 0, '395.00', ''),
(5, '2018-05-11', 45, 0, '440.00', ''),
(6, '20180511', 0, 20, '420.00', 'compra de bolsas de basura'),
(7, '2018-05-11', 75, 0, '495.00', ''),
(8, '2018-05-11', 28, 0, '523.00', ''),
(9, '2018-05-12', 50, 0, '573.00', ''),
(10, '2018-05-12', 45, 0, '618.00', ''),
(11, '2018-06-08', 60, 0, '678.00', ''),
(12, '2018-06-08', 4, 0, '682.00', ''),
(13, '2018-06-08', 60, 0, '742.00', ''),
(14, '2018-06-08', 4, 0, '746.00', ''),
(15, '2018-06-08', 4, 0, '750.00', ''),
(16, '2018-06-08', 4, 0, '754.00', ''),
(17, '2018-06-08', 4, 0, '758.00', ''),
(18, '2018-06-08', 4, 0, '762.00', ''),
(19, '2018-06-08', 60, 0, '822.00', ''),
(20, '2018-06-08', 400, 0, '1222.00', ''),
(21, '2018-06-08', 400, 0, '1622.00', ''),
(22, '2018-06-08', 4, 0, '1626.00', ''),
(23, '2018-06-08', 100, 0, '1726.00', ''),
(24, '2018-06-08', 400, 0, '2126.00', ''),
(25, '2018-06-08', 404, 0, '2530.00', ''),
(26, '2018-06-08', 1204, 0, '3734.00', ''),
(27, '2018-06-08', 1208, 0, '4942.00', ''),
(28, '2018-06-08', 4, 0, '4946.00', ''),
(29, '2018-06-08', 4, 0, '4950.00', ''),
(30, '2018-06-08', 28, 0, '4978.00', ''),
(31, '2018-06-08', 40, 0, '5018.00', ''),
(32, '2018-06-08', 104, 0, '5122.00', ''),
(33, '2018-06-08', 484, 0, '5606.00', ''),
(34, '2018-06-08', 11.7, 0, '5617.70', ''),
(35, '2018-06-08', 2, 0, '5619.70', ''),
(36, '2018-06-08', 7.5, 0, '5627.20', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `carga`
--

INSERT INTO `carga` (`idcarga`, `fecha`, `idproducto`, `cantidad`, `precio_unitario`, `precio_total`) VALUES
(1, '2018-06-08', '1003', 400, '0.00', '0.00'),
(2, '2018-07-11', '1001', 5, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `dpi` bigint(13) DEFAULT NULL,
  `direccion` varchar(125) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `saldo` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `dpi`, `direccion`, `telefono`, `saldo`) VALUES
(1, 'Oscar Antonio Valiente Arreaga', 1705762480201, '1a. ave 2-23 zona 6, Bo. El Porvenir, Guastatoya', '59600502', '2674.00'),
(5, 'Valiente', 123123, NULL, NULL, '4700.00'),
(6, 'Juan Nepomuseno Cortina', 123456789, 'Guatemala', '596054', '65.00'),
(7, 'Fabian Estrada', 123145678, 'Guatemalam', '1564866', '158.00');

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
  `cantidad` float DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle_venta`, `idventa`, `idproducto`, `cantidad`, `subtotal`) VALUES
(1, 1, '1001', 1, '4.00'),
(2, 2, '1001', 1, '4.00'),
(3, 3, '1001', 1, '4.00'),
(4, 4, '1001', 1, '4.00'),
(5, 5, '1001', 1, '4.00'),
(6, 6, '1001', 1, '4.00'),
(7, 7, '1001', 1, '4.00'),
(8, 8, '1001', 1, '4.00'),
(9, 9, '1001', 1, '4.00'),
(10, 10, '1001', 1, '4.00'),
(11, 11, '1001', 1, '4.00'),
(12, 12, '1001', 12, '45.00'),
(13, 14, '1001', 7, '28.00'),
(14, 15, '1001', 10, '40.00'),
(15, 16, '1001', 12, '45.00'),
(16, 17, '1001', 1, '4.00'),
(17, 27, '1002', 1, '60.00'),
(18, 28, '1003', 0, '400.00'),
(19, 29, '1003', 0, '400.00'),
(20, 30, '1003', 0.01, '4.00'),
(21, 31, '1003', 0.07, '28.00'),
(22, 31, '1002', 1, '60.00'),
(23, 31, '1001', 3, '12.00'),
(24, 33, '1003', 1, '400.00'),
(25, 34, '1003', 1, '400.00'),
(26, 34, '1003', 0.01, '4.00'),
(27, 35, '1003', 1, '400.00'),
(28, 35, '1003', 0.01, '4.00'),
(29, 35, '1003', 1, '400.00'),
(30, 35, '1003', 1, '400.00'),
(31, 36, '1003', 1, '400.00'),
(32, 36, '1003', 0.01, '4.00'),
(33, 36, '1003', 1, '400.00'),
(34, 36, '1003', 1, '400.00'),
(35, 36, '1003', 0.01, '4.00'),
(36, 37, '1003', 0.01, '4.00'),
(37, 38, '1003', 0.01, '4.00'),
(38, 40, '1003', 0.01, '4.00'),
(39, 40, '1003', 0.06, '24.00'),
(40, 42, '1002', 3, '180.00'),
(41, 43, '1003', 0.1, '40.00'),
(42, 44, '1003', 0.25, '100.00'),
(43, 44, '1001', 1, '4.00'),
(44, 46, '1003', 0.21, '84.00'),
(45, 46, '1003', 1, '400.00'),
(46, 47, '1003', 0.03, '11.70'),
(47, 48, '1003', 0.01, '2.00'),
(48, 49, '1003', 2, '7.50');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`id_devolucion`, `fecha`, `idcliente`, `idventa`, `total`) VALUES
(1, '2018-05-11', 1, 11, '4.00'),
(2, '2018-05-11', 1, 11, '4.00');

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
('user', '202cb962ac59075b964b07152d234b70', 'Usuario', 0, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_cliente`
--

CREATE TABLE `pago_cliente` (
  `idpago_cliente` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  `total_abono` decimal(8,2) DEFAULT NULL,
  `saldo_anterior` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `pago_cliente`
--

INSERT INTO `pago_cliente` (`idpago_cliente`, `fecha`, `idcliente`, `total_abono`, `saldo_anterior`) VALUES
(1, '2018-05-11', 1, '200.00', 0),
(2, '2018-05-11', 1, '100.00', 4800),
(3, '2018-05-11', 1, '700.00', 4700),
(4, '2018-05-11', 1, '500.00', 4000),
(5, '2018-05-11', 1, '10.00', 3504),
(6, '2018-05-11', 1, '100.00', 3494),
(7, '2018-05-11', 5, '100.00', 5000),
(8, '2018-05-11', 1, '100.00', 3394),
(9, '2018-05-11', 1, '100.00', 3294),
(10, '2018-05-11', 1, '100.00', 3194),
(11, '2018-05-11', 1, '100.00', 3194),
(12, '2018-05-11', 1, '100.00', 3194),
(13, '2018-05-11', 1, '100.00', 2894),
(14, '2018-05-11', 1, '100.00', 2794),
(15, '2018-05-11', 1, '100.00', 2694),
(16, '2018-05-11', 1, '100.00', 2594),
(17, '2018-05-11', 5, '200.00', 4900),
(18, '2018-05-11', 6, '75.00', 100),
(19, '2018-05-12', 7, '50.00', 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` varchar(20) COLLATE ucs2_spanish2_ci NOT NULL,
  `nombre` varchar(100) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `preciocosto` decimal(8,2) DEFAULT NULL,
  `precioventamenor` decimal(8,2) DEFAULT NULL,
  `precioventamayor` decimal(8,2) DEFAULT NULL,
  `cantidad` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `nombre`, `preciocosto`, `precioventamenor`, `precioventamayor`, `cantidad`) VALUES
('1001', 'Jabón Protex', '2.50', '4.00', '3.75', 48),
('1002', 'Jarabe para la tos', '50.00', '60.00', '55.00', 195),
('1003', 'Frijol', '350.00', '400.00', '390.00', 488.32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_venta`
--

CREATE TABLE `tipo_venta` (
  `idtipo_venta` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

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
  `total` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `fecha`, `idcliente`, `idtipo_venta`, `total`) VALUES
(1, '2018-05-11', 1, 1, '4.00'),
(2, '2018-05-11', 1, 1, '4.00'),
(3, '2018-05-11', 1, 1, '4.00'),
(4, '2018-05-11', 1, 1, '4.00'),
(5, '2018-05-11', 1, 1, '4.00'),
(6, '2018-05-11', 1, 1, '4.00'),
(7, '2018-05-11', 1, 1, '4.00'),
(8, '2018-05-11', 1, 1, '4.00'),
(9, '0000-00-00', 1, 1, '4.00'),
(10, '2018-05-11', 1, 1, '4.00'),
(11, '2018-05-11', 1, 2, '4.00'),
(12, '2018-05-11', 1, 1, '45.00'),
(14, '2018-05-11', 6, 1, '28.00'),
(15, '2018-05-11', 6, 2, '40.00'),
(16, '2018-05-12', 7, 1, '45.00'),
(17, '2018-05-12', 7, 2, '4.00'),
(19, '2018-06-08', 7, 1, '60.00'),
(20, '2018-06-08', 1, 1, '4.00'),
(21, '2018-06-08', 5, 1, '60.00'),
(22, '2018-06-08', 1, 1, '4.00'),
(23, '2018-06-08', 1, 1, '4.00'),
(24, '2018-06-08', 1, 1, '4.00'),
(25, '2018-06-08', 1, 1, '4.00'),
(26, '2018-06-08', 1, 1, '4.00'),
(27, '2018-06-08', 1, 1, '60.00'),
(28, '2018-06-08', 1, 1, '400.00'),
(29, '2018-06-08', 1, 1, '400.00'),
(30, '2018-06-08', 1, 1, '400.00'),
(31, '2018-06-08', 6, 1, '100.00'),
(33, '2018-06-08', 1, 1, '400.00'),
(34, '2018-06-08', 1, 1, '404.00'),
(35, '2018-06-08', 1, 1, '1204.00'),
(36, '2018-06-08', 1, 1, '1208.00'),
(37, '2018-06-08', 1, 1, '4.00'),
(38, '2018-06-08', 5, 1, '4.00'),
(40, '2018-06-08', 1, 1, '28.00'),
(41, '2018-06-08', 7, 2, '12.00'),
(42, '2018-06-08', 1, 2, '180.00'),
(43, '2018-06-08', 5, 1, '40.00'),
(44, '2018-06-08', 1, 1, '104.00'),
(46, '2018-06-08', 1, 1, '484.00'),
(47, '2018-06-08', 1, 1, '11.70'),
(48, '2018-06-08', 1, 1, '2.00'),
(49, '2018-06-08', 1, 1, '7.50');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

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
  ADD KEY `fk_detalle_venta_producto1_idx` (`idproducto`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`id_devolucion`),
  ADD KEY `fk_devolucion_cliente1_idx` (`idcliente`),
  ADD KEY `fk_devolucion_venta1_idx` (`idventa`);

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
  ADD KEY `fk_pago_cliente_cliente1_idx` (`idcliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

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
  ADD KEY `fk_venta_cliente1_idx` (`idcliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `carga`
--
ALTER TABLE `carga`
  MODIFY `idcarga` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `detalle_devolucion`
--
ALTER TABLE `detalle_devolucion`
  MODIFY `id_detalle_devolucion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `id_devolucion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pago_cliente`
--
ALTER TABLE `pago_cliente`
  MODIFY `idpago_cliente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `tipo_venta`
--
ALTER TABLE `tipo_venta`
  MODIFY `idtipo_venta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga`
--
ALTER TABLE `carga`
  ADD CONSTRAINT `fk_carga_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_detalle_venta_producto1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_venta_venta1` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `fk_devolucion_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_devolucion_venta1` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pago_cliente`
--
ALTER TABLE `pago_cliente`
  ADD CONSTRAINT `fk_pago_cliente_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_tipo_venta1` FOREIGN KEY (`idtipo_venta`) REFERENCES `tipo_venta` (`idtipo_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
