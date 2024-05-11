-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2024 a las 21:27:04
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

--
-- Volcado de datos para la tabla `motocicleta`
--

INSERT INTO `motocicleta` (`idMoto`, `nombreModelo`, `fechaFabricacion`, `tipoMoto`, `cilindrada`, `potencia1`, `potencia2`, `refrigeracion`, `tipoMotor`, `marchas`, `transmision`, `capacidad`, `arranque`, `tag`, `tipoCarnet`, `popularidad`, `precioMin`, `precioMax`, `descripcion`, `imagenMoto`, `suspendida`, `idFabricante`, `altura`, `peso`) VALUES
(273, 'Brute Force 300', 2022, 'ATV', 271, 22, 16, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1170, 243),
(274, 'Brute Force 750 4x4i', 2022, 'ATV', 749, NULL, NULL, 'Liquid', 'V2, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '18.93', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1219, 317.1),
(275, 'Concours 14 ', 2022, 'Sport touring', 1352, 155, 113, 'Liquid', 'In-line four, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.95', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1290, 313),
(276, 'KFX50', 2022, 'ATV', 49, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '5.68', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 910, 111.1),
(277, 'KFX90', 2022, 'ATV', 90, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 925, 121.1),
(278, 'KLR 650', 2022, 'Super motard', 651, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '23.09', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1466, 206.9),
(279, 'KLR 650 Adventure', 2022, 'Super motard', 651, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '23.09', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1466, 220.9),
(280, 'KLR 650 Traveller', 2022, 'Super motard', 651, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '23.09', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1466, 214),
(281, 'KLX 110R ', 2022, 'Enduro / offroad', 112, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '3.79', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 955, 76),
(282, 'KLX 110R L', 2022, 'Enduro / offroad', 112, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '3.79', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 991, 76),
(283, 'KLX 140R', 2022, 'Enduro / offroad', 144, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '5.68', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1049, 93),
(284, 'KLX 230 SE', 2022, 'Enduro / offroad', 233, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1158, 132),
(285, 'KLX 230S', 2022, 'Enduro / offroad', 233, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1110, 133),
(286, 'KLX230', 2022, 'Enduro / offroad', 233, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1166, 133),
(287, 'KLX300', 2022, 'Enduro / offroad', 292, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1194, NULL),
(288, 'KLX300 SM', 2022, 'Super motard', 292, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1146, NULL),
(289, 'KX 450SR', 2022, 'Cross / motocross', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1265, 110.2),
(290, 'KX100 ', 2022, 'Cross / motocross', 99, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '5.00', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1151, 77),
(291, 'KX112', 2022, 'Cross / motocross', 112, 7, 5, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '5.00', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1151, 76.7),
(292, 'KX250', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.40', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1265, 107.3),
(293, 'KX250X', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.21', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1260, NULL),
(294, 'KX450', 2022, 'Cross / motocross', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1265, 110),
(295, 'KX450 SR', 2022, 'Cross / motocross', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1265, 110),
(296, 'KX450X', 2022, 'Cross / motocross', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1265, NULL),
(297, 'KX65', 2022, 'Cross / motocross', 64, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '3.79', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 955, 60),
(298, 'KX85 ', 2022, 'Cross / motocross', 84, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '5.00', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1100, 75),
(299, 'Ninja 650 ', 2022, 'Sport', 649, 52, 38, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.14', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1146, 192.1),
(300, 'Ninja 1000SX', 2022, 'Sport', 1043, 200, 146, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1191, 233.1),
(301, 'Ninja 1000SX Tourer', 2022, 'Sport', 1043, 142, 104, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1191, 235),
(302, 'Ninja 125', 2022, 'Sport', 125, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1075, 149),
(303, 'ADV150', 2022, 'Scooter', 149, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '8.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1153, NULL),
(304, 'ADV350', 2022, 'Scooter', 330, 29, 21, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '11.70', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1430, NULL),
(305, 'Ace 125', 2022, 'Allround', 124, 9, 6, 'Air', 'V2, four-stroke', 4, 'Chain   (final drive)', '10.00', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1059, NULL),
(306, 'Activa', 2022, 'Scooter', 109, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1156, 106),
(307, 'Activa 125', 2022, 'Scooter', 123, 8, 6, '', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1170, 109),
(308, 'Africa Twin', 2022, 'Enduro / offroad', 1084, 101, 74, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '24.80', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1395, 238),
(309, 'Africa Twin Adventure Sports', 2022, 'Enduro / offroad', 1084, 101, 74, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '24.80', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1490, 238),
(310, 'AirBlade 150', 2022, 'Scooter', 150, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1112, 113),
(311, 'BeAT Street', 2022, 'Scooter', 108, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1068, 93),
(312, 'Benly', 2022, 'Scooter', 108, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '10.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1040, NULL),
(313, 'CB1000R', 2022, 'Naked bike', 998, 144, 105, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1090, 211),
(314, 'CB1000R Black Edition', 2022, 'Naked bike', 998, 144, 105, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1090, 211.8),
(315, 'CB125F                                       ', 2022, 'Allround', 123, 11, 8, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1100, 117),
(316, 'CB125R                                       ', 2022, 'Naked bike', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '10.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 130),
(317, 'CB125e                                       ', 2022, 'Naked bike', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1094, 137),
(318, 'CB150F                                       ', 2022, 'Allround', 149, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1085, 124),
(319, 'CB200X', 2022, 'Sport', 184, 17, 12, '', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1248, 147),
(320, 'CB300R', 2022, 'Naked bike', 286, 35, 26, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '10.22', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 143.8),
(321, 'CB300R Neo Sports Cafe ', 2022, 'Naked bike', 286, 39, 28, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '10.22', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1052, 144),
(322, 'CB350RS', 2022, 'Sport', 348, 21, 15, '', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1097, 179),
(323, 'CB500F', 2022, 'Naked bike', 471, 47, 34, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '16.70', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1060, 189),
(324, 'CB500X', 2022, 'Sport', 471, 47, 34, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1358, 199),
(325, 'CB650R', 2022, 'Naked bike', 649, 94, 69, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '15.40', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1075, 202.5),
(326, 'CBR1000RR-R Fireblade', 2022, 'Sport', 998, 215, 157, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1120, 194.1),
(327, 'CBR1000RR-R Fireblade SP', 2022, 'Sport', 999, 215, 157, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.28', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1140, 201.3),
(328, 'CBR150R', 2022, 'Sport', 149, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1090, 137),
(329, 'CBR300R', 2022, 'Sport', 286, 35, 26, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.87', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 160.6),
(330, 'CBR500R', 2022, 'Sport', 471, 47, 34, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1145, 190.1),
(331, 'CBR600RR ', 2022, 'Sport', 599, 118, 86, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 186),
(332, 'CBR650R', 2022, 'Sport', 649, 94, 69, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '15.40', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1150, 208),
(333, 'CD110 Dream', 2022, 'Allround', 109, 9, 6, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '9.10', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1076, 112),
(334, 'CD70', 2022, 'Allround', 72, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '8.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1014, NULL),
(335, 'CD70 Dream', 2022, 'Allround', 72, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '8.60', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1014, NULL),
(336, 'CG 125', 2022, 'Allround', 124, 11, 8, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '9.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1026, NULL),
(337, 'CMX1100 Rebel', 2022, 'Custom / cruiser', 1084, 86, 63, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.60', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1115, 223),
(338, 'CMX500 Rebel', 2022, 'Sport', 471, 46, 33, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '11.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1090, 191),
(339, 'CRF1000L Adventure Sports', 2022, 'Enduro / offroad', 1084, 101, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '18.77', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1490, 238),
(340, 'CRF1000L Africa Twin', 2022, 'Enduro / offroad', 1084, 101, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '18.77', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1391, 226),
(341, 'CRF110F', 2022, 'Enduro / offroad', 109, 7, 5, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 922, 76.7),
(342, 'CRF125F', 2022, 'Cross / motocross', 124, 9, 7, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1000, 88),
(343, 'CRF125F Big Wheel', 2022, 'Enduro / offroad', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '3.79', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 90.3),
(344, 'CRF150R', 2022, 'Cross / motocross', 149, 24, 17, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1171, 84.4),
(345, 'CRF150RB', 2022, 'Cross / motocross', 149, 24, 17, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1170, 83.9),
(346, 'CRF250F', 2022, 'Cross / motocross', 249, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.06', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 120.2),
(347, 'CRF250R', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1265, 104),
(348, 'CRF250RX', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '8.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1281, 108),
(349, 'CRF250RX Enduro', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1281, 105),
(350, 'CRF300 Rally', 2022, 'Enduro / offroad', 286, 27, 20, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.80', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1415, 153),
(351, 'CRF300L', 2022, 'Cross / motocross', 286, 27, 20, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.80', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1200, 142),
(352, 'CRF300L Rally', 2022, 'Cross / motocross', 286, 27, 20, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.87', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1200, 150.1),
(353, 'CRF300RX Enduro', 2022, 'Enduro / offroad', 295, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1260, 108),
(354, 'CRF400RX', 2022, 'Enduro / offroad', 413, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.95', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1282, 113.9),
(355, 'CRF400RX Enduro', 2022, 'Enduro / offroad', 413, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.95', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1282, 111.8),
(356, 'CRF450R', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1267, 110.7),
(357, 'CRF450R-S', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1267, 112),
(358, 'CRF450RL', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1271, 132),
(359, 'CRF450RWE', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.43', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1271, 110.7),
(360, 'CRF450RX', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '8.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1282, 113.9),
(361, 'CRF450RX Enduro', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1282, 111.8),
(362, 'CRF450X', 2022, 'Enduro / offroad', 449, 45, 33, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.61', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 124.7),
(363, 'CRF50F', 2022, 'Enduro / offroad', 49, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 3, 'Chain   (final drive)', '4.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 775, 50.3),
(364, 'CT125', 2022, 'Scooter', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1085, 120),
(365, 'Click 125i', 2022, 'Scooter', 125, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1062, 111),
(366, 'Dio 110', 2022, 'Scooter', 109, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1150, 105),
(367, 'Elite 125', 2022, 'Scooter', 124, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1139, 109),
(368, 'Fireblade SP 30th Anniversary', 2022, 'Sport', 999, 215, 157, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1140, 201),
(369, 'Forza 125', 2022, 'Scooter', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '11.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1500, 161),
(370, 'Forza 350', 2022, 'Scooter', 329, 28, 21, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '11.70', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1507, NULL),
(371, 'Forza 750', 2022, 'Scooter', 745, 58, 42, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1485, NULL),
(372, 'FourTrax Foreman 4x4', 2022, 'ATV', 518, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '14.76', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1220, NULL),
(373, 'FourTrax Foreman Rubicon 4x4', 2022, 'ATV', 518, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '14.76', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1234, NULL),
(374, 'FourTrax Rancher', 2022, 'ATV', 420, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '14.76', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1173, 263.1),
(375, 'FourTrax Recon', 2022, 'ATV', 229, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '9.08', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1069, 198.2),
(376, 'FourTrax Rincon', 2022, 'ATV', 675, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 3, 'Shaft drive (cardan)   (final drive)', '16.65', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1206, NULL),
(377, 'Fury', 2022, 'Custom / cruiser', 1312, NULL, NULL, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '12.87', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 300.7),
(378, 'GL 1800 Gold Wing Tour', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.01', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1430, 380),
(379, 'GL 1800 Gold Wing Tour DCT', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 7, 'Shaft drive (cardan)   (final drive)', '21.01', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1340, 367),
(380, 'GL1800 Gold Wing', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1340, 366),
(381, 'GL1800 Gold Wing DCT', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 7, 'Shaft drive (cardan)   (final drive)', '21.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1340, 366),
(382, 'Genio', 2022, 'Scooter', 108, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1061, 89),
(383, 'Gold Wing', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.01', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1340, 357),
(384, 'Gold Wing Tour', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.01', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1430, 385),
(385, 'Grazia', 2022, 'Scooter', 123, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1167, 106),
(386, 'Grom', 2022, 'Sport', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1015, 103),
(387, 'Hornet 2.0', 2022, 'Sport', 184, 17, 12, 'NULL', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1064, 142),
(388, 'Livo                                        ', 2022, 'Allround', 109, 9, 6, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '9.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1116, 114),
(389, 'MSX125 ', 2022, 'Sport', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1015, 103),
(390, 'Metropolitan', 2022, 'Scooter', 49, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.54', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 81.2),
(391, 'Monkey 125', 2022, 'Allround', 124, 9, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '5.68', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1030, 104),
(392, 'Montesa 4 Ride                               ', 2022, 'Trial', 258, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.30', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1160, NULL),
(393, 'CD110 Dream', 2022, 'Allround', 109, 9, 6, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '9.10', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1076, 112),
(394, 'CD70', 2022, 'Allround', 72, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '8.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1014, NULL),
(395, 'CD70 Dream', 2022, 'Allround', 72, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '8.60', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1014, NULL),
(396, 'CG 125', 2022, 'Allround', 124, 11, 8, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '9.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1026, NULL),
(397, 'CMX1100 Rebel', 2022, 'Custom / cruiser', 1084, 86, 63, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.60', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1115, 223),
(398, 'CMX500 Rebel', 2022, 'Sport', 471, 46, 33, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '11.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1090, 191),
(399, 'CRF1000L Adventure Sports', 2022, 'Enduro / offroad', 1084, 101, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '18.77', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1490, 238),
(400, 'CRF1000L Africa Twin', 2022, 'Enduro / offroad', 1084, 101, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '18.77', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1391, 226),
(401, 'CRF110F', 2022, 'Enduro / offroad', 109, 7, 5, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 922, 76.7),
(402, 'CRF125F', 2022, 'Cross / motocross', 124, 9, 7, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1000, 88),
(403, 'CRF125F Big Wheel', 2022, 'Enduro / offroad', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '3.79', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 90.3),
(404, 'CRF150R', 2022, 'Cross / motocross', 149, 24, 17, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1171, 84.4),
(405, 'CRF150RB', 2022, 'Cross / motocross', 149, 24, 17, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1170, 83.9),
(406, 'CRF250F', 2022, 'Cross / motocross', 249, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.06', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 120.2),
(407, 'CRF250R', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1265, 104),
(408, 'CRF250RX', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '8.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1281, 108),
(409, 'CRF250RX Enduro', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1281, 105),
(410, 'CRF300 Rally', 2022, 'Enduro / offroad', 286, 27, 20, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.80', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1415, 153),
(411, 'CRF300L', 2022, 'Cross / motocross', 286, 27, 20, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.80', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1200, 142),
(412, 'CRF300L Rally', 2022, 'Cross / motocross', 286, 27, 20, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.87', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1200, 150.1),
(413, 'CRF300RX Enduro', 2022, 'Enduro / offroad', 295, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1260, 108),
(414, 'CRF400RX', 2022, 'Enduro / offroad', 413, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.95', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1282, 113.9),
(415, 'CRF400RX Enduro', 2022, 'Enduro / offroad', 413, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.95', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1282, 111.8),
(416, 'CRF450R', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1267, 110.7),
(417, 'CRF450R-S', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1267, 112),
(418, 'CRF450RL', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1271, 132),
(419, 'CRF450RWE', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.43', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1271, 110.7),
(420, 'CRF450RX', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '8.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1282, 113.9),
(421, 'CRF450RX Enduro', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, 1282, 111.8),
(422, 'CRF450X', 2022, 'Enduro / offroad', 449, 45, 33, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.61', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 124.7),
(423, 'AG125', 2022, 'Enduro / offroad', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '11.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1095, 113),
(424, 'AG200F', 2022, 'Enduro / offroad', 196, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '10.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1155, 128),
(425, 'Aerox 155', 2022, 'Scooter', 155, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1150, 126),
(426, 'Bolt R-Spec', 2022, 'Custom / cruiser', 942, NULL, NULL, 'Air', 'V2, four-stroke', 5, 'Belt   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1120, 245.9),
(427, 'Crypton ', 2022, 'Scooter', 110, 7, 5, 'Liquid', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1040, 103),
(428, 'Delight 125', 2022, 'Scooter', 125, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1145, 101),
(429, 'FJR1300AE', 2022, 'Sport touring', 1298, 144, 105, 'Liquid', 'In-line four, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '25.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1455, 292),
(430, 'FJR1300ES', 2022, 'Sport touring', 1298, 146, 107, 'Liquid', 'In-line four, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '25.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1455, 291.2),
(431, 'FZ 25', 2022, 'Naked bike', 249, 21, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1075, 153),
(432, 'FZ-FI', 2022, 'Naked bike', 149, 12, 9, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 135),
(433, 'FZ-S Fi ', 2022, 'Naked bike', 149, 12, 9, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 135),
(434, 'FZ-S Fi Deluxe', 2022, 'Naked bike', 149, 12, 9, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 135),
(435, 'FZ-X', 2022, 'Classic', 149, 12, 9, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '10.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 139),
(436, 'FZS 25', 2022, 'Naked bike', 249, 21, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1105, 154),
(437, 'FZi', 2022, 'Naked bike', 149, 13, 10, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1030, 131),
(438, 'Fascino 125Fi', 2022, 'Scooter', 125, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1150, 99),
(439, 'Grizzly 90', 2022, 'ATV', 90, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '6.43', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1006, 139.7),
(440, 'Grizzly EPS', 2022, 'ATV', 686, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1253, 318),
(441, 'Grizzly EPS SE', 2022, 'ATV', 686, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1270, 342),
(442, 'Grizzly EPS XT-R', 2022, 'ATV', 686, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1270, 355.2),
(443, 'Kodiak 450', 2022, 'ATV', 421, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 289),
(444, 'Kodiak 450 EPS ', 2022, 'ATV', 421, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 295),
(445, 'MT-03', 2022, 'Sport', 321, 42, 31, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1035, 168),
(446, 'MT-07', 2022, 'Sport', 689, 74, 54, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1105, 184.2),
(447, 'MT-07HO', 2022, 'Sport', 689, 74, 54, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1105, 184.2),
(448, 'MT-09', 2022, 'Naked bike', 890, NULL, NULL, 'Liquid', 'In-line three, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1191, 189.2),
(449, 'MT-09 SP', 2022, 'Naked bike', 890, NULL, NULL, 'Liquid', 'In-line three, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1191, 190.1),
(450, 'MT-10', 2022, 'Naked bike', 998, 166, 121, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 212),
(451, 'MT-10 SP', 2022, 'Naked bike', 998, 164, 120, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1110, 210),
(452, 'MT-125', 2022, 'Naked bike', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1065, 142),
(453, 'MT-15', 2022, 'Naked bike', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '10.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1070, 138),
(454, 'Mio Gear', 2022, 'Scooter', 125, 9, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1060, NULL),
(455, 'Mio Gravis', 2022, 'Scooter', 125, 9, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1110, NULL),
(456, 'Mio Sporty', 2022, 'Scooter', 114, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.10', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1050, NULL),
(457, 'Mio i125', 2022, 'Scooter', 125, 9, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1035, NULL),
(458, 'NM-X', 2022, 'Scooter', 155, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '6.60', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 127),
(459, 'NMAX 125', 2022, 'Scooter', 125, 12, 9, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 131),
(460, 'NMAX 155', 2022, 'Scooter', 155, 12, 9, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 127),
(461, 'Neo 125 UBS', 2022, 'Scooter', 125, 10, 7, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1070, 97),
(462, 'Neos 4', 2022, 'Scooter', 49, 3, 2, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.40', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1125, 95),
(463, 'Niken', 2022, 'Naked bike', 847, 115, 84, 'Liquid', 'In-line three, four-stroke', 6, 'Chain   (final drive)', '18.17', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1250, 263.1),
(464, 'PW50', 2022, 'Minibike, cross', 49, NULL, NULL, 'Air', 'Single cylinder, two-stroke', 0, 'Shaft drive (cardan)   (final drive)', '2.01', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 706, 41),
(465, 'R1', 2022, 'Sport', 998, 197, 144, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 201),
(466, 'R1 GYTR VR46', 2022, 'Sport', 998, 197, 144, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 201),
(467, 'R1 World GP 60th Anniversary', 2022, 'Sport', 998, 197, 144, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 201),
(468, 'R125', 2022, 'Sport', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1065, 144),
(469, 'R125 World GP 60th Anniversary', 2022, 'Sport', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1065, 144),
(470, 'R15', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(471, 'R15 V4', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(472, 'R15M', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(473, 'R15M MotoGP Edition', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(474, 'R15S', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(475, 'R1M', 2022, 'Sport', 998, 197, 144, 'Liquid', 'In-line six, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 202),
(476, 'R3', 2022, 'Sport', 321, 41, 30, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1140, 169),
(477, 'R3 World GP 60th Anniversary', 2022, 'Sport', 321, 41, 30, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1140, 169),
(478, 'R6 GYTR', 2022, 'Sport', 599, 117, 85, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1150, 190),
(479, 'R6 Race', 2022, 'Sport', 599, 117, 85, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1150, 185),
(480, 'R7', 2022, 'Sport', 689, 72, 53, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 188),
(481, 'R7  World GP 60th Anniversary', 2022, 'Sport', 689, 72, 53, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 188),
(482, 'Raptor 700', 2022, 'ATV', 686, NULL, NULL, 'NULL', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 191.4);

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
  MODIFY `idMoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

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
