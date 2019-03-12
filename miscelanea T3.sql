-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2019 a las 05:22:25
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

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
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `IDBANCO` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`IDBANCO`, `DESCRIPCION`) VALUES
(1, 'Banrural'),
(2, 'G&T');

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
(100, '2018-12-12', 15, 0, '-1085.00', ''),
(101, '2019-02-04', 3000, 0, '1915.00', ''),
(102, '2019-02-04', 3000, 0, '4915.00', ''),
(103, '2019-02-13', 100, 0, '5015.00', ''),
(104, '2019-02-13', 3050, 0, '8065.00', ''),
(105, '2019-02-15', 3000, 0, '11065.00', ''),
(106, '2019-02-15', 3000, 0, '14065.00', ''),
(107, '2019-02-15', 3000, 0, '17065.00', ''),
(108, '2019-02-15', 3100, 0, '20165.00', ''),
(109, '2019-02-15', 3100, 0, '23265.00', ''),
(110, '2019-02-15', 3100, 0, '26365.00', ''),
(111, '2019-02-15', 3100, 0, '29465.00', ''),
(112, '2019-02-19', 100, 0, '29565.00', ''),
(113, '2019-02-20', 200, 0, '29765.00', ''),
(114, '2019-03-07', 30, 0, '29795.00', ''),
(115, '2019-03-07', 10, 0, '29805.00', ''),
(116, '2019-03-11', 0, 200, '29605.00', '1rfff'),
(117, '2019-03-11', 180, 0, '29785.00', ''),
(118, '2019-03-11', 180, 0, '29965.00', ''),
(119, '2019-03-11', 180, 0, '30145.00', ''),
(120, '2019-03-11', 180, 0, '30325.00', ''),
(121, '2019-03-11', 180, 0, '30505.00', ''),
(122, '2019-03-11', 0, 50, '30455.00', 'pago de agua potable en la municipalidad');

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

--
-- Volcado de datos para la tabla `catalogoegresos`
--

