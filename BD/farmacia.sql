-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2021 a las 00:33:55
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen_categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`, `imagen_categoria`) VALUES
(15, 'Medicina', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombres` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombres`, `apellidos`, `edad`) VALUES
(65, 'Alberto', 'Sanchez', NULL),
(66, 'Efrain', 'Lozada', NULL),
(67, 'Cecilia', 'Lopez', NULL),
(68, 'Norma', 'Mendoza', NULL),
(69, 'Jose', 'Menjivar', NULL),
(70, 'Jose', 'RIVAS', NULL),
(71, 'Jose', 'Rivas', NULL),
(72, 'Carlos', 'sdfdsfsd', NULL),
(73, 'Alberto', 'Rivas', NULL),
(74, 'Jose', 'Menjivar', NULL),
(75, 'Jose', 'Rivas', NULL),
(76, 'Jose', 'Zabaleta', NULL),
(77, 'Jose', 'Zabaleta', NULL),
(78, 'Alberto', 'Deodanes', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle_v` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `precio_unitario` decimal(20,2) NOT NULL,
  `cantidad_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle_v`, `id_venta`, `id_producto`, `id_sucursal`, `precio_unitario`, `cantidad_prod`) VALUES
(37, 32, 1, 1, '1.25', 1),
(38, 32, 2, 1, '5.00', 1),
(39, 32, 1, 1, '1.25', 1),
(40, 32, 3, 1, '2.50', 1),
(41, 32, 1, 1, '1.25', 1),
(42, 33, 3, 1, '2.50', 1),
(43, 33, 1, 1, '1.25', 1),
(44, 33, 1, 1, '1.25', 1),
(45, 33, 1, 1, '1.25', 1),
(46, 33, 3, 1, '2.50', 1),
(47, 33, 2, 1, '5.00', 1),
(48, 34, 3, 1, '2.50', 1),
(49, 34, 2, 1, '5.00', 1),
(50, 34, 1, 1, '1.25', 1),
(51, 34, 2, 1, '5.00', 1),
(52, 34, 2, 1, '5.00', 1),
(53, 34, 2, 1, '5.00', 1),
(54, 34, 2, 1, '5.00', 1),
(55, 34, 1, 1, '1.25', 1),
(56, 34, 3, 1, '2.50', 1),
(57, 34, 2, 1, '5.00', 1),
(58, 34, 1, 1, '1.25', 1),
(59, 34, 3, 1, '2.50', 1),
(60, 34, 3, 1, '2.50', 1),
(61, 35, 1, 1, '1.25', 1),
(62, 35, 3, 1, '2.50', 1),
(63, 36, 3, 1, '2.50', 1),
(64, 36, 3, 1, '2.50', 1),
(65, 37, 3, 1, '2.50', 1),
(66, 37, 2, 1, '5.00', 1),
(67, 37, 1, 1, '1.25', 1),
(68, 38, 3, 1, '2.50', 1),
(69, 38, 2, 1, '5.00', 1),
(70, 38, 3, 1, '2.50', 1),
(71, 38, 3, 1, '2.50', 1),
(72, 38, 3, 1, '2.50', 1),
(73, 38, 3, 1, '2.50', 1),
(74, 39, 2, 1, '5.00', 1),
(75, 40, 1, 1, '1.25', 1),
(76, 41, 2, 1, '5.00', 1),
(77, 41, 4, 1, '1.25', 1),
(78, 42, 2, 1, '5.00', 1),
(79, 42, 2, 1, '5.00', 1),
(80, 43, 1, 1, '1.25', 1),
(81, 43, 1, 1, '1.25', 1),
(82, 44, 6, 1, '1.25', 1),
(83, 44, 6, 1, '1.25', 1),
(84, 44, 6, 1, '1.25', 1),
(85, 44, 6, 1, '1.25', 1),
(86, 44, 6, 1, '1.25', 1),
(87, 45, 5, 2, '1.25', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id_inventario` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `stock` float DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`id_inventario`, `id_producto`, `id_categoria`, `stock`, `estado`) VALUES
(27, 1, 15, 0, 1),
(28, 2, 15, 2, 1),
(29, 3, 15, 13, 1),
(30, 4, 15, 149, 1),
(32, 5, 15, 49, 1),
(33, 6, 15, 995, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limite_productos`
--

CREATE TABLE `limite_productos` (
  `id_limite` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `limite` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `limite_productos`
--

INSERT INTO `limite_productos` (`id_limite`, `id_producto`, `limite`) VALUES
(14, 1, 100),
(15, 3, 2323);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_productos` varchar(255) CHARACTER SET armscii8 DEFAULT NULL,
  `descripcion` text CHARACTER SET armscii8 DEFAULT NULL,
  `precio_compra` decimal(8,2) DEFAULT NULL,
  `precio_venta` decimal(8,2) DEFAULT NULL,
  `unidad_medida` varchar(255) CHARACTER SET armscii8 DEFAULT NULL,
  `fecha_vencimiento` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `id_proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_productos`, `descripcion`, `precio_compra`, `precio_venta`, `unidad_medida`, `fecha_vencimiento`, `imagen`, `id_proveedor`) VALUES
(1, 'Acetaminofen full', 'Analgesico para los dolores, como dolor cuerpo', '10.00', '1.25', '200ml', '2023-07-07', 'productos/Medicina/Acetaminofen full.png', 4),
(2, 'Ibuprofeno', 'Analgesico', '30.00', '5.00', '600mg', '2026-10-08', 'productos/Medicina/Ibuprofeno.png', 4),
(3, 'Alka Seltzer', 'Pastillas para dolor de estomago, cabeza', '15.00', '2.50', '20mg', '2023-07-08', 'productos/Medicina/Alka Seltzer.png', 2),
(4, 'Alka- AD', 'Controla los sintomas de la diarrea', '50.00', '1.25', '2mg', '2024-06-08', 'productos/Medicina/Alka- AD.png', 4),
(5, 'Penecilina', 'Analgesico en baselina', '50.00', '1.25', 'miligramos', '2021-05-23', 'productos/Medicina/Penecilina.png', 2),
(6, 'Vic Vaporuk', 'Baselina para calmar los sintomas del resfriado', '100.00', '1.25', 'kilogramos', '2026-12-23', 'productos/Medicina/Vic Vaporuk.png', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_prov` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `direccion_prov` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telefono_prov` int(150) NOT NULL,
  `img_prov` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Guardara informacion de los proveedores';

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_prov`, `direccion_prov`, `telefono_prov`, `img_prov`) VALUES
(2, 'Dripolax', 'Calle a san marcos', 22702221, 'proveedor/Dripolax Lap/Dripolax Lap.jpg'),
(4, 'Solaris full', 'Calle a san jacinto', 77485843, 'proveedor/Solaris/Solaris.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_empresa` int(11) NOT NULL,
  `nombre_empresa` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email_empresa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefono_empresa` int(11) NOT NULL,
  `direccion_empresa` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_empresa`, `nombre_empresa`, `email_empresa`, `telefono_empresa`, `direccion_empresa`) VALUES
(1, 'Driprolab', 'Driprolab@gob.salud', 4545454, 'san salvador'),
(2, 'Hola', 'josedeodanes@gmail.com', 7585858, 'San salvador'),
(5, 'fdgfdg', 'dfgfdgfdg', 0, 'fdgfdgdfgdfg'),
(6, 'fghfghg', 'fhfghfghfgh', 0, 'gfhfgh'),
(7, 'fghgfh', 'gfhgfhfgh', 0, 'fghfghfgh');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passw` text DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `token` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `email`, `passw`, `tipo`, `estado`, `token`) VALUES
(1, 'jose', 'josedeodanes99@gmail.com', '$2y$10$OaJiSlhoFQ7E1suwbpkgHe02vosndFcB8fBIAI0LCTZYfuDacBZ.u', 1, 1, NULL),
(2, 'admin', 'josedeo@gma', '$2y$10$wDJkCDpKs9ucQUwNFWIcgOn5WXgXjAo3Bm6peDKctjOwNR1Yt27Hm', 2, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `total_pago` decimal(20,2) NOT NULL,
  `descuento` int(11) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fecha_venta`, `total_pago`, `descuento`, `id_cliente`) VALUES
