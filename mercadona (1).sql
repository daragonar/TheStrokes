-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2017 a las 09:16:11
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mercadona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idClie` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `pass` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `logdate` date DEFAULT NULL,
  `act` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idClie`, `name`, `lastname`, `pass`, `mail`, `logdate`, `act`) VALUES
(1, 'David', 'lasdjl', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, 0),
(2, 'Paco', 'Pico', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, 0),
(3, 'david1 ', 'tonto', '123456789123', 'm@m.com', NULL, 0),
(4, 'david2 ', 'tonto', '12345', 'm@m.com', NULL, 0),
(5, 'david3 ', 'tonto', '121', 'm@m.com', NULL, 0),
(6, 'David', 'david', '827ccb0eea8a706c4c34a16891f84e7b', 'mail@mail.com', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `buydate` date DEFAULT NULL,
  `customer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ped_prod`
--

CREATE TABLE `ped_prod` (
  `idped` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text CHARACTER SET latin1,
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `img` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `description`, `name`, `img`, `price`) VALUES
(1, 'El chocolate (en nahuatl: ñocolátl) es el alimento que se obtiene mezclando azúcar con dos productos derivados de la manipulación de las semillas del cacao', 'Chocolate', 'chocolate.jpg', 2.4),
(2, 'Lorem ipsum', 'Suchard Blanco', 'suchard.jpg', 1.3),
(3, 'limpiador de baño', 'Baño', 'bano.jpg', 2.3),
(4, 'pera', 'pera', 'pera.jpg', 0.3),
(5, 'manzana', 'manzana', 'manzana.jpg', 2.3),
(6, 'naranja', 'naranja', 'naranja.jpg', 0.3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idClie`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ped_prod`
--
ALTER TABLE `ped_prod`
  ADD PRIMARY KEY (`idped`,`idprod`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idClie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