INSERT INTO `catalogoegresos` (`idCatalogoEgresos`, `descripcion`) VALUES
(1, 'Teléfono'),
(2, 'Canon de Agua'),
(3, 'Energía Eléctrica');

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
(2, 'Linea de sala'),
(3, 'Utiles de Oficina');

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
(1, 'Byron Fernando Calderon Ferrera ', 2743342160201, '8847961-7', 'Aldea Santa Lucia', 'El Progreso', 'Guastatoya', 'Donde hay una funeraria', '30349707', 'bcalderonf18@gmail.com', 1, '4900.00'),
(2, 'Roger Sosa', 2314035500101, '8357481-6', 'Barrio las Joyas', 'El Progreso', 'Guastatoya', 'En el callejon despues del mine. de trabajo, hasta adentro.', '53436438', 'rogerthedeveloper@gmail.com', 1, '80.00'),
(3, 'oscar antnio valiente', 1705762480201, '1017228-9', '1a ave. 2-23 zona 6,', 'El Progreso', 'Guastatoya', 'a la par de una casa', '59600502', 'tonyvaliente@gmail.com', 1, '50.00');

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

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`idCompra`, `idProveedor`, `noFactura`, `fecha`, `idTipoCompra`, `idFormaPago`, `noCheque`, `banco`, `total`) VALUES
(1, 1, 1632631, '2019-03-07', 2, 1, 0, '', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabancaria`
--

CREATE TABLE `cuentabancaria` (
  `NOCUENTA` bigint(20) NOT NULL,
  `PROPIETARIO` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `TIPOCUENTA` int(11) NOT NULL,
  `BANCO` int(11) NOT NULL,
  `SALDO` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cuentabancaria`
--

INSERT INTO `cuentabancaria` (`NOCUENTA`, `PROPIETARIO`, `TIPOCUENTA`, `BANCO`, `SALDO`) VALUES
(3391000207, 'prueba detipo de cuenta', 1, 1, '3510.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deposito`
--

CREATE TABLE `deposito` (
  `iddeposito` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `nocuenta` bigint(20) NOT NULL,
  `motivo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `total` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`idDetalleCompra`, `idCompra`, `idproducto`, `cantidad`, `precioUnitario`) VALUES
(1, 1, '4902505089176', 1, 20.00);

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
  `idDescuento` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle_venta`, `idventa`, `idproducto`, `cantidad`, `idDescuento`, `subtotal`) VALUES
(14, 13, '4902505089176', 1, NULL, '30.00'),
(15, 14, '4902505089176', 2, NULL, '60.00'),
(16, 15, '4902505089176', 5, NULL, '150.00'),
(17, 16, '4902505089176', 3, NULL, '90.00'),
(18, 17, '4902505089176', 1, NULL, '30.00'),
(19, 18, '4902505089176', 49, NULL, '1470.00'),
(20, 19, '4902505089176', 1, NULL, '30.00'),
(21, 20, '4902505089176', 1, NULL, '30.00'),
(22, 21, '4902505089176', 1, NULL, '30.00'),
(23, 22, '4902505089176', 1, NULL, '30.00'),
(24, 23, '4902505089176', 3, NULL, '90.00'),
(25, 24, '4902505089176', 1, NULL, '30.00'),
(26, 24, '4902505089176', 5, NULL, '150.00'),
(27, 25, '4902505089176', 1, NULL, '30.00'),
(28, 25, '4902505089176', 5, NULL, '150.00'),
(29, 26, '4902505089176', 1, NULL, '30.00'),
(30, 26, '4902505089176', 5, NULL, '150.00'),
(31, 27, '4902505089176', 1, NULL, '30.00'),
(32, 27, '4902505089176', 5, NULL, '150.00'),
(33, 28, '4902505089176', 1, NULL, '30.00'),
(34, 28, '4902505089176', 5, NULL, '150.00');

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
(2, 'Cheque'),
(3, 'Depósito');

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
  `banco` int(11) DEFAULT NULL,
  `noCuenta` bigint(15) DEFAULT NULL,
  `motivo` text NOT NULL,
  `total` double(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gasto`
--

INSERT INTO `gasto` (`noDocumento`, `tipoDocumento`, `idEgreso`, `fecha`, `idFormaPago`, `noCheque`, `banco`, `noCuenta`, `motivo`, `total`) VALUES
(10, 1, 1, '2019-03-11', 1, 0, NULL, NULL, 'mmmmm', 1000.00),
(234, 1, 1, '2019-03-11', 2, 12, 1, 3391000207, 'wd', 190.00),
(1033, 1, 1, '2019-03-11', 1, 0, NULL, NULL, 'mmmmm', 1000.00),
(1233, 2, 2, '2019-03-11', 1, 0, NULL, NULL, 'pago de agua potable en la municipalidad', 50.00),
(1345, 1, 1, '2019-03-11', 1, 0, NULL, NULL, 'mmmmm', 1000.00),
(3234, 1, 1, '2019-03-11', 1, 0, NULL, NULL, 'dsfgdf', 150.00),
(4354, 1, 2, '2019-03-11', 2, 245345, 1, 3391000207, 'agua', 300.00),
(4533, 1, 1, '2019-03-11', 1, 0, NULL, NULL, '1rfff', 200.00),
(12334, 1, 1, '2019-03-11', 2, 124, 1, 3391000207, 'cuenta', 1000.00),
(45333, 1, 1, '2019-03-11', 1, 0, NULL, NULL, '1rfff', 200.00),
(45634, 1, 1, '2019-03-11', 1, 0, NULL, NULL, '1rfff', 200.00),
(453333, 1, 1, '2019-03-11', 1, 0, NULL, NULL, '1rfff', 200.00);

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

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idInventario`, `idproducto`, `fecha`, `ingreso`, `egreso`, `tipoMovimiento`, `existencia`) VALUES
(27, '4902505089176', '2019-03-07', 100, 0, 'Compra', 100),
(28, '4902505089176', '2019-03-07', 0, 1, 'Venta', 99),
(29, '4902505089176', '2019-03-07', 1, 0, 'Venta', 100),
(30, '4902505089176', '2019-03-08', 0, 2, 'Venta', 98),
(31, '4902505089176', '2019-03-06', 0, 5, 'Venta', 93),
(32, '4902505089176', '2019-02-15', 0, 3, 'Venta', 90),
(33, '4902505089176', '2018-12-13', 0, 1, 'Venta', 89),
(34, '4902505089176', '2019-03-07', 0, 49, 'Venta', 40),
(35, '4902505089176', '2019-03-07', 0, 1, 'Venta', 39),
(36, '4902505089176', '2019-03-07', 0, 1, 'Venta', 38),
(37, '4902505089176', '2019-03-07', 0, 1, 'Venta', 37),
(38, '4902505089176', '2019-03-07', 0, 1, 'Venta', 36),
(39, '4902505089176', '2019-03-07', 0, 3, 'Venta', 33),
(40, '4902505089176', '2019-03-11', 0, 1, 'Venta', 32),
(41, '4902505089176', '2019-03-11', 0, 5, 'Venta', 27),
(42, '4902505089176', '2019-03-11', 0, 1, 'Venta', 26),
(43, '4902505089176', '2019-03-11', 0, 5, 'Venta', 21),
(44, '4902505089176', '2019-03-11', 0, 1, 'Venta', 20),
(45, '4902505089176', '2019-03-11', 0, 5, 'Venta', 15),
(46, '4902505089176', '2019-03-11', 0, 1, 'Venta', 14),
(47, '4902505089176', '2019-03-11', 0, 5, 'Venta', 9),
(48, '4902505089176', '2019-03-11', 0, 1, 'Venta', 8),
(49, '4902505089176', '2019-03-11', 0, 5, 'Venta', 3),
(50, '4902505089176', '2019-03-11', 0, 1, 'Venta', 2),
(51, '4902505089176', '2019-03-11', 0, 1, 'Venta', 1),
(52, '4902505089176', '2019-03-11', 0, 1, 'Venta', 0);

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
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `IDMARCA` int(10) NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`IDMARCA`, `NOMBRE`) VALUES
(1, 'Pilot'),
(2, 'Bic');

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

--
-- Volcado de datos para la tabla `pago_cliente`
--

INSERT INTO `pago_cliente` (`idpago_cliente`, `fecha`, `idcliente`, `idFormaPago`, `noCheque`, `banco`, `total_abono`) VALUES
(1, '2019-02-19', 1, 1, 0, '', '100.00'),
(2, '2019-03-07', 2, 1, 0, '', '10.00');

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
  `marca` int(50) NOT NULL,
  `serie` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL,
  `modelo` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idCategoria`, `nombre`, `preciocosto`, `precioSugerido`, `precioTop`, `marca`, `serie`, `modelo`) VALUES
('4902505089176', 3, 'Tinta de marcador color negra', '20.00', '30.00', '28.00', 1, '', '');

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
(1, 'Vida en Linea', 'Vid@Online', 'Barrio el Porvenir', 'El Progreso', 'Guastatoya', 79456321, 'www.vidaenlinea.com', 'vidalinea@gmail.com', 'Oscar Antonio Valiente Arreaga', 5960, 6020);

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
-- Estructura de tabla para la tabla `tipocuenta`
--

CREATE TABLE `tipocuenta` (
  `IDTIPOCUENTA` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipocuenta`
--

INSERT INTO `tipocuenta` (`IDTIPOCUENTA`, `DESCRIPCION`) VALUES
(1, 'Monetaria'),
(2, 'Ahorro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `idTipoDo` int(11) NOT NULL,
  `descripcion` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`idTipoDo`, `descripcion`) VALUES
(1, 'Factura'),
(2, 'Recibo'),
(3, 'Vale'),
(4, 'Nota de Envío');

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
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `fecha`, `idcliente`, `idtipo_venta`, `idFormapago`, `noCheque`, `banco`, `total`) VALUES
(13, '2019-03-07', 2, 1, 1, 0, '', '30.00'),
(14, '2019-03-08', 2, 1, 1, 0, '', '60.00'),
(15, '2019-03-06', 2, 1, 1, 0, '', '150.00'),
(16, '2019-02-15', 2, 1, 1, 0, '', '90.00'),
(17, '2018-12-13', 2, 1, 1, 0, '', '30.00'),
(18, '2019-03-07', 1, 1, 1, 0, '', '1470.00'),
(19, '2019-03-07', 2, 1, 1, 0, '', '30.00'),
(20, '2019-03-07', 2, 1, 1, 0, '', '30.00'),
(21, '2019-03-07', 2, 1, 1, 0, '', '30.00'),
(22, '2019-03-07', 2, 1, 1, 0, '', '30.00'),
(23, '2019-03-07', 2, 2, 1, 0, '', '90.00'),
(24, '2019-03-11', 3, 1, 1, 0, '', '180.00'),
(25, '2019-03-11', 3, 1, 1, 0, '', '180.00'),
(26, '2019-03-11', 3, 1, 1, 0, '', '180.00'),
(27, '2019-03-11', 3, 1, 1, 0, '', '180.00'),
(28, '2019-03-11', 3, 1, 1, 0, '', '180.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`IDBANCO`);

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
-- Indices de la tabla `cuentabancaria`
--
ALTER TABLE `cuentabancaria`
  ADD PRIMARY KEY (`NOCUENTA`),
  ADD KEY `01_fk_tipocuenta_id` (`TIPOCUENTA`),
  ADD KEY `02_fk_banco_idbanco` (`BANCO`);

--
-- Indices de la tabla `deposito`
--
ALTER TABLE `deposito`
  ADD PRIMARY KEY (`iddeposito`),
  ADD KEY `01_fk_cuenta_nocuenta` (`nocuenta`);

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
  ADD KEY `05_fk_cuenta_No` (`noCuenta`),
  ADD KEY `04_fk_banco_id` (`banco`);

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
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`IDMARCA`);

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
  ADD KEY `01_fk_categoria_idcate` (`idCategoria`),
  ADD KEY `02_fk_marca_id` (`marca`);

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
-- Indices de la tabla `tipocuenta`
--
ALTER TABLE `tipocuenta`
  ADD PRIMARY KEY (`IDTIPOCUENTA`);

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
  ADD KEY `01_fk_cliente` (`idcliente`) USING BTREE,
  ADD KEY `02_fk_venta` (`idtipo_venta`) USING BTREE,
  ADD KEY `03_fk_formapago` (`idFormapago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banco`
--
ALTER TABLE `banco`
  MODIFY `IDBANCO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `idBitacora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `carga`
--
ALTER TABLE `carga`
  MODIFY `idcarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalogoegresos`
--
ALTER TABLE `catalogoegresos`
  MODIFY `idCatalogoEgresos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `descuento`
--
ALTER TABLE `descuento`
  MODIFY `idDescuento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `idDetalleCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_devolucion`
--
ALTER TABLE `detalle_devolucion`
  MODIFY `id_detalle_devolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `id_devolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formapago`
--
ALTER TABLE `formapago`
  MODIFY `idFormapago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idInventario` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `IDMARCA` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pago_cliente`
--
ALTER TABLE `pago_cliente`
  MODIFY `idpago_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT de la tabla `tipocuenta`
--
ALTER TABLE `tipocuenta`
  MODIFY `IDTIPOCUENTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `idTipoDo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
-- Filtros para la tabla `cuentabancaria`
--
ALTER TABLE `cuentabancaria`
  ADD CONSTRAINT `01_fk_tipocuenta_id` FOREIGN KEY (`TIPOCUENTA`) REFERENCES `tipocuenta` (`IDTIPOCUENTA`),
  ADD CONSTRAINT `02_fk_banco_idbanco` FOREIGN KEY (`BANCO`) REFERENCES `banco` (`IDBANCO`);

--
-- Filtros para la tabla `deposito`
--
ALTER TABLE `deposito`
  ADD CONSTRAINT `01_fk_cuenta_nocuenta` FOREIGN KEY (`NOCUENTA`) REFERENCES `cuentabancaria` (`NOCUENTA`);

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
  ADD CONSTRAINT `01_fk_gasto_tipo_documento` FOREIGN KEY (`tipoDocumento`) REFERENCES `tipodocumento` (`idTipoDo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `02_fk_gasto_egreso` FOREIGN KEY (`idEgreso`) REFERENCES `catalogoegresos` (`idCatalogoEgresos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `03_fk_gasto_forma_pago` FOREIGN KEY (`idFormaPago`) REFERENCES `formapago` (`idFormapago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `04_fk_banco_id` FOREIGN KEY (`banco`) REFERENCES `banco` (`IDBANCO`),
  ADD CONSTRAINT `05_fk_cuenta_No` FOREIGN KEY (`noCuenta`) REFERENCES `cuentabancaria` (`NOCUENTA`);

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
  ADD CONSTRAINT `01_fk_categoria_idcate` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  ADD CONSTRAINT `02_fk_marca_id` FOREIGN KEY (`marca`) REFERENCES `marca` (`IDMARCA`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_01` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`),
  ADD CONSTRAINT `fk_02` FOREIGN KEY (`idtipo_venta`) REFERENCES `tipo_venta` (`idtipo_venta`),
  ADD CONSTRAINT `fk_03` FOREIGN KEY (`idFormapago`) REFERENCES `formapago` (`idFormapago`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