(32, '2021-05-19', '11.25', 0, 65),
(33, '2021-05-20', '12.38', 10, 66),
(34, '2021-05-20', '38.06', 13, 67),
(35, '2021-05-20', '3.56', 5, 68),
(36, '2021-05-23', '5.00', 0, 69),
(37, '2021-05-23', '8.75', 0, 70),
(38, '2021-05-23', '17.50', 0, 71),
(39, '2021-05-23', '5.00', 0, 72),
(40, '2021-05-23', '1.25', 0, 73),
(41, '2021-05-23', '6.25', 0, 74),
(42, '2021-05-23', '10.00', 0, 75),
(43, '2021-05-23', '2.18', 13, 76),
(44, '2021-05-23', '5.44', 13, 77),
(45, '2021-05-24', '1.25', 0, 78);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle_v`),
  ADD KEY `fk_detalle_product` (`id_producto`),
  ADD KEY `fk_detalle_sucursal` (`id_sucursal`),
  ADD KEY `fk_detalle_venta` (`id_venta`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id_inventario`),
  ADD UNIQUE KEY `id_producto` (`id_producto`),
  ADD KEY `categoria` (`id_categoria`);

--
-- Indices de la tabla `limite_productos`
--
ALTER TABLE `limite_productos`
  ADD PRIMARY KEY (`id_limite`),
  ADD UNIQUE KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fk_ventas_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `limite_productos`
--
ALTER TABLE `limite_productos`
  MODIFY `id_limite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_product` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_venta` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD CONSTRAINT `categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `limite_productos`
--
ALTER TABLE `limite_productos`
  ADD CONSTRAINT `producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_prove` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
