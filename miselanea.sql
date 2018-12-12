-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2018 a las 03:47:18
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
-- Base de datos: `abarrotes`
--

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
(1, '0000-00-00', 0, 0, '100.00', '0'),
(2, '0000-00-00', 0, 5, '95.00', 'Prueba'),
(3, '0000-00-00', 100, 0, '195.00', ''),
(4, '2018-07-11', 200, 0, '395.00', ''),
(5, '0000-00-00', 45, 0, '440.00', ''),
(7, '0000-00-00', 75, 0, '495.00', ''),
(8, '0000-00-00', 28, 0, '523.00', ''),
(9, '0000-00-00', 50, 0, '573.00', ''),
(10, '0000-00-00', 45, 0, '618.00', ''),
(11, '0000-00-00', 60, 0, '678.00', ''),
(12, '0000-00-00', 4, 0, '682.00', ''),
(13, '0000-00-00', 60, 0, '742.00', ''),
(15, '0000-00-00', 4, 0, '750.00', ''),
(16, '0000-00-00', 4, 0, '754.00', ''),
(17, '0000-00-00', 4, 0, '758.00', ''),
(18, '0000-00-00', 4, 0, '762.00', ''),
(19, '0000-00-00', 60, 0, '822.00', ''),
(20, '0000-00-00', 400, 0, '1222.00', ''),
(21, '0000-00-00', 400, 0, '1622.00', ''),
(22, '0000-00-00', 4, 0, '1626.00', ''),
(23, '0000-00-00', 100, 0, '1726.00', ''),
(24, '0000-00-00', 400, 0, '2126.00', ''),
(25, '0000-00-00', 404, 0, '2530.00', ''),
(26, '0000-00-00', 1204, 0, '3734.00', ''),
(27, '0000-00-00', 1208, 0, '4942.00', ''),
(28, '0000-00-00', 4, 0, '4946.00', ''),
(29, '0000-00-00', 4, 0, '4950.00', ''),
(30, '0000-00-00', 28, 0, '4978.00', ''),
(31, '0000-00-00', 40, 0, '5018.00', ''),
(32, '0000-00-00', 104, 0, '5122.00', ''),
(33, '0000-00-00', 484, 0, '5606.00', ''),
(34, '0000-00-00', 11.7, 0, '5617.70', ''),
(35, '0000-00-00', 2, 0, '5619.70', ''),
(36, '0000-00-00', 7.5, 0, '5627.20', ''),
(37, '0000-00-00', 2240, 0, '7867.20', ''),
(38, '0000-00-00', 1000, 0, '8867.20', ''),
(39, '0000-00-00', 3200, 0, '12067.20', ''),
(40, '0000-00-00', 0, 67.2, '12000.00', 'Compra de dulces'),
(41, '0000-00-00', 3884, 0, '15884.00', ''),
(42, '2018-07-17', 0, 100, '15784.00', 'Test'),
(43, '2018-07-17', 0, 50, '15734.00', 'Compra'),
(44, '2018-07-17', 1600, 0, '17334.00', ''),
(45, '2018-07-20', 1600, 0, '18934.00', ''),
(46, '2018-07-20', 0, 1600, '17334.00', ''),
(47, '2018-07-20', 0, 1600, '15734.00', ''),
(48, '2018-07-20', 0, 1600, '14134.00', ''),
(49, '2018-01-03', 71.25, 0, '14205.25', ''),
(50, '2018-02-14', 1600, 0, '15805.25', ''),
(51, '2018-03-08', 120, 0, '15925.25', ''),
(52, '2018-07-23', 0, 60, '15865.25', ''),
(53, '2018-07-23', 0, 1600, '14265.25', ''),
(54, '2018-07-23', 0, 1600, '12665.25', ''),
(55, '2018-07-23', 0, 1600, '11065.25', ''),
(56, '2018-07-23', 0, 1600, '9465.25', ''),
(57, '2018-07-23', 0, 1600, '7865.25', ''),
(58, '2018-07-23', 0, 1600, '6265.25', ''),
(59, '2018-07-23', 0, 1600, '4665.25', ''),
(60, '2018-07-23', 0, 1600, '3065.25', ''),
(61, '2018-07-23', 0, 1600, '1465.25', ''),
(62, '2018-07-23', 0, 1600, '-134.75', ''),
(63, '2018-07-23', 0, 1600, '-1734.75', ''),
(64, '2018-07-23', 0, 1600, '-3334.75', ''),
(65, '2018-07-24', 1600, 0, '-1734.75', ''),
(66, '2018-07-24', 0, 1600, '-3334.75', ''),
(67, '2018-07-01', 1600, 0, '-1734.75', ''),
(68, '2018-07-01', 150, 0, '-1584.75', ''),
(69, '2018-07-01', 40, 0, '-1544.75', ''),
(70, '2018-07-25', 220, 0, '-1324.75', ''),
(71, '2018-07-25', 32, 0, '-1292.75', ''),
(72, '2018-07-25', 131.25, 0, '-1161.50', ''),
(73, '2018-07-25', 670, 0, '-491.50', ''),
(74, '2018-07-25', 40, 0, '-451.50', ''),
(75, '2018-07-25', 8, 0, '-443.50', ''),
(76, '2018-07-26', 1600, 0, '1156.50', ''),
(77, '2018-07-26', 8000, 0, '9156.50', ''),
(78, '2018-07-26', 108, 0, '9264.50', ''),
(79, '2018-07-26', 390, 0, '9654.50', ''),
(80, '2018-07-29', 4108, 0, '13762.50', ''),
(81, '2018-07-29', 0, 1000, '12762.50', 'Compra de almuerzo'),
(82, '2018-07-29', 0, 2762, '10000.50', 'Compra de la Cena'),
(83, '2018-07-30', 0, 100, '9900.50', ''),
(84, '2018-07-30', 0, 100, '9800.50', ''),
(85, '2018-07-30', 0, 0.5, '9800.00', 'Choco'),
(86, '2018-07-30', 0, 0.5, '9799.50', 'Chocobanano'),
(87, '2018-08-02', 90, 0, '9889.50', ''),
(88, '2018-08-02', 0, 150, '9739.50', ''),
(89, '2018-08-02', 0, 100, '9639.50', ''),
(90, '2018-08-02', 510, 0, '10149.50', ''),
(91, '2018-10-20', 1600, 0, '11749.50', ''),
(92, '2018-11-30', 0, 100, '11649.50', ''),
(93, '2018-12-03', 668, 0, '12317.50', ''),
(94, '2018-12-03', 4800, 0, '17117.50', ''),
(95, '2018-12-04', 1400, 0, '18517.50', '');

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

