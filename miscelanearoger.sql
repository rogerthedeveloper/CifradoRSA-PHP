-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: miscelanea
-- ------------------------------------------------------
-- Server version	5.5.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `idBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `fechaHora` date NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `tabla` varchar(45) NOT NULL,
  `actividad` text NOT NULL,
  PRIMARY KEY (`idBitacora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `ingreso` double NOT NULL,
  `retiro` double NOT NULL,
  `saldo` decimal(8,2) DEFAULT NULL,
  `motivo` text COLLATE ucs2_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
INSERT INTO `caja` VALUES (96,'2018-12-12',0,5000,-5000.00,''),(97,'2018-12-12',0,5000,-10000.00,''),(98,'2018-12-12',0,500,-10500.00,''),(99,'2018-12-12',9400,0,-1100.00,''),(100,'2018-12-12',15,0,-1085.00,''),(101,'2019-02-04',3000,0,1915.00,''),(102,'2019-02-04',3000,0,4915.00,''),(103,'2019-02-13',100,0,5015.00,''),(104,'2019-02-13',3050,0,8065.00,''),(105,'2019-02-15',3000,0,11065.00,''),(106,'2019-02-15',3000,0,14065.00,''),(107,'2019-02-15',3000,0,17065.00,''),(108,'2019-02-15',3100,0,20165.00,''),(109,'2019-02-15',3100,0,23265.00,''),(110,'2019-02-15',3100,0,26365.00,''),(111,'2019-02-15',3100,0,29465.00,''),(112,'2019-02-19',100,0,29565.00,'');
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carga`
--

DROP TABLE IF EXISTS `carga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carga` (
  `idcarga` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `idproducto` varchar(20) COLLATE ucs2_spanish2_ci NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(9,2) NOT NULL,
  `precio_total` decimal(9,2) NOT NULL,
  PRIMARY KEY (`idcarga`),
  KEY `fk_carga_producto_idx` (`idproducto`),
  CONSTRAINT `fk_carga_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carga`
--

LOCK TABLES `carga` WRITE;
/*!40000 ALTER TABLE `carga` DISABLE KEYS */;
/*!40000 ALTER TABLE `carga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogoegresos`
--

DROP TABLE IF EXISTS `catalogoegresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogoegresos` (
  `idCatalogoEgresos` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) NOT NULL,
  PRIMARY KEY (`idCatalogoEgresos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogoegresos`
--

LOCK TABLES `catalogoegresos` WRITE;
/*!40000 ALTER TABLE `catalogoegresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogoegresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Linea blanca'),(2,'Linea de sala');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
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
  `saldo` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `fk_cliente_tipo_cliente` (`idTipo_cliente`),
  CONSTRAINT `fk_cliente_tipo_cliente` FOREIGN KEY (`idTipo_cliente`) REFERENCES `tipocliente` (`idTipoCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Byron Fernando Calderon Ferrera ',2743342160201,'8847961-7','Aldea Santa Lucia','El Progreso','Guastatoya','Donde hay una funeraria','30349707','bcalderonf18@gmail.com',1,4900.00),(2,'Roger Sosa',2314035500101,'8357481-6','Barrio las Joyas','El Progreso','Guastatoya','En el callejon despues del mine. de trabajo, hasta adentro.','53436438','rogerthedeveloper@gmail.com',1,0.00);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL AUTO_INCREMENT,
  `idProveedor` int(11) NOT NULL,
  `noFactura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idTipoCompra` int(11) NOT NULL,
  `idFormaPago` int(11) NOT NULL,
  `noCheque` bigint(15) NOT NULL,
  `banco` varchar(80) NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `fk_compra_proveedor` (`idProveedor`),
  KEY `fk_compra_tipo_compra` (`idTipoCompra`),
  KEY `fk_03_compra_forma_pago` (`idFormaPago`),
  CONSTRAINT `fk_01_compra_proveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_02_compra_tipo_compra` FOREIGN KEY (`idTipoCompra`) REFERENCES `tipocompra` (`idTipoCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_03_compra_forma_pago` FOREIGN KEY (`idFormaPago`) REFERENCES `formapago` (`idFormapago`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descuento`
--

DROP TABLE IF EXISTS `descuento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descuento` (
  `idDescuento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `porcentaje` int(3) NOT NULL,
  PRIMARY KEY (`idDescuento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descuento`
--

LOCK TABLES `descuento` WRITE;
/*!40000 ALTER TABLE `descuento` DISABLE KEYS */;
/*!40000 ALTER TABLE `descuento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_compra` (
  `idDetalleCompra` int(11) NOT NULL AUTO_INCREMENT,
  `idCompra` int(11) NOT NULL,
  `idproducto` varchar(20) CHARACTER SET ucs2 COLLATE ucs2_spanish2_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioUnitario` double(8,2) NOT NULL,
  PRIMARY KEY (`idDetalleCompra`),
  KEY `fk_detalle_compra_compra` (`idCompra`),
  KEY `fk_detalle_compra_producto` (`idproducto`),
  CONSTRAINT `fk_detalle_compra_compra` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`idCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_compra_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_devolucion`
--

DROP TABLE IF EXISTS `detalle_devolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_devolucion` (
  `id_detalle_devolucion` int(11) NOT NULL AUTO_INCREMENT,
  `id_devolucion` int(11) NOT NULL,
  `idproducto` varchar(20) COLLATE ucs2_spanish2_ci NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_devolucion`),
  KEY `fk_detalle_devolucion_devolucion1_idx` (`id_devolucion`),
  KEY `fk_detalle_devolucion_producto1_idx` (`idproducto`),
  CONSTRAINT `fk_detalle_devolucion_devolucion1` FOREIGN KEY (`id_devolucion`) REFERENCES `devolucion` (`id_devolucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_devolucion_producto1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_devolucion`
--

LOCK TABLES `detalle_devolucion` WRITE;
/*!40000 ALTER TABLE `detalle_devolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_devolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT,
  `idventa` int(11) NOT NULL,
  `idproducto` varchar(20) COLLATE ucs2_spanish2_ci NOT NULL,
  `cantidad` float NOT NULL,
  `idDescuento` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_detalle_venta`),
  KEY `fk_detalle_venta_venta1_idx` (`idventa`),
  KEY `fk_detalle_venta_producto1_idx` (`idproducto`),
  KEY `fk_detalle_venta_descuento` (`idDescuento`),
  CONSTRAINT `fk_detalle_venta_descuento` FOREIGN KEY (`idDescuento`) REFERENCES `descuento` (`idDescuento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_venta_producto1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_venta_venta1` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (8,10,'8411250027129',1,NULL,100.00),(9,10,'1001',1,NULL,3000.00),(10,11,'8411250027129',1,NULL,100.00),(11,11,'1001',1,NULL,3000.00);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devolucion`
--

DROP TABLE IF EXISTS `devolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devolucion` (
  `id_devolucion` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_devolucion`),
  KEY `fk_devolucion_cliente1_idx` (`idcliente`),
  KEY `fk_devolucion_venta1_idx` (`idventa`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolucion`
--

LOCK TABLES `devolucion` WRITE;
/*!40000 ALTER TABLE `devolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `devolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapago`
--

DROP TABLE IF EXISTS `formapago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formapago` (
  `idFormapago` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`idFormapago`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapago`
--

LOCK TABLES `formapago` WRITE;
/*!40000 ALTER TABLE `formapago` DISABLE KEYS */;
INSERT INTO `formapago` VALUES (1,'Efectivo'),(2,'Cheque');
/*!40000 ALTER TABLE `formapago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gasto`
--

DROP TABLE IF EXISTS `gasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `totalIdp` double(7,2) NOT NULL,
  PRIMARY KEY (`noDocumento`),
  KEY `fk_01_gasto_egreso` (`idEgreso`),
  KEY `fk_02_gasto_tipo_documento` (`tipoDocumento`),
  KEY `fk_03_gasto_forma_pago` (`idFormaPago`),
  KEY `fk_04_gasto_tipo_gasto` (`idTipoGasto`),
  KEY `fk_05_gasto_tipo_combustible` (`idTipoCombustible`),
  CONSTRAINT `fk_01_gasto_egreso` FOREIGN KEY (`idEgreso`) REFERENCES `catalogoegresos` (`idCatalogoEgresos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_02_gasto_tipo_documento` FOREIGN KEY (`tipoDocumento`) REFERENCES `tipodocumento` (`idTipoDo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_03_gasto_forma_pago` FOREIGN KEY (`idFormaPago`) REFERENCES `formapago` (`idFormapago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_04_gasto_tipo_gasto` FOREIGN KEY (`idTipoGasto`) REFERENCES `tipogasto` (`idTipoGasto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_05_gasto_tipo_combustible` FOREIGN KEY (`idTipoCombustible`) REFERENCES `tipocombustible` (`idTipoCombustible`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gasto`
--

LOCK TABLES `gasto` WRITE;
/*!40000 ALTER TABLE `gasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `gasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `idInventario` int(9) NOT NULL AUTO_INCREMENT,
  `idproducto` varchar(20) CHARACTER SET ucs2 COLLATE ucs2_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `ingreso` int(9) NOT NULL,
  `egreso` int(9) NOT NULL,
  `tipoMovimiento` text NOT NULL,
  `existencia` int(9) NOT NULL,
  PRIMARY KEY (`idInventario`),
  KEY `fk_inventario_idproducto` (`idproducto`),
  CONSTRAINT `fk_inventario_idproducto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,'1001','0000-00-00',0,5,'Venta',20),(2,'1001','2019-02-04',0,5,'Venta',15),(3,'1001','2019-02-04',0,1,'Venta',14),(4,'1001','2019-02-04',0,1,'Venta',13),(5,'8411250027129','2019-02-13',100,0,'Compra',100),(6,'8411250027129','2019-02-13',0,1,'Venta',99),(7,'8411250027129','2019-02-13',0,1,'Venta',98),(8,'8411250027129','2019-02-13',0,1,'Venta',97),(9,'8411250027129','2019-02-13',0,1,'Venta',96),(10,'8411250027129','2019-02-13',0,1,'Venta',95),(11,'8411250027129','2019-02-13',0,1,'Venta',94),(12,'8411250027129','2019-02-13',0,1,'Venta',93),(13,'1001','2019-02-13',0,1,'Venta',12),(14,'1001','2019-02-15',0,1,'Venta',11),(15,'1001','2019-02-15',0,1,'Venta',10),(16,'1001','2019-02-15',0,1,'Venta',9),(17,'8411250027129','2019-02-15',0,1,'Venta',92),(18,'1001','2019-02-15',0,1,'Venta',8),(19,'8411250027129','2019-02-15',0,1,'Venta',91),(20,'1001','2019-02-15',0,1,'Venta',7),(21,'8411250027129','2019-02-15',0,1,'Venta',90),(22,'1001','2019-02-15',0,1,'Venta',6),(23,'8411250027129','2019-02-15',0,1,'Venta',89),(24,'1001','2019-02-15',0,1,'Venta',5);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `user` varchar(25) COLLATE ucs2_spanish2_ci NOT NULL,
  `pass` varchar(150) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  `token` varchar(50) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin','202cb962ac59075b964b07152d234b70','Administrador',1,'0'),('francisco','77b585384d28bc492651b3b28a5d288f','Francisco',1,'0'),('otto','77b585384d28bc492651b3b28a5d288f','Otto',1,'0'),('user','202cb962ac59075b964b07152d234b70','Usuario',0,'0');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_cliente`
--

DROP TABLE IF EXISTS `pago_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_cliente` (
  `idpago_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  `idFormaPago` int(11) NOT NULL,
  `noCheque` bigint(15) NOT NULL,
  `banco` varchar(100) COLLATE ucs2_spanish2_ci NOT NULL,
  `total_abono` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idpago_cliente`),
  KEY `fk_pago_cliente_cliente1_idx` (`idcliente`),
  KEY `fk_pago_forma_pago` (`idFormaPago`),
  CONSTRAINT `fk_pago_forma_pago` FOREIGN KEY (`idFormaPago`) REFERENCES `formapago` (`idFormapago`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_cliente`
--

LOCK TABLES `pago_cliente` WRITE;
/*!40000 ALTER TABLE `pago_cliente` DISABLE KEYS */;
INSERT INTO `pago_cliente` VALUES (1,'2019-02-19',1,1,0,'',100.00);
/*!40000 ALTER TABLE `pago_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idproducto` varchar(20) COLLATE ucs2_spanish2_ci NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `preciocosto` decimal(8,2) DEFAULT NULL,
  `precioSugerido` decimal(8,2) DEFAULT NULL,
  `precioTop` decimal(8,2) DEFAULT NULL,
  `marca` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL,
  `serie` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL,
  `modelo` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `01_fk_categoria_idcate` (`idCategoria`),
  CONSTRAINT `01_fk_categoria_idcate` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('1001',2,'Amueblado de sala',3000.00,6000.00,5500.00,'Salami','7as6s56d56d4f','2019'),('1010',1,'Platera',1500.00,3000.00,2600.00,'Patito','1245a6s2e3d3','2018'),('4902505089152',1,'Tinta de Marcador',50.00,75.00,100.00,'Pilot','WBMA','TMC'),('8411250027129',1,'Limpia Zapatos',100.00,125.00,150.00,'Dcoast','Color','Cafe');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL AUTO_INCREMENT,
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
  `saldo` int(11) NOT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Vida en Linea','Vid@Online','Barrio el Porvenir','El Progreso','Guastatoya',79456321,'www.vidaenlinea.com','vidalinea@gmail.com','Oscar Antonio Valiente Arreaga',5960,6000);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_venta`
--

DROP TABLE IF EXISTS `tipo_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_venta` (
  `idtipo_venta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idtipo_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_venta`
--

LOCK TABLES `tipo_venta` WRITE;
/*!40000 ALTER TABLE `tipo_venta` DISABLE KEYS */;
INSERT INTO `tipo_venta` VALUES (1,'Contado'),(2,'Crédito');
/*!40000 ALTER TABLE `tipo_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocliente`
--

DROP TABLE IF EXISTS `tipocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocliente` (
  `idTipoCliente` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(120) NOT NULL,
  PRIMARY KEY (`idTipoCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocliente`
--

LOCK TABLES `tipocliente` WRITE;
/*!40000 ALTER TABLE `tipocliente` DISABLE KEYS */;
INSERT INTO `tipocliente` VALUES (1,'Mayorista');
/*!40000 ALTER TABLE `tipocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocombustible`
--

DROP TABLE IF EXISTS `tipocombustible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocombustible` (
  `idTipoCombustible` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(120) NOT NULL,
  `idp` float(3,2) NOT NULL,
  PRIMARY KEY (`idTipoCombustible`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocombustible`
--

LOCK TABLES `tipocombustible` WRITE;
/*!40000 ALTER TABLE `tipocombustible` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipocombustible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocompra`
--

DROP TABLE IF EXISTS `tipocompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocompra` (
  `idTipoCompra` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(120) NOT NULL,
  PRIMARY KEY (`idTipoCompra`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocompra`
--

LOCK TABLES `tipocompra` WRITE;
/*!40000 ALTER TABLE `tipocompra` DISABLE KEYS */;
INSERT INTO `tipocompra` VALUES (1,'Credito'),(2,'Contado');
/*!40000 ALTER TABLE `tipocompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodocumento` (
  `idTipoDo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(120) NOT NULL,
  PRIMARY KEY (`idTipoDo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipogasto`
--

DROP TABLE IF EXISTS `tipogasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipogasto` (
  `idTipoGasto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(120) NOT NULL,
  PRIMARY KEY (`idTipoGasto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipogasto`
--

LOCK TABLES `tipogasto` WRITE;
/*!40000 ALTER TABLE `tipogasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipogasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  `idtipo_venta` int(11) NOT NULL,
  `idFormapago` int(11) NOT NULL,
  `noCheque` bigint(15) NOT NULL,
  `banco` varchar(45) COLLATE ucs2_spanish2_ci NOT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idventa`),
  KEY `fk_venta_tipo_venta1_idx` (`idtipo_venta`),
  KEY `fk_venta_cliente1_idx` (`idcliente`),
  KEY `fk_ventas_forma_pago` (`idFormapago`),
  CONSTRAINT `fk_ventas_forma_pago` FOREIGN KEY (`idFormapago`) REFERENCES `formapago` (`idFormapago`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'2019-02-04',1,1,1,0,'',3000.00),(2,'2019-02-04',1,1,1,0,'',3000.00),(3,'2019-02-13',1,1,1,0,'',100.00),(4,'2019-02-13',1,1,1,0,'',3050.00),(5,'2019-02-15',1,1,1,0,'',3000.00),(6,'2019-02-15',1,1,1,0,'',3000.00),(7,'2019-02-15',1,1,1,0,'',3000.00),(8,'2019-02-15',1,1,1,0,'',3100.00),(9,'2019-02-15',1,1,1,0,'',3100.00),(10,'2019-02-15',1,1,1,0,'',3100.00),(11,'2019-02-15',1,1,1,0,'',3100.00);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-20 19:05:08
