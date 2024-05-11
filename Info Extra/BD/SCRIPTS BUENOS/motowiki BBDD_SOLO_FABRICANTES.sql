-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2024 a las 19:51:26
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
-- Base de datos: `motowiki`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricante`
--

CREATE TABLE `fabricante` (
  `idFabricante` int(11) NOT NULL,
  `nombreFabricante` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `paisOrigen` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaFundada` int(11) DEFAULT NULL,
  `sitioWeb` varchar(150) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcion1` varchar(150) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcion2` varchar(150) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `imagenFabricante` varchar(120) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `suspendido` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `fabricante`
--

INSERT INTO `fabricante` (`idFabricante`, `nombreFabricante`, `paisOrigen`, `fechaFundada`, `sitioWeb`, `descripcion1`, `descripcion2`, `imagenFabricante`, `suspendido`) VALUES
(1, 'Kawasaki', 'Japón', 1896, 'https://www.kawasaki.es/', 'Kawasaki es una destacada marca japonesa de motocicletas reconocida por su enfoque en la innovación y el rendimiento. Fundada en 1896, se diversificó ', NULL, NULL, 0),
(2, 'Honda', 'Japón', 1948, 'https://www.honda.es/', 'Honda es una influyente marca japonesa de motocicletas reconocida por su calidad y versatilidad. Fundada en 1948, Honda ha sido líder en innovación y ', NULL, NULL, 0),
(3, 'Yamaha', 'Japón', 1887, 'https://www.yamaha-motor.eu', 'Yamaha, otra marca japonesa líder en la industria de las motocicletas, se destaca por su innovación y excelencia en el rendimiento. Fundada en 1955, Y', NULL, NULL, 0),
(4, 'Suzuki', 'Japón', 1909, 'https://www.suzukicycles.com', 'Suzuki es una marca japonesa de motocicletas reconocida por su rendimiento confiable y diseño innovador. Fundada en 1909, Suzuki se ha destacado en di', NULL, NULL, 0),
(5, 'Ducati', 'Italia', 1926, 'https://www.ducati.com', 'Ducati, una marca italiana icónica, se distingue por su pasión por el diseño y el rendimiento. Fundada en 1926, Ducati es famosa por sus motocicletas ', NULL, NULL, 0),
(6, 'KTM', 'Austria', 1934, 'https://www.ktm.com', 'KTM, una marca austriaca reconocida por su enfoque en el rendimiento extremo, ha dejado una marca indeleble en el mundo del motocross y el enduro. Fun', NULL, NULL, 0),
(7, 'Aprilia', 'Italia', 1945, 'https://www.aprilia.com', 'Aprilia, una marca italiana conocida por su pasión por las carreras y la ingeniería de vanguardia, ha dejado una marca distintiva en el mundo del moto', NULL, NULL, 0),
(8, 'Royal Enfield', 'India', 1901, 'https://www.royalenfield.com', 'Royal Enfield, una marca británica con una rica historia que se remonta a 1901, es conocida por sus motocicletas clásicas y de estilo retro. Desde su ', NULL, NULL, 0),
(9, 'Harley-Davidson', 'Estados Unidos', 1903, 'https://www.harley-davidson.com', 'Harley-Davidson, una de las marcas más emblemáticas del motociclismo, es conocida por sus motocicletas de estilo custom y cruiser. Fundada en 1903 en ', NULL, NULL, 0),
(10, 'BMW Motorrad', 'Alemania', 1923, 'https://www.bmwmotorcycles.com', 'BMW Motorrad, la división de motocicletas de BMW, es famosa por su excelencia en ingeniería y diseño innovador. Fundada en 1923, ofrece una amplia gam', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `idUsuario` int(11) NOT NULL,
  `idMoto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motocicleta`
--

CREATE TABLE `motocicleta` (
  `idMoto` int(11) NOT NULL,
  `nombreModelo` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fechaFabricacion` year(4) DEFAULT NULL,
  `tipoMoto` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `cilindrada` int(11) DEFAULT NULL,
  `potencia1` int(11) DEFAULT NULL,
  `potencia2` int(11) DEFAULT NULL,
  `refrigeracion` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoMotor` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `marchas` int(11) DEFAULT NULL,
  `transmision` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `capacidad` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `arranque` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tag` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoCarnet` enum('AM','A1','A2','A') COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `popularidad` int(11) NOT NULL,
  `precioMin` float DEFAULT NULL,
  `precioMax` float DEFAULT NULL,
  `descripcion` varchar(150) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `imagenMoto` varchar(150) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `suspendida` tinyint(4) NOT NULL,
  `idFabricante` int(11) NOT NULL,
  `altura` float DEFAULT NULL,
  `peso` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `idNoticias` int(11) NOT NULL,
  `tituloNoticia` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `entrada1` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `entrada2` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `entrada3` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaPublicacion` date DEFAULT NULL,
  `imagenNoticia` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE `ofertas` (
  `idOfertas` int(11) NOT NULL,
  `enlaceOferta` varchar(150) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `idMoto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `idRegistro` int(11) NOT NULL,
  `fechaCambio` date NOT NULL,
  `tipoCambio` enum('usuario','moto','fabricante') COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcionCambios` varchar(150) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellido1` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellido2` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fechaRegistro` date NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `betado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`idFabricante`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`idUsuario`,`idMoto`),
  ADD KEY `fk_favoritas_motocicleta` (`idMoto`);

--
-- Indices de la tabla `motocicleta`
--
ALTER TABLE `motocicleta`
  ADD PRIMARY KEY (`idMoto`),
  ADD KEY `fk_motocicleta_fabricante` (`idFabricante`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`idNoticias`),
  ADD KEY `fk_noticias_usuario` (`idUsuario`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`idOfertas`),
  ADD KEY `fk_ofertas_motocicleta` (`idMoto`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`idRegistro`),
  ADD KEY `fk_registros_usuario` (`idUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `idFabricante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `motocicleta`
--
ALTER TABLE `motocicleta`
  MODIFY `idMoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `idNoticias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `idOfertas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `fk_favoritas_motocicleta` FOREIGN KEY (`idMoto`) REFERENCES `motocicleta` (`idMoto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_favoritas_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `motocicleta`
--
ALTER TABLE `motocicleta`
  ADD CONSTRAINT `fk_motocicleta_fabricante` FOREIGN KEY (`idFabricante`) REFERENCES `fabricante` (`idFabricante`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `fk_noticias_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD CONSTRAINT `fk_ofertas_motocicleta` FOREIGN KEY (`idMoto`) REFERENCES `motocicleta` (`idMoto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `fk_registros_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
