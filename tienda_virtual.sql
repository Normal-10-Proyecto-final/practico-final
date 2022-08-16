-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2022 a las 21:50:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_virtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`) VALUES
(1, 'Voltsillam', 'https://robohash.org/quisitdolores.png?size=400x400&set=set1'),
(2, 'Zamit', 'https://robohash.org/namveroet.png?size=400x400&set=set1'),
(3, 'Ventosanzap', 'https://robohash.org/doloreutiste.png?size=400x400&set=set1'),
(4, 'Trippledex', 'https://robohash.org/illumvellibero.png?size=400x400&set=set1'),
(5, 'Gembucket', 'https://robohash.org/temporealiquidsimilique.png?size=400x400&set=set1'),
(6, 'Aerified', 'https://robohash.org/voluptatemdistinctioneque.png?size=400x400&set=set1'),
(7, 'Sonsing', 'https://robohash.org/suscipiterroret.png?size=400x400&set=set1'),
(8, 'Biodex', 'https://robohash.org/nostrumminusomnis.png?size=400x400&set=set1'),
(9, 'Viva', 'https://robohash.org/placeatomnisat.png?size=400x400&set=set1'),
(10, 'Stim', 'https://robohash.org/quietharum.png?size=400x400&set=set1'),
(11, 'Andalax', 'https://robohash.org/nihilmagninemo.png?size=400x400&set=set1'),
(12, 'Domainer', 'https://robohash.org/occaecatimolestiaemodi.png?size=400x400&set=set1'),
(13, 'Voltsillam', 'https://robohash.org/namrerummolestiae.png?size=400x400&set=set1'),
(14, 'Greenlam', 'https://robohash.org/etetut.png?size=400x400&set=set1'),
(15, 'Sub-Ex', 'https://robohash.org/optioliberounde.png?size=400x400&set=set1'),
(16, 'Mat Lam Tam', 'https://robohash.org/adipiscienimvitae.png?size=400x400&set=set1'),
(17, 'Fix San', 'https://robohash.org/sedeligendiquia.png?size=400x400&set=set1'),
(18, 'Bitchip', 'https://robohash.org/evenietiuretempora.png?size=400x400&set=set1'),
(19, 'Greenlam', 'https://robohash.org/quiaetsit.png?size=400x400&set=set1'),
(20, 'Lotstring', 'https://robohash.org/quorerumfugiat.png?size=400x400&set=set1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(50) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(100) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `proceso` enum('1','2','3') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `id_categoria`) VALUES
(1, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 1),
(2, 'Appetizer - Spring Roll, Veg', 'Supplement Right Occipital Bone with Autologous Tissue Substitute, Percutaneous Endoscopic Approach', '255.39', 8184, 'https://robohash.org/distinctioautemquisquam.png?size=800x800&set=set1', 2),
(3, 'Pasta - Lasagna Noodle, Frozen', 'Drainage of Left External Auditory Canal, Via Natural or Artificial Opening Endoscopic', '868.69', 95, 'https://robohash.org/velitofficiaconsequatur.png?size=800x800&set=set1', 3),
(4, 'Asparagus - Frozen', 'Revision of Intraluminal Device in Right Ear, Percutaneous Approach', '100.31', 843, 'https://robohash.org/vitaedoloremqueducimus.png?size=800x800&set=set1', 4),
(5, 'Shrimp - Black Tiger 6 - 8', 'Alteration of Bilateral Breast, Percutaneous Approach', '679.75', 95, 'https://robohash.org/quisseddolor.png?size=800x800&set=set1', 5),
(6, 'Ice Cream - Strawberry', 'Excision of Left Ovary, Percutaneous Endoscopic Approach', '775.91', 0, 'https://robohash.org/molestiaebeataeconsequatur.png?size=800x800&set=set1', 6),
(7, 'Dooleys Toffee', 'Drainage of Right Palatine Bone, Percutaneous Endoscopic Approach', '126.42', 9444, 'https://robohash.org/estprovidentitaque.png?size=800x800&set=set1', 7),
(8, 'The Pop Shoppe - Lime Rickey', 'Destruction of Right Vertebral Vein, Percutaneous Endoscopic Approach', '882.82', 40, 'https://robohash.org/repudiandaelaborerem.png?size=800x800&set=set1', 8),
(9, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(10, 'Wine - White, French Cross', 'Nuclear Medicine, Respiratory System, Tomographic (Tomo) Nuclear Medicine Imaging', '342.28', 7935, 'https://robohash.org/utanimideleniti.png?size=800x800&set=set1', 10),
(11, 'Bread - Rolls, Corn', 'Replacement of Right Finger Phalanx with Autologous Tissue Substitute, Percutaneous Endoscopic Approach', '164.50', 3159, 'https://robohash.org/sintmolestiaevitae.png?size=800x800&set=set1', 11),
(12, 'Truffle Shells - White Chocolate', 'Extirpation of Matter from Rectum, Percutaneous Approach', '481.37', 31972, 'https://robohash.org/consequaturimpeditdeleniti.png?size=800x800&set=set1', 12),
(13, 'Towel Dispenser', 'Drainage of Right Hip Joint, Percutaneous Endoscopic Approach', '597.92', 3, 'https://robohash.org/nonestquos.png?size=800x800&set=set1', 13),
(14, 'Wine - Beringer Founders Estate', 'Environmental, Home and Work Barriers Assessment using Orthosis', '454.89', 51, 'https://robohash.org/veniamtemporibusconsequatur.png?size=800x800&set=set1', 14),
(15, 'Pasta - Cannelloni, Sheets, Fresh', 'Bypass Left Kidney Pelvis to Right Kidney Pelvis with Autologous Tissue Substitute, Open Approach', '560.36', 87855, 'https://robohash.org/estetquia.png?size=800x800&set=set1', 15),
(16, 'Sauce - Vodka Blush', 'Insertion of Monitoring Device into Jejunum, Via Natural or Artificial Opening Endoscopic', '801.57', 88290, 'https://robohash.org/rerumestquia.png?size=800x800&set=set1', 16),
(17, 'Pastry - Baked Scones - Mini', 'Repair Right Pulmonary Vein, Percutaneous Approach', '358.38', 9188, 'https://robohash.org/iustoistequo.png?size=800x800&set=set1', 17),
(18, 'Tuna - Yellowfin', 'Supplement Left Upper Extremity with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach', '621.06', 60662, 'https://robohash.org/sedmaioresporro.png?size=800x800&set=set1', 18),
(19, 'Taro Leaves', 'Drainage of Spleen, Open Approach, Diagnostic', '228.56', 3588, 'https://robohash.org/quaecumqueiusto.png?size=800x800&set=set1', 19),
(20, 'Wine - Bourgogne 2002, La', 'Drainage of Right Middle Lobe Bronchus, Percutaneous Approach', '453.83', 9, 'https://robohash.org/consecteturestexplicabo.png?size=800x800&set=set1', 20),
(21, 'Appetizer - Spring Roll, Veg', 'Supplement Right Occipital Bone with Autologous Tissue Substitute, Percutaneous Endoscopic Approach', '255.39', 8184, 'https://robohash.org/distinctioautemquisquam.png?size=800x800&set=set1', 13),
(22, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(23, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(24, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(25, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(26, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(27, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(28, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(29, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(30, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 19),
(31, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(32, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(33, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(34, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(35, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(36, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(37, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(38, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(39, 'Gelatine Leaves - Bulk', 'Destruction of Left Common Iliac Vein, Percutaneous Approach', '866.73', 4900, 'https://robohash.org/ullambeataesuscipit.png?size=800x800&set=set1', 9),
(40, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(41, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(42, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(43, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(44, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(45, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(46, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(47, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(48, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(49, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(50, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(51, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(52, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(53, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(54, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(55, 'Bread Base - Toscano', 'Destruction of Left External Carotid Artery, Percutaneous Endoscopic Approach', '126.04', 8, 'https://robohash.org/errordoloremdoloremque.png?size=800x800&set=set1', 20),
(56, 'Pasta - Lasagna Noodle, Frozen', 'Drainage of Left External Auditory Canal, Via Natural or Artificial Opening Endoscopic', '868.69', 95, 'https://robohash.org/velitofficiaconsequatur.png?size=800x800&set=set1', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