--
-- Volcado de datos para la tabla `carga`
--

INSERT INTO `carga` (`idcarga`, `fecha`, `idproducto`, `cantidad`, `precio_unitario`, `precio_total`) VALUES
(1, '2018-06-08', '1003', 400, '0.00', '0.00'),
(2, '2018-07-11', '1001', 5, '0.00', '0.00'),
(3, '2018-07-15', '1004', 1, '1100.00', '1100.00'),
(4, '2018-07-18', '1004', 1, '1100.00', '1100.00'),
(5, '2018-07-25', '1006', 60, '10.00', '600.00'),
(6, '2018-07-29', '1006', 60, '10.00', '600.00'),
(7, '2018-07-30', '1001', 20, '5.00', '100.00'),
(8, '2018-07-30', '1001', 20, '5.00', '100.00'),
(9, '2018-07-30', '1001', 20, '5.00', '100.00'),
(10, '2018-07-30', '1001', 20, '5.00', '100.00'),
(11, '2018-07-30', '1001', 20, '5.00', '100.00'),
(12, '2018-08-02', '1005', 10, '15.00', '150.00'),
(13, '2018-08-02', '1005', 10, '10.00', '100.00'),
(14, '2018-11-30', '1005', 10, '10.00', '100.00');

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
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `dpi`, `direccion`, `telefono`, `saldo`) VALUES
(6, 'Juan Nepomuseno Cortina', 123456789, 'Guatemala', '596054', '825.00'),
(7, 'Fabian Estrada', 123145678, 'Guatemalam', '1564866', '1766.00'),
(8, 'Byron Fernando Calderon Ferrera', 2775412360201, 'Guastatoya, El Progreso.', '30345261', '85.00'),
(9, 'Rony David Catalan Aldana', 4152362160201, 'Guatemala.', '45789632', '8860.00'),
(10, 'Leonidas Belteton', 123453648, 'Ciudad de Guastaoya', '789979', '10.00');

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

--
-- Volcado de datos para la tabla `detalle_devolucion`
--

INSERT INTO `detalle_devolucion` (`id_detalle_devolucion`, `id_devolucion`, `idproducto`, `cantidad`, `subtotal`) VALUES
(3, 8, '1004', 1, '1600.00'),
(5, 10, '1004', 1, '1600.00'),
(6, 11, '1004', 1, '1600.00'),
(7, 12, '1004', 1, '1600.00'),
(8, 13, '1004', 1, '1600.00'),
(9, 14, '1004', 1, '1600.00'),
(10, 15, '1004', 1, '1600.00'),
(11, 16, '1004', 1, '1600.00'),
(12, 17, '1004', 1, '1600.00'),
(13, 18, '1004', 1, '1600.00'),
(14, 19, '1004', 1, '1600.00'),
(15, 20, '1004', 1, '1600.00'),
(16, 21, '1004', 1, '1600.00'),
(17, 22, '1004', 1, '1600.00'),
(18, 23, '1004', 1, '1600.00'),
(19, 24, '1004', 1, '1600.00'),
(20, 25, '1004', 1, '1600.00'),
(21, 26, '1004', 1, '1600.00'),
(22, 27, '1004', 1, '1600.00'),
(23, 28, '1004', 1, '1600.00'),
(25, 30, '1004', 1, '1600.00'),
(26, 31, '1004', 1, '1600.00'),
(27, 32, '1002', 1, '60.00'),
(28, 33, '1004', 2, '3200.00');

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
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

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
(48, 49, '1003', 2, '7.50'),
(49, 50, '1003', 5, '2000.00'),
(50, 50, '1002', 4, '240.00'),
(51, 51, '1004', 1, '1600.00'),
(52, 52, '1004', 2, '3200.00'),
(53, 53, '1004', 2, '3200.00'),
(54, 53, '1002', 11, '660.00'),
(55, 53, '1001', 6, '24.00'),
(56, 54, '1003', 10, '40.00'),
(57, 54, '1002', 10, '600.00'),
(58, 55, '1002', 1, '60.00'),
(59, 56, '1001', 2, '8.00'),
(60, 57, '1004', 1, '1600.00'),
(61, 58, '1004', 1, '1600.00'),
(62, 59, '1005', 2, '60.00'),
(63, 59, '1001', 3, '11.25'),
(64, 60, '1004', 1, '1600.00'),
(65, 61, '1002', 2, '120.00'),
(66, 62, '1002', 1, '60.00'),
(67, 63, '1004', 1, '1600.00'),
(68, 64, '1003', 3, '12.00'),
(69, 65, '1004', 1, '1600.00'),
(70, 66, '1004', 1, '1600.00'),
(71, 67, '1002', 2, '120.00'),
(72, 68, '1004', 1, '1600.00'),
(73, 69, '1005', 5, '150.00'),
(74, 70, '1003', 10, '40.00'),
(75, 71, '1001', 2, '8.00'),
(76, 72, '1006', 10, '180.00'),
(77, 72, '1005', 2, '40.00'),
(78, 73, '1006', 2, '32.00'),
(79, 74, '1001', 35, '131.25'),
(80, 75, '1006', 10, '180.00'),
(81, 75, '1005', 3, '90.00'),
(82, 75, '1003', 1, '400.00'),
(83, 76, '1003', 10, '40.00'),
(84, 77, '1003', 2, '8.00'),
(85, 78, '1004', 1, '1600.00'),
(86, 79, '1003', 20, '8000.00'),
(87, 80, '1006', 6, '108.00'),
(88, 81, '1007', 10, '30.00'),
(89, 81, '1002', 6, '360.00'),
(90, 82, '1007', 6, '18.00'),
(91, 82, '1006', 5, '90.00'),
(92, 82, '1003', 10, '4000.00'),
(93, 83, '1005', 3, '90.00'),
(94, 84, '1005', 5, '150.00'),
(95, 84, '1002', 6, '360.00'),
(96, 85, '1004', 1, '1600.00'),
(97, 86, '1004', 3, '4800.00'),
(98, 87, '1004', 1, '1400.00'),
(99, 88, '1004', 2, '3200.00'),
(100, 88, '1002', 12, '660.00'),
(101, 89, '1005', 3, '85.00');

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

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`id_devolucion`, `fecha`, `idcliente`, `idventa`, `total`) VALUES
(1, '2018-05-11', 1, 11, '4.00'),
(3, '2018-07-20', 5, 58, '1600.00'),
(5, '2018-07-20', 5, 58, '1600.00'),
(6, '2018-07-20', 5, 58, '1600.00'),
(8, '2018-07-20', 5, 58, '1600.00'),
(9, '2018-07-23', 9, 62, '60.00'),
(10, '2018-07-23', 5, 63, '1600.00'),
(11, '2018-07-23', 5, 63, '1600.00'),
(12, '2018-07-23', 5, 63, '1600.00'),
(13, '2018-07-23', 5, 63, '1600.00'),
(14, '2018-07-23', 5, 63, '1600.00'),
(15, '2018-07-23', 5, 63, '1600.00'),
(16, '2018-07-23', 5, 63, '1600.00'),
(17, '2018-07-23', 5, 63, '1600.00'),
(18, '2018-07-23', 5, 63, '1600.00'),
(19, '2018-07-23', 5, 63, '1600.00'),
(20, '2018-07-23', 5, 63, '1600.00'),
(21, '2018-07-23', 5, 63, '1600.00'),
(22, '2018-07-23', 5, 63, '1600.00'),
(23, '2018-07-23', 5, 63, '1600.00'),
(24, '2018-07-23', 5, 63, '1600.00'),
(25, '2018-07-23', 5, 63, '1600.00'),
(26, '2018-07-23', 5, 63, '1600.00'),
(27, '2018-07-23', 5, 63, '1600.00'),
(28, '2018-07-23', 5, 63, '1600.00'),
(29, '2018-07-22', 1, 64, '1200.00'),
(30, '2018-07-24', 7, 65, '1600.00'),
(31, '2018-07-24', 7, 66, '1600.00'),
(32, '2018-07-24', 6, 67, '60.00'),
(33, '2018-12-04', 9, 88, '3200.00');

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
  `total_abono` decimal(8,2) DEFAULT NULL,
  `saldo_anterior` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

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
(19, '2018-05-12', 7, '50.00', 200),
(20, '2018-07-15', 9, '1000.00', 6600),
(21, '2018-12-03', 9, '668.00', 5668);

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
('1001', 'Jabón Protex', '2.50', '4.00', '3.75', 100),
('1002', 'Jarabe para la tos', '50.00', '60.00', '55.00', 142),
('1003', 'Frijol', '350.00', '400.00', '390.00', 420.32),
('1004', 'Moto', '1100.00', '1600.00', '1400.00', 62),
('1005', 'Escoba ', '10.00', '30.00', '20.00', 72),
('1006', 'Sidras', '10.00', '18.00', '16.00', 135),
('1007', 'Maiz', '1.00', '3.00', '2.50', 484);

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
  `total` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

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
(49, '2018-06-08', 1, 1, '7.50'),
(50, '2018-07-15', 1, 1, '2240.00'),
(51, '2018-07-15', 9, 2, '1600.00'),
(52, '2018-07-15', 8, 1, '3200.00'),
(53, '2018-07-16', 7, 1, '3884.00'),
(54, '2018-07-16', 6, 2, '640.00'),
(55, '2018-07-17', 5, 2, '60.00'),
(56, '2018-07-17', 9, 2, '8.00'),
(57, '2018-07-17', 5, 1, '1600.00'),
(58, '2018-07-20', 5, 1, '1600.00'),
(59, '2018-01-03', 8, 1, '71.25'),
(60, '2018-02-14', 7, 1, '1600.00'),
(61, '2018-03-08', 6, 1, '120.00'),
(62, '2018-07-23', 9, 2, '60.00'),
(63, '2018-07-23', 5, 2, '1600.00'),
(64, '2018-07-22', 1, 2, '12.00'),
(65, '2018-07-24', 7, 1, '1600.00'),
(66, '2018-07-24', 7, 2, '1600.00'),
(67, '2018-07-24', 6, 2, '120.00'),
(68, '2018-07-01', 1, 1, '1600.00'),
(69, '2018-07-01', 1, 1, '150.00'),
(70, '2018-07-01', 5, 1, '40.00'),
(71, '2018-07-01', 7, 2, '8.00'),
(72, '2018-07-25', 7, 1, '220.00'),
(73, '2018-07-25', 7, 1, '32.00'),
(74, '2018-07-25', 7, 1, '131.25'),
(75, '2018-07-25', 5, 1, '670.00'),
(76, '2018-07-25', 7, 1, '40.00'),
(77, '2018-07-25', 5, 1, '8.00'),
(78, '2018-07-26', 5, 1, '1600.00'),
(79, '2018-07-26', 6, 1, '8000.00'),
(80, '2018-07-26', 8, 1, '108.00'),
(81, '2018-07-26', 8, 1, '390.00'),
(82, '2018-07-29', 9, 1, '4108.00'),
(83, '2018-08-02', 10, 1, '90.00'),
(84, '2018-08-02', 7, 1, '510.00'),
(85, '2018-10-20', 7, 1, '1600.00'),
(86, '2018-12-03', 8, 1, '4800.00'),
(87, '2018-12-04', 9, 1, '1400.00'),
(88, '2018-12-04', 9, 2, '3860.00'),
(89, '2018-12-04', 8, 2, '85.00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `carga`
--
ALTER TABLE `carga`
  MODIFY `idcarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_devolucion`
--
ALTER TABLE `detalle_devolucion`
  MODIFY `id_detalle_devolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `id_devolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `pago_cliente`
--
ALTER TABLE `pago_cliente`
  MODIFY `idpago_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tipo_venta`
--
ALTER TABLE `tipo_venta`
  MODIFY `idtipo_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
