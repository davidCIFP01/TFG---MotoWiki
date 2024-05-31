-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2024 a las 16:27:41
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

CREATE DATABASE `motowiki`;
USE `motowiki`;

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
  `sitioWeb` varchar(500) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcion1` varchar(750) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcion2` varchar(750) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `imagenFabricante` varchar(250) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `suspendido` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `fabricante`
--

INSERT INTO `fabricante` (`idFabricante`, `nombreFabricante`, `paisOrigen`, `fechaFundada`, `sitioWeb`, `descripcion1`, `descripcion2`, `imagenFabricante`, `suspendido`) VALUES
(1, 'Kawasaki', 'Japón', 1896, 'https://www.kawasaki.es/', 'Kawasaki es una destacada marca japonesa de motocicletas, conocida por su innovación y tecnología avanzada. Fundada en 1896, Kawasaki inicialmente se especializó en construcción naval y maquinaria pesada. En 1953, se expandió al mercado de motocicletas, ganándose rápidamente una reputación por sus modelos de alto rendimiento y fiabilidad. Sus motos deportivas y de carreras son especialmente populares, destacando en competiciones internacionales. La marca mantiene su compromiso con la calidad y el rendimiento, siendo un referente en el mundo del motociclismo.', NULL, '../view/assets/images/fabricante/kawasaki.jpeg', 0),
(2, 'Honda', 'Japón', 1948, 'https://www.honda.es/', 'Honda es una influyente marca japonesa de motocicletas y automóviles, fundada en 1948. Es conocida por su fiabilidad, innovación y diseño eficiente. Honda ha sido pionera en la implementación de tecnologías avanzadas y sostenibles, como los motores híbridos y eléctricos. Sus motocicletas abarcan desde modelos deportivos hasta scooters y touring, ganando numerosos campeonatos en competiciones de motociclismo. Honda se distingue por su compromiso con la excelencia y la satisfacción del cliente, siendo una de las marcas más confiables y respetadas del mundo.', 'Honda, una marca japonesa líder en motocicletas y automóviles desde 1948, destaca por su fiabilidad, innovación y diseño eficiente. Reconocida por su compromiso con la excelencia y la satisfacción del cliente, Honda es pionera en tecnologías avanzadas y sostenibles, incluidos los motores híbridos y eléctricos. Su amplia gama de motocicletas, desde deportivas hasta scooters y touring, ha ganado numerosos campeonatos en competiciones de motociclismo, consolidando su posición como una marca respetada y confiable en todo el mundo.', '../view/assets/images/fabricante/hondaMotor.jpg', 0),
(3, 'Yamaha', 'Japón', 1887, 'https://www.yamaha-motor.eu', 'Yamaha, otra marca japonesa líder en la industria de motocicletas, fue fundada en 1887 como fabricante de instrumentos musicales. En 1955, Yamaha Motor Co., Ltd. se estableció, dedicándose a la producción de motocicletas. Yamaha es reconocida por su diversidad de modelos, desde motos deportivas y de competición hasta scooters y motos de turismo. La marca se destaca por su innovación tecnológica, rendimiento y diseño estético. Yamaha también tiene una fuerte presencia en competiciones de motociclismo, ganando múltiples títulos en MotoGP y otros campeonatos.', NULL, '../view/assets/images/fabricante/yamaha.jpg', 0),
(4, 'Suzuki', 'Japón', 1909, 'https://www.suzukicycles.com', 'Suzuki es una marca japonesa de motocicletas reconocida por su diversidad y calidad. Fundada en 1909, Suzuki comenzó fabricando telares antes de expandirse a motocicletas en 1952. La marca ofrece una amplia gama de modelos, desde motos deportivas y de aventura hasta scooters y motos de cross. Suzuki se destaca por su innovación tecnológica y su éxito en competiciones de motociclismo, especialmente en MotoGP. La compañía mantiene su compromiso con la fiabilidad, el rendimiento y la satisfacción del cliente, siendo una opción popular entre los motociclistas de todo el mundo.', NULL, '../view/assets/images/fabricante/suzuki.png', 0),
(5, 'Ducati', 'Italia', 1926, 'https://www.ducati.com', 'Ducati, una marca italiana icónica, se distingue por su diseño elegante y su rendimiento excepcional. Fundada en 1926, Ducati se ha convertido en sinónimo de motocicletas deportivas de alta gama. La marca es conocida por sus motores potentes, su ingeniería avanzada y su distintivo sonido de motor. Ducati ha tenido un gran éxito en competiciones de motociclismo, especialmente en el Campeonato Mundial de Superbikes. Con su enfoque en la innovación y la excelencia, Ducati continúa siendo un referente en el mundo del motociclismo de alto rendimiento.', NULL, '../view/assets/images/fabricante/Ducati.jpg', 0),
(6, 'KTM', 'Austria', 1934, 'https://www.ktm.com', 'KTM, una marca austriaca reconocida por su enfoque en motos de alta performance y off-road, fue fundada en 1934. KTM se ha ganado una reputación por su durabilidad y capacidad en terrenos difíciles, destacándose en competiciones como el Dakar Rally. Sus motocicletas abarcan desde modelos de motocross y enduro hasta motos deportivas y de carretera. KTM es conocida por su innovación tecnológica, ingeniería precisa y diseño audaz. La marca sigue expandiéndose globalmente, ofreciendo productos que combinan rendimiento y versatilidad para todos los entusiastas del motociclismo.', NULL, '../view/assets/images/fabricante/ktm.jpg', 0),
(7, 'Aprilia', 'Italia', 1945, 'https://www.aprilia.com', 'Aprilia, una marca italiana conocida por su pasión por las motos deportivas y de competición, fue fundada en 1945. Aprilia se destaca por su innovación tecnológica y su éxito en competiciones de motociclismo, incluyendo numerosos títulos en MotoGP y Superbike. La marca ofrece una gama de motocicletas que van desde scooters hasta motos de alto rendimiento, siempre con un enfoque en la agilidad y el diseño. Aprilia es reconocida por su compromiso con la calidad y la ingeniería avanzada, atrayendo a entusiastas del motociclismo que buscan emoción y fiabilidad.', NULL, '../view/assets/images/fabricante/aprilia.jpg', 1),
(8, 'Royal Enfield', 'India', 1901, 'https://www.royalenfield.com', 'Royal Enfield, una marca británica con una rica historia, fue fundada en 1901 y es conocida por sus motocicletas clásicas y atemporales. Originalmente británica, la marca ahora tiene su sede en India, donde ha mantenido su legado de calidad y robustez. Royal Enfield es famosa por sus modelos emblemáticos como la Bullet y la Classic, que combinan un diseño retro con tecnología moderna. Estas motos son populares por su durabilidad y facilidad de mantenimiento, ofreciendo una experiencia de conducción única y nostálgica.', NULL, '../view/assets/images/fabricante/RE.webp', 0),
(9, 'Harley-Davidson', 'Estados Unidos', 1903, 'https://www.harley-davidson.com', 'Harley-Davidson, una de las marcas más emblemáticas de Estados Unidos, fue fundada en 1903. Conocida por sus motocicletas cruiser de gran tamaño y estilo inconfundible, Harley-Davidson representa el espíritu de libertad y aventura en el motociclismo. La marca ha construido una fuerte comunidad de seguidores y una identidad cultural única. Sus motos son apreciadas por su diseño robusto, su sonido característico y su capacidad para largas distancias. Harley-Davidson sigue innovando, mientras mantiene sus raíces en la tradición y la calidad artesanal.', NULL, '../view/assets/images/fabricante/HD.jpg', 0),
(10, 'BMW Motorrad', 'Alemania', 1923, 'https://www.bmwmotorcycles.com', 'BMW Motorrad, la división de motocicletas de BMW, fue fundada en 1923 y es conocida por su ingeniería alemana de precisión y su enfoque en el rendimiento y la seguridad. BMW ofrece una amplia gama de motocicletas, desde modelos deportivos y touring hasta motos de aventura y urbanas. La marca es reconocida por su tecnología avanzada, como el sistema de suspensión Telelever y sus innovaciones en seguridad. BMW Motorrad ha tenido éxito en competiciones de motociclismo y continúa siendo un líder en la industria, ofreciendo motos que combinan lujo, tecnología y rendimiento.', NULL, '../view/assets/images/fabricante/bmw.webp', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `idUsuario` int(11) NOT NULL,
  `idMoto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `favoritas`
--

INSERT INTO `favoritas` (`idUsuario`, `idMoto`) VALUES
(11, 960),
(11, 1024),
(11, 1373),
(11, 1397),
(11, 1398),
(11, 1400),
(11, 1401),
(11, 1404),
(11, 1405),
(12, 1398),
(12, 1400),
(12, 1401),
(12, 1402),
(13, 768),
(13, 1024),
(13, 1280),
(13, 1373),
(13, 1374),
(13, 1397),
(13, 1398),
(13, 1400),
(13, 1401),
(13, 1402),
(13, 1403);

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
  `descripcion` varchar(750) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
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
(755, 'Brute Force 300', 2022, 'ATV', 271, 22, 16, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '12.00', 'Electric', NULL, NULL, 0, 2500, 10000, NULL, '../view/assets/images/motocicleta/Brute Force 350.png', 0, 1, 1170, 243),
(756, 'Brute Force 750 4x4i', 2022, 'ATV', 749, NULL, NULL, 'Liquid', 'V2, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '18.93', 'Electric', NULL, NULL, 0, NULL, NULL, 'Para los entusiastas del touring, la Concours 14 (757) y la Ninja 1000SX Tourer (783) proporcionan comodidad y potencia en largos viajes. En la categoría dual-sport, la KLR 650 (760), KLR 650 Adventure (761) y KLR 650 Traveller (762) ofrecen versatilidad tanto para carretera como para caminos menos transitados.', NULL, 0, 1, 1219, 317.1),
(757, 'Concours 14 ', 2022, 'Sport touring', 1352, 155, 113, 'Liquid', 'In-line four, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.95', 'Electric', NULL, NULL, 0, NULL, NULL, 'Concours 14: Motocicleta sport-touring de gran cilindrada, perfecta para viajes largos con comodidad y velocidad.', NULL, 0, 1, 1290, 313),
(758, 'KFX50', 2022, 'ATV', 49, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '5.68', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'KFX50: Quad para niños, seguro y fácil de manejar, perfecto para los más jóvenes.', NULL, 0, 1, 910, 111.1),
(759, 'KFX90', 2022, 'ATV', 90, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'KLR 650: Motocicleta dual-sport versátil, adecuada tanto para carretera como para off-road.', NULL, 0, 1, 925, 121.1),
(760, 'KLR 650', 2022, 'Super motard', 651, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '23.09', 'Electric', NULL, NULL, 0, NULL, NULL, 'KFX90: Quad juvenil con mayor potencia que el KFX50, ideal para jóvenes pilotos.', NULL, 0, 1, 1466, 206.9),
(761, 'KLR 650 Adventure', 2022, 'Super motard', 651, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '23.09', 'Electric', NULL, NULL, 0, NULL, NULL, 'KLR 650 Traveller: Diseñada para largos viajes, incluye accesorios como baúles y parabrisas.', NULL, 0, 1, 1466, 220.9),
(762, 'KLR 650 Traveller', 2022, 'Super motard', 651, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '23.09', 'Electric', NULL, NULL, 0, NULL, NULL, 'KLR 650 Adventure: Versión equipada para aventuras largas, con extras como maletas y protección adicional.', NULL, 0, 1, 1466, 214),
(763, 'KLX 110R ', 2022, 'Enduro / offroad', 112, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '3.79', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'KLX 110R L: Versión con mayor altura del asiento y suspensión mejorada, para pilotos jóvenes más altos.', NULL, 0, 1, 955, 76),
(764, 'KLX 110R L', 2022, 'Enduro / offroad', 112, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '3.79', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'KLX 110R: Moto de cross ligera y fácil de manejar, perfecta para principiantes.', NULL, 0, 1, 991, 76),
(765, 'KLX 140R', 2022, 'Enduro / offroad', 144, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '5.68', 'Electric', NULL, NULL, 0, NULL, NULL, 'KLX 230 SE: Dual-sport ligera, ideal para aventuras tanto en carretera como fuera de ella.', NULL, 0, 1, 1049, 93),
(766, 'KLX 230 SE', 2022, 'Enduro / offroad', 233, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, 'KLX 140R: Moto de cross de tamaño mediano, equilibrada para adolescentes y adultos jóvenes.', NULL, 0, 1, 1158, 132),
(767, 'KLX 230S', 2022, 'Enduro / offroad', 233, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, 'KLX230: Modelo estándar de la KLX 230, versátil y manejable en cualquier terreno.', NULL, 0, 1, 1110, 133),
(768, 'KLX230', 2022, 'Enduro / offroad', 233, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 1, NULL, NULL, NULL, '../view/assets/images/motocicleta/KLX230.jpg', 0, 1, 1166, 133),
(769, 'KLX300', 2022, 'Enduro / offroad', 292, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, 'KLX300 SM: Versión supermoto, diseñada para ofrecer rendimiento en carreteras urbanas.', NULL, 0, 1, 1194, NULL),
(770, 'KLX300 SM', 2022, 'Super motard', 292, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, 'KLX300: Dual-sport potente, apta para el off-road y la carretera.', NULL, 0, 1, 1146, NULL),
(771, 'KX 450SR', 2022, 'Cross / motocross', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'KX100: Moto de cross para jóvenes pilotos, combina manejabilidad con potencia.', NULL, 0, 1, 1265, 110.2),
(772, 'KX100 ', 2022, 'Cross / motocross', 99, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '5.00', 'NULL', NULL, NULL, 0, NULL, NULL, 'KX 450SR: Moto de cross de alta gama, con componentes premium para competiciones serias.', NULL, 0, 1, 1151, 77),
(773, 'KX112', 2022, 'Cross / motocross', 112, 7, 5, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '5.00', 'NULL', NULL, NULL, 0, NULL, NULL, 'KX250: Moto de cross profesional, famosa por su rendimiento en competiciones.', NULL, 0, 1, 1151, 76.7),
(774, 'KX250', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.40', 'Electric', NULL, NULL, 0, NULL, NULL, 'KX112: Potente moto de cross para jóvenes, con motor de mayor cilindrada para un rendimiento superior.', NULL, 0, 1, 1265, 107.3),
(775, 'KX250X', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.21', 'Electric', NULL, NULL, 0, NULL, NULL, 'KX450: Moto de cross de gran cilindrada, potente y resistente, ideal para carreras.', NULL, 0, 1, 1260, NULL),
(776, 'KX450', 2022, 'Cross / motocross', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'KX250X: Versión de enduro del KX250, ajustada para competiciones off-road.', NULL, 0, 1, 1265, 110),
(777, 'KX450 SR', 2022, 'Cross / motocross', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'KX450X: Enduro derivada del KX450, diseñada para largas distancias en terrenos difíciles.', NULL, 0, 1, 1265, 110),
(778, 'KX450X', 2022, 'Cross / motocross', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'KX450 SR: Versión mejorada del KX450, con componentes de alto rendimiento.', NULL, 0, 1, 1265, NULL),
(779, 'KX65', 2022, 'Cross / motocross', 64, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '3.79', 'Kick', NULL, NULL, 0, NULL, NULL, 'KX85: Moto de cross juvenil, con mayor potencia y prestaciones que la KX65.', NULL, 0, 1, 955, 60),
(780, 'KX85 ', 2022, 'Cross / motocross', 84, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '5.00', 'Kick', NULL, NULL, 0, NULL, NULL, 'KX65: Moto de cross para niños, excelente para iniciarse en el motocross.', NULL, 0, 1, 1100, 75),
(781, 'Ninja 650 ', 2022, 'Sport', 649, 52, 38, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.14', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 1000SX: Sport-touring de alto rendimiento, ideal para viajes largos y conducción deportiva.', NULL, 0, 1, 1146, 192.1),
(782, 'Ninja 1000SX', 2022, 'Sport', 1043, 200, 146, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Ninja 100SX 2022.png', 0, 1, 1191, 233.1),
(783, 'Ninja 1000SX Tourer', 2022, 'Sport', 1043, 142, 104, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 125: Motocicleta deportiva de pequeña cilindrada, perfecta para principiantes.', NULL, 0, 1, 1191, 235),
(784, 'Ninja 125', 2022, 'Sport', 125, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 1000SX Tourer: Versión equipada para touring del Ninja 1000SX, con maletas y comodidades adicionales.', NULL, 0, 1, 1075, 149),
(785, 'Ninja 125 Performance', 2022, 'Sport', 125, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 300: Deportiva ligera, ideal para nuevos pilotos que buscan estilo y rendimiento.', NULL, 0, 1, 1075, 149),
(786, 'Ninja 300', 2022, 'Sport', 296, 39, 29, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.03', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 125 Performance: Versión mejorada del Ninja 125, con componentes adicionales para un rendimiento superior.', NULL, 0, 1, 1110, 179),
(787, 'Ninja 400 ', 2022, 'Sport', 399, NULL, NULL, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '3.70', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 400 KRT Edition: Versión especial de la Ninja 400, con gráficos inspirados en Kawasaki Racing Team.', NULL, 0, 1, 1120, NULL),
(788, 'Ninja 400 KRT Edition', 2022, 'Sport', 399, NULL, NULL, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '3.70', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 400: Motocicleta deportiva con un equilibrio perfecto entre peso y potencia.', NULL, 0, 1, 1120, NULL),
(789, 'Ninja 650 KRT Edition', 2022, 'Sport', 649, 52, 38, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.14', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 650 Performance: Versión con accesorios adicionales para un rendimiento mejorado.', NULL, 0, 1, 1146, 192.1),
(790, 'Ninja 650 Performance', 2022, 'Sport', 649, 67, 49, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.03', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 650 KRT Edition: Edición especial del Ninja 650 con diseño de carreras.', NULL, 0, 1, 1145, 193),
(791, 'Ninja 650 Tourer', 2022, 'Sport touring', 649, 67, 49, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.03', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 650 Urban: Ideal para la ciudad, combina agilidad y estilo.', NULL, 0, 1, 1145, 193),
(792, 'Ninja 650 Urban', 2022, 'Sport touring', 649, 67, 49, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja 650 Tourer: Diseñada para touring, con características que aumentan la comodidad en viajes largos.', NULL, 0, 1, 1145, 193),
(793, 'Ninja H2', 2022, 'Sport', 998, 228, 166, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja H2 Carbon: Versión exclusiva del H2 con carrocería de fibra de carbono.', NULL, 0, 1, 1125, 238.1),
(794, 'Ninja H2 Carbon', 2022, 'Sport', 998, 228, 166, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja H2: Superdeportiva con motor sobrealimentado, rendimiento extremo y tecnología avanzada.', NULL, 0, 1, 1125, 237.7),
(795, 'Ninja H2 SX', 2022, 'Sport touring', 998, 228, 166, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja H2 SX SE: Versión especial del H2 SX con más características de lujo y tecnología.', NULL, 0, 1, 1125, 261.7),
(796, 'Ninja H2 SX SE', 2022, 'Sport touring', 998, 197, 144, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja H2 SX: Sport-touring de alta gama, combina la potencia del H2 con comodidades para viajes.', NULL, 0, 1, 1205, 268),
(797, 'Ninja H2 SX SE Tourer', 2022, 'Sport touring', 998, 200, 146, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja H2 SX Tourer: Versión equipada para largas distancias, combinando rendimiento y comodidad.', NULL, 0, 1, 1205, 267),
(798, 'Ninja H2 SX Tourer', 2022, 'Sport touring', 998, 200, 146, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja H2 SX SE Tourer: Equipado para el touring, con maletas y características adicionales.', NULL, 0, 1, 1260, 267),
(799, 'Ninja H2R', 2022, 'Sport', 998, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja Z H2: Naked bike de alta cilindrada, combina la potencia del H2 con un diseño sin carenado.', NULL, 0, 1, 1161, 215.9),
(800, 'Ninja Z H2', 2022, 'Sport', 998, 197, 144, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja H2R: Modelo de pista de la H2, con potencia y rendimiento máximos, no apta para carretera.', NULL, 0, 1, 1130, 240),
(801, 'Ninja ZX-10R', 2022, 'Sport', 998, 203, 148, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja ZX-10R: Superdeportiva de alto rendimiento, diseñada para competiciones y conducción agresiva en pista.', NULL, 0, 1, 1185, 207),
(802, 'Ninja ZX-10R KRT', 2022, 'Sport', 998, 203, 148, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja ZX-10R KRT: Edición especial con gráficos y características inspiradas en el equipo de carreras Kawasaki Racing Team.', NULL, 0, 1, 1185, 207),
(803, 'Ninja ZX-14R ', 2022, 'Sport', 1441, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja ZX-14R: Una de las motocicletas más potentes de Kawasaki, ideal para los amantes de la velocidad extrema.', NULL, 0, 1, 1171, 269),
(804, 'Ninja ZX-6R', 2022, 'Sport', 636, 126, 92, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja ZX-6R: Deportiva de media cilindrada, famosa por su agilidad y rendimiento en curvas.', NULL, 0, 1, 1100, 193.1),
(805, 'Ninja ZX-6R KRT', 2022, 'Sport', 636, 126, 92, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Ninja ZX-6R KRT: Versión especial con diseño y especificaciones del equipo de carreras de Kawasaki.', NULL, 0, 1, 1100, 193.1),
(806, 'Stockman 250', 2022, 'Enduro / offroad', 249, 20, 15, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Stockman 250: Moto utilitaria, diseñada para trabajos en el campo, robusta y fiable.', NULL, 0, 1, 1130, 133),
(807, 'Versys 1000 Grand Tourer', 2022, 'Allround', 1043, 120, 88, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '21.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Versys 1000 Grand Tourer: Touring de alta cilindrada, equipada para largos viajes con maletas y comodidad extra.', NULL, 0, 1, 1490, 257),
(808, 'Versys 1000 SE', 2022, 'Allround', 1043, 120, 88, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '21.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Versys 1000 SE: Versión avanzada con suspensión electrónica y otras tecnologías para una conducción suave.', NULL, 0, 1, 1490, 257),
(809, 'Versys 1000 SE LT Plus', 2022, 'Sport touring', 1043, 120, 88, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '20.82', 'Electric', NULL, NULL, 0, NULL, NULL, 'Versys 1000 SE LT Plus: Equipamiento completo para el touring, con características adicionales de lujo.', NULL, 0, 1, 1491, 257.1),
(810, 'Versys 1000 SE Tourer', 2022, 'Allround', 1043, 120, 88, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '21.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Versys 1000 SE Tourer: Diseñada para el turismo, incluye accesorios como maletas y parabrisas.', NULL, 0, 1, 1490, 255),
(811, 'Versys 650', 2022, 'Allround', 649, 69, 50, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '21.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Versys 650: Versátil y ágil, adecuada tanto para ciudad como para viajes largos.', NULL, 0, 1, 1400, NULL),
(812, 'Versys 650 Grand Tourer', 2022, 'Allround', 649, 66, 48, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '21.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Versys 650 Grand Tourer: Versión equipada para viajes largos, con maletas y comodidades adicionales.', NULL, 0, 1, 1450, 217),
(813, 'Versys 650 LT', 2022, 'Allround', 649, 52, 38, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '21.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Versys 650 LT: Modelo touring ligero, equipado para confort en trayectos largos.', NULL, 0, 1, 1400, NULL),
(814, 'Versys 650 Tourer', 2022, 'Allround', 649, 67, 49, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '21.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Versys 650 Tourer: Diseñada para el turismo con características que mejoran la comodidad en viajes largos.', NULL, 0, 1, 1360, NULL),
(815, 'Versys-X 300', 2022, 'Allround', 296, NULL, NULL, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Versys-X 300: Dual-sport ligera, perfecta para aventuras tanto en carretera como fuera de ella.', NULL, 0, 1, 1389, NULL),
(816, 'Vulcan 1700 Vaquero ', 2022, 'Touring', 1700, NULL, NULL, 'Liquid', 'V2, four-stroke', 6, 'Belt   (final drive)', '20.06', 'Electric', NULL, NULL, 0, NULL, NULL, 'Vulcan 1700 Vaquero: Cruiser de gran cilindrada, con estilo y potencia para largos viajes.', NULL, 0, 1, 1290, 383.1),
(817, 'Vulcan 1700 Voyager', 2022, 'Touring', 1700, 73, 53, 'Liquid', 'V2, four-stroke', 6, 'Belt   (final drive)', '20.06', 'Electric', NULL, NULL, 0, NULL, NULL, 'Vulcan 1700 Voyager: Touring cruiser equipada con todas las comodidades para viajes extensos.', NULL, 0, 1, 1549, 406.1),
(818, 'Vulcan 900 Classic ', 2022, 'Custom / cruiser', 903, 50, 36, 'Liquid', 'V2, four-stroke', 5, 'Belt   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Vulcan 900 Classic: Cruiser clásica, combina estilo retro con tecnología moderna.', NULL, 0, 1, 1064, 281.1),
(819, 'Vulcan 900 Classic LT', 2022, 'Touring', 903, 50, 36, 'Liquid', 'V2, four-stroke', 5, 'Belt   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Vulcan 900 Classic LT: Versión touring de la Vulcan 900 Classic, con maletas y parabrisas.', NULL, 0, 1, 1481, 298.1),
(820, 'Vulcan S ', 2022, 'Custom / cruiser', 649, 60, 44, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Vulcan S: Cruiser de media cilindrada, conocida por su comodidad y fácil manejo.', NULL, 0, 1, 1100, 222.7),
(821, 'Vulcan S Cafe', 2022, 'Custom / cruiser', 649, 60, 44, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Vulcan S Cafe: Versión con diseño retro y estilo café racer, manteniendo la comodidad de la Vulcan S.', NULL, 0, 1, 1130, 225),
(822, 'Vulcan S Performance', 2022, 'Custom / cruiser', 649, 60, 44, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Vulcan S Performance: Versión con accesorios adicionales para mejorar el rendimiento.', NULL, 0, 1, 1100, 229),
(823, 'Vulcan S Tourer', 2022, 'Custom / cruiser', 649, 60, 44, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Vulcan S Tourer: Equipada con accesorios de turismo, perfecta para viajes largos y cómodos.', NULL, 0, 1, 1100, 229),
(824, 'W175', 2022, 'Allround', 175, 13, 10, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'NULL', NULL, NULL, 0, NULL, NULL, 'W175: Moto retro, ideal para los amantes del estilo clásico y la simplicidad.', NULL, 0, 1, 1030, NULL),
(825, 'W800', 2022, 'Classic', 773, 47, 34, 'Air', 'V2, four-stroke', 5, 'Chain   (final drive)', '15.14', 'Electric', NULL, NULL, 0, NULL, NULL, 'W800: Motocicleta de estilo vintage, combina diseño clásico con tecnología moderna.', NULL, 0, 1, 1074, 225),
(826, 'Z H2', 2022, 'Naked bike', 998, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '18.93', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z H2: Naked bike de alto rendimiento, con motor sobrealimentado y diseño agresivo.', NULL, 0, 1, 1138, 240),
(827, 'Z H2 SE', 2022, 'Naked bike', 998, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '18.93', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z H2 SE: Versión mejorada de la Z H2, con suspensiones electrónicas y otros extras de alto nivel.', NULL, 0, 1, 1138, 241),
(828, 'Z125 ', 2022, 'Naked bike', 125, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z125: Naked bike ligera, perfecta para principiantes y conducción urbana.', NULL, 0, 1, 1015, 147),
(829, 'Z125 Performance', 2022, 'Naked bike', 125, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z125 Performance: Versión mejorada del Z125 con componentes adicionales para un mejor rendimiento.', NULL, 0, 1, 1015, 147),
(830, 'Z125 Pro', 2022, 'Naked bike', 125, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z125 Pro: Mini-naked, ideal para el uso urbano y principiantes, con un diseño deportivo y compacto.', NULL, 0, 1, 1006, 102),
(831, 'Z400', 2022, 'Naked bike', 399, 45, 33, 'Air', 'Twin, four-stroke', 5, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z400: Naked bike de media cilindrada, combina agilidad y rendimiento en un paquete accesible.', NULL, 0, 1, 1054, 165),
(832, 'Z650', 2022, 'Naked bike', 649, 67, 49, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.14', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z650: Naked bike de media cilindrada, ágil y versátil, adecuada tanto para ciudad como para carretera.', NULL, 0, 1, 1064, 187),
(833, 'Z650RS', 2022, 'Classic', 649, 67, 49, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.14', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z650RS: Versión retro del Z650, combina estilo clásico con tecnología moderna.', NULL, 0, 1, 1115, 187),
(834, 'Z900', 2022, 'Naked bike', 948, 124, 90, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.03', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z900: Naked bike potente y equilibrada, adecuada para una conducción deportiva y diaria.', NULL, 0, 1, 1080, 212.1),
(835, 'Z900 SE', 2022, 'Naked bike', 948, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.03', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z900 SE: Versión especial con componentes de alto rendimiento y mejoras en la suspensión.', NULL, 0, 1, 1115, 212.1),
(836, 'Z900 SE Performance', 2022, 'Naked bike', 948, 125, 91, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.03', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z900 SE Performance: Versión con accesorios adicionales para mejorar aún más el rendimiento.', NULL, 0, 1, 1115, 212.1),
(837, 'Z900RS', 2022, 'Classic', 948, 110, 80, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.03', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z900RS: Naked bike retro, que evoca el estilo de los años 70 con tecnología contemporánea.', NULL, 0, 1, 1181, 215.1),
(838, 'Z900RS Cafe', 2022, 'Classic', 948, 110, 80, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.03', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Z900RS cafe.jpg', 0, 1, 1191, 214.6),
(839, 'Z900RS SE', 2022, 'Classic', 948, 110, 80, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.03', 'Electric', NULL, NULL, 0, NULL, NULL, 'Z900RS SE: Versión especial con componentes premium y detalles exclusivos.', NULL, 0, 1, 1181, 215.1),
(840, 'Brute Force 300', 2021, 'ATV', 271, 22, 16, 'Liquid', 'Single cylinder, four-stroke', 2, 'Shaft drive (cardan)   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Brute Force 300: Un ATV compacto, ideal para trabajos ligeros y recreación. Potente y maniobrable.', NULL, 0, 1, 1170, 243),
(841, 'Brute Force 750 4x4i EPS', 2021, 'ATV', 749, 50, 37, 'Liquid', 'V2, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Brute Force 750 4x4i EPS: ATV robusto con dirección asistida electrónica, perfecto para terrenos difíciles.', NULL, 0, 1, 1220, 317),
(842, 'Concours 14 ', 2021, 'Sport touring', 1352, 155, 113, 'Liquid', 'In-line four, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.95', 'Electric', NULL, NULL, 0, NULL, NULL, 'Concours 14: Motocicleta sport-touring de gran cilindrada, perfecta para viajes largos con comodidad y velocidad.', NULL, 0, 1, 1290, 313),
(843, 'KFX50', 2021, 'ATV', 49, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '5.68', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'KFX50: Quad para niños, seguro y fácil de manejar, perfecto para los más jóvenes.', NULL, 0, 1, 910, 111),
(844, 'KFX90', 2021, 'ATV', 90, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'KFX90: Quad juvenil con mayor potencia que el KFX50, ideal para jóvenes pilotos.', NULL, 0, 1, 925, 121),
(845, 'ADV150', 2022, 'Scooter', 149, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '8.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'ADV150: Scooter de aventura, combina características de off-road con comodidad urbana.', NULL, 0, 2, 1153, NULL),
(846, 'ADV350', 2022, 'Scooter', 330, 29, 21, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '11.70', 'Electric', NULL, NULL, 0, NULL, NULL, 'ADV350: Scooter de mayor cilindrada para aventuras y viajes, con mayor comodidad y capacidad.', NULL, 0, 2, 1430, NULL),
(847, 'Ace 125', 2022, 'Allround', 124, 9, 6, 'Air', 'V2, four-stroke', 4, 'Chain   (final drive)', '10.00', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Ace 125.jpg', 0, 2, 1059, NULL),
(848, 'Activa', 2022, 'Scooter', 109, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Activa: Scooter urbano, conocido por su fiabilidad y eficiencia.', NULL, 0, 2, 1156, 106),
(849, 'Activa 125', 2022, 'Scooter', 123, 8, 6, 'NULL', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Activa 125: Versión de mayor cilindrada del Activa, ofrece más potencia y capacidad.', NULL, 0, 2, 1170, 109),
(850, 'Africa Twin', 2022, 'Enduro / offroad', 1084, 101, 74, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '24.80', 'Electric', NULL, NULL, 0, NULL, NULL, 'Africa Twin: Motocicleta de aventura de alta gama, conocida por su capacidad off-road y confort en largos viajes.', NULL, 0, 2, 1395, 238),
(851, 'Africa Twin Adventure Sports', 2022, 'Enduro / offroad', 1084, 101, 74, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '24.80', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1490, 238),
(852, 'AirBlade 150', 2022, 'Scooter', 150, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1112, 113),
(853, 'BeAT Street', 2022, 'Scooter', 108, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1068, 93),
(854, 'Benly', 2022, 'Scooter', 108, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '10.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1040, NULL),
(855, 'CB1000R', 2022, 'Naked bike', 998, 144, 105, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1090, 211),
(856, 'CB1000R Black Edition', 2022, 'Naked bike', 998, 144, 105, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1090, 211.8),
(857, 'CB125F                                       ', 2022, 'Allround', 123, 11, 8, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1100, 117),
(858, 'CB125R                                       ', 2022, 'Naked bike', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '10.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 130),
(859, 'CB125e                                       ', 2022, 'Naked bike', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1094, 137),
(860, 'CB150F                                       ', 2022, 'Allround', 149, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1085, 124),
(861, 'CB200X', 2022, 'Sport', 184, 17, 12, 'NULL', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1248, 147),
(862, 'CB300R', 2022, 'Naked bike', 286, 35, 26, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '10.22', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 143.8),
(863, 'CB300R Neo Sports Cafe ', 2022, 'Naked bike', 286, 39, 28, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '10.22', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1052, 144),
(864, 'CB350RS', 2022, 'Sport', 348, 21, 15, 'NULL', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1097, 179),
(865, 'CB500F', 2022, 'Naked bike', 471, 47, 34, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '16.70', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1060, 189),
(866, 'CB500X', 2022, 'Sport', 471, 47, 34, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1358, 199),
(867, 'CB650R', 2022, 'Naked bike', 649, 94, 69, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '15.40', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1075, 202.5),
(868, 'CBR1000RR-R Fireblade', 2022, 'Sport', 998, 215, 157, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1120, 194.1),
(869, 'CBR1000RR-R Fireblade SP', 2022, 'Sport', 999, 215, 157, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.28', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1140, 201.3),
(870, 'CBR150R', 2022, 'Sport', 149, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1090, 137),
(871, 'CBR300R', 2022, 'Sport', 286, 35, 26, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.87', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 160.6),
(872, 'CBR500R', 2022, 'Sport', 471, 47, 34, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1145, 190.1),
(873, 'CBR600RR ', 2022, 'Sport', 599, 118, 86, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 186),
(874, 'CBR650R', 2022, 'Sport', 649, 94, 69, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '15.40', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1150, 208),
(875, 'CD110 Dream', 2022, 'Allround', 109, 9, 6, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '9.10', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1076, 112),
(876, 'CD70', 2022, 'Allround', 72, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '8.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1014, NULL),
(877, 'CD70 Dream', 2022, 'Allround', 72, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '8.60', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1014, NULL),
(878, 'CG 125', 2022, 'Allround', 124, 11, 8, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '9.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1026, NULL),
(879, 'CMX1100 Rebel', 2022, 'Custom / cruiser', 1084, 86, 63, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.60', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1115, 223),
(880, 'CMX500 Rebel', 2022, 'Sport', 471, 46, 33, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '11.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1090, 191),
(881, 'CRF1000L Adventure Sports', 2022, 'Enduro / offroad', 1084, 101, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '18.77', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1490, 238),
(882, 'CRF1000L Africa Twin', 2022, 'Enduro / offroad', 1084, 101, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '18.77', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1391, 226),
(883, 'CRF110F', 2022, 'Enduro / offroad', 109, 7, 5, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 922, 76.7),
(884, 'CRF125F', 2022, 'Cross / motocross', 124, 9, 7, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1000, 88),
(885, 'CRF125F Big Wheel', 2022, 'Enduro / offroad', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '3.79', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 90.3),
(886, 'CRF150R', 2022, 'Cross / motocross', 149, 24, 17, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1171, 84.4),
(887, 'CRF150RB', 2022, 'Cross / motocross', 149, 24, 17, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1170, 83.9),
(888, 'CRF250F', 2022, 'Cross / motocross', 249, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.06', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 120.2),
(889, 'CRF250R', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1265, 104),
(890, 'CRF250RX', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '8.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1281, 108),
(891, 'CRF250RX Enduro', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1281, 105),
(892, 'CRF300 Rally', 2022, 'Enduro / offroad', 286, 27, 20, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.80', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1415, 153),
(893, 'CRF300L', 2022, 'Cross / motocross', 286, 27, 20, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.80', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1200, 142),
(894, 'CRF300L Rally', 2022, 'Cross / motocross', 286, 27, 20, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.87', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1200, 150.1),
(895, 'CRF300RX Enduro', 2022, 'Enduro / offroad', 295, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1260, 108),
(896, 'CRF400RX', 2022, 'Enduro / offroad', 413, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.95', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1282, 113.9),
(897, 'CRF400RX Enduro', 2022, 'Enduro / offroad', 413, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.95', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1282, 111.8),
(898, 'CRF450R', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1267, 110.7),
(899, 'CRF450R-S', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1267, 112),
(900, 'CRF450RL', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1271, 132),
(901, 'CRF450RWE', 2022, 'Cross / motocross', 449, 53, 39, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.43', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1271, 110.7),
(902, 'CRF450RX', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '8.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1282, 113.9),
(903, 'CRF450RX Enduro', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1282, 111.8),
(904, 'CRF450X', 2022, 'Enduro / offroad', 449, 45, 33, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.61', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 124.7),
(905, 'CRF50F', 2022, 'Enduro / offroad', 49, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 3, 'Chain   (final drive)', '4.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 775, 50.3),
(906, 'CT125', 2022, 'Scooter', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1085, 120),
(907, 'Click 125i', 2022, 'Scooter', 125, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1062, 111),
(908, 'Dio 110', 2022, 'Scooter', 109, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1150, 105),
(909, 'Elite 125', 2022, 'Scooter', 124, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1139, 109),
(910, 'Fireblade SP 30th Anniversary', 2022, 'Sport', 999, 215, 157, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1140, 201),
(911, 'Forza 125', 2022, 'Scooter', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '11.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1500, 161),
(912, 'Forza 350', 2022, 'Scooter', 329, 28, 21, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '11.70', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1507, NULL),
(913, 'Forza 750', 2022, 'Scooter', 745, 58, 42, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1485, NULL),
(914, 'FourTrax Foreman 4x4', 2022, 'ATV', 518, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '14.76', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1220, NULL),
(915, 'FourTrax Foreman Rubicon 4x4', 2022, 'ATV', 518, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '14.76', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1234, NULL),
(916, 'FourTrax Rancher', 2022, 'ATV', 420, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '14.76', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1173, 263.1),
(917, 'FourTrax Recon', 2022, 'ATV', 229, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '9.08', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1069, 198.2),
(918, 'FourTrax Rincon', 2022, 'ATV', 675, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 3, 'Shaft drive (cardan)   (final drive)', '16.65', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1206, NULL),
(919, 'Fury', 2022, 'Custom / cruiser', 1312, NULL, NULL, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '12.87', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 300.7),
(920, 'GL 1800 Gold Wing Tour', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.01', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1430, 380),
(921, 'GL 1800 Gold Wing Tour DCT', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 7, 'Shaft drive (cardan)   (final drive)', '21.01', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1340, 367),
(922, 'GL1800 Gold Wing', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1340, 366),
(923, 'GL1800 Gold Wing DCT', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 7, 'Shaft drive (cardan)   (final drive)', '21.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1340, 366),
(924, 'Genio', 2022, 'Scooter', 108, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1061, 89),
(925, 'Gold Wing', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.01', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1340, 357),
(926, 'Gold Wing Tour', 2022, 'Touring', 1833, 125, 91, 'Liquid', 'Six cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '21.01', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1430, 385),
(927, 'Grazia', 2022, 'Scooter', 123, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1167, 106),
(928, 'Grom', 2022, 'Sport', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1015, 103),
(929, 'Hornet 2.0', 2022, 'Sport', 184, 17, 12, 'NULL', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Hornet 2.webp', 0, 2, 1064, 142),
(930, 'Livo                                        ', 2022, 'Allround', 109, 9, 6, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '9.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Livo.jpeg', 0, 2, 1116, 114),
(931, 'MSX125 ', 2022, 'Sport', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/MXS125.jpeg', 0, 2, 1015, 103),
(932, 'Metropolitan', 2022, 'Scooter', 49, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.54', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 81.2),
(933, 'Monkey 125', 2022, 'Allround', 124, 9, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '5.68', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Monkey 125.png', 0, 2, 1030, 104),
(934, 'Montesa 4 Ride                               ', 2022, 'Trial', 258, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.30', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 2, 1160, NULL),
(935, 'AG125', 2022, 'Enduro / offroad', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '11.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1095, 113),
(936, 'AG200F', 2022, 'Enduro / offroad', 196, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '10.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1155, 128),
(937, 'Aerox 155', 2022, 'Scooter', 155, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1150, 126),
(938, 'Bolt R-Spec', 2022, 'Custom / cruiser', 942, NULL, NULL, 'Air', 'V2, four-stroke', 5, 'Belt   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1120, 245.9),
(939, 'Crypton ', 2022, 'Scooter', 110, 7, 5, 'Liquid', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1040, 103),
(940, 'Delight 125', 2022, 'Scooter', 125, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1145, 101),
(941, 'FJR1300AE', 2022, 'Sport touring', 1298, 144, 105, 'Liquid', 'In-line four, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '25.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1455, 292),
(942, 'FJR1300ES', 2022, 'Sport touring', 1298, 146, 107, 'Liquid', 'In-line four, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '25.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1455, 291.2),
(943, 'FZ 25', 2022, 'Naked bike', 249, 21, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1075, 153),
(944, 'FZ-FI', 2022, 'Naked bike', 149, 12, 9, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 135),
(945, 'FZ-S Fi ', 2022, 'Naked bike', 149, 12, 9, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 135),
(946, 'FZ-S Fi Deluxe', 2022, 'Naked bike', 149, 12, 9, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 135),
(947, 'FZ-X', 2022, 'Classic', 149, 12, 9, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '10.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 139),
(948, 'FZS 25', 2022, 'Naked bike', 249, 21, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1105, 154),
(949, 'FZi', 2022, 'Naked bike', 149, 13, 10, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1030, 131),
(950, 'Fascino 125Fi', 2022, 'Scooter', 125, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1150, 99),
(951, 'Grizzly 90', 2022, 'ATV', 90, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '6.43', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1006, 139.7),
(952, 'Grizzly EPS', 2022, 'ATV', 686, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1253, 318),
(953, 'Grizzly EPS SE', 2022, 'ATV', 686, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1270, 342),
(954, 'Grizzly EPS XT-R', 2022, 'ATV', 686, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1270, 355.2),
(955, 'Kodiak 450', 2022, 'ATV', 421, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 289),
(956, 'Kodiak 450 EPS ', 2022, 'ATV', 421, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 295),
(957, 'MT-03', 2022, 'Sport', 321, 42, 31, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1035, 168);
INSERT INTO `motocicleta` (`idMoto`, `nombreModelo`, `fechaFabricacion`, `tipoMoto`, `cilindrada`, `potencia1`, `potencia2`, `refrigeracion`, `tipoMotor`, `marchas`, `transmision`, `capacidad`, `arranque`, `tag`, `tipoCarnet`, `popularidad`, `precioMin`, `precioMax`, `descripcion`, `imagenMoto`, `suspendida`, `idFabricante`, `altura`, `peso`) VALUES
(958, 'MT-07', 2022, 'Sport', 689, 74, 54, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/MT-07.jpg', 0, 3, 1105, 184.2),
(959, 'MT-07HO', 2022, 'Sport', 689, 74, 54, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1105, 184.2),
(960, 'MT-09', 2022, 'Naked bike', 890, NULL, NULL, 'Liquid', 'In-line three, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 1, NULL, NULL, NULL, '../view/assets/images/motocicleta/MT-09.jpg', 0, 3, 1191, 189.2),
(961, 'MT-09 SP', 2022, 'Naked bike', 890, NULL, NULL, 'Liquid', 'In-line three, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1191, 190.1),
(962, 'MT-10', 2022, 'Naked bike', 998, 166, 121, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 212),
(963, 'MT-10 SP', 2022, 'Naked bike', 998, 164, 120, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1110, 210),
(964, 'MT-125', 2022, 'Naked bike', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1065, 142),
(965, 'MT-15', 2022, 'Naked bike', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '10.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1070, 138),
(966, 'Mio Gear', 2022, 'Scooter', 125, 9, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1060, NULL),
(967, 'Mio Gravis', 2022, 'Scooter', 125, 9, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1110, NULL),
(968, 'Mio Sporty', 2022, 'Scooter', 114, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.10', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1050, NULL),
(969, 'Mio i125', 2022, 'Scooter', 125, 9, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1035, NULL),
(970, 'NM-X', 2022, 'Scooter', 155, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '6.60', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 127),
(971, 'NMAX 125', 2022, 'Scooter', 125, 12, 9, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 131),
(972, 'NMAX 155', 2022, 'Scooter', 155, 12, 9, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.10', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 127),
(973, 'Neo 125 UBS', 2022, 'Scooter', 125, 10, 7, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1070, 97),
(974, 'Neos 4', 2022, 'Scooter', 49, 3, 2, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.40', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1125, 95),
(975, 'Niken', 2022, 'Naked bike', 847, 115, 84, 'Liquid', 'In-line three, four-stroke', 6, 'Chain   (final drive)', '18.17', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1250, 263.1),
(976, 'PW50', 2022, 'Minibike, cross', 49, NULL, NULL, 'Air', 'Single cylinder, two-stroke', 0, 'Shaft drive (cardan)   (final drive)', '2.01', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 706, 41),
(977, 'R1', 2022, 'Sport', 998, 197, 144, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 201),
(978, 'R1 GYTR VR46', 2022, 'Sport', 998, 197, 144, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 201),
(979, 'R1 World GP 60th Anniversary', 2022, 'Sport', 998, 197, 144, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 201),
(980, 'R125', 2022, 'Sport', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1065, 144),
(981, 'R125 World GP 60th Anniversary', 2022, 'Sport', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1065, 144),
(982, 'R15', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(983, 'R15 V4', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(984, 'R15M', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(985, 'R15M MotoGP Edition', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(986, 'R15S', 2022, 'Sport', 155, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1135, 142),
(987, 'R1M', 2022, 'Sport', 998, 197, 144, 'Liquid', 'In-line six, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1165, 202),
(988, 'R3', 2022, 'Sport', 321, 41, 30, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1140, 169),
(989, 'R3 World GP 60th Anniversary', 2022, 'Sport', 321, 41, 30, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1140, 169),
(990, 'R6 GYTR', 2022, 'Sport', 599, 117, 85, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1150, 190),
(991, 'R6 Race', 2022, 'Sport', 599, 117, 85, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1150, 185),
(992, 'R7', 2022, 'Sport', 689, 72, 53, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 188),
(993, 'R7  World GP 60th Anniversary', 2022, 'Sport', 689, 72, 53, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1160, 188),
(994, 'Raptor 700', 2022, 'ATV', 686, NULL, NULL, 'NULL', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 191.4),
(995, 'Raptor 700R ', 2022, 'ATV', 686, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 191.4),
(996, 'Raptor 700R SE', 2022, 'ATV', 686, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1115, 192),
(997, 'Raptor 90', 2022, 'ATV', 89, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '6.60', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 955, 126.5),
(998, 'RayZR 125Fi', 2022, 'Scooter', 125, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1190, 98),
(999, 'RayZR Street Rally 125Fi', 2022, 'Scooter', 125, 8, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1190, 99),
(1000, 'SR400 Final Edition', 2022, 'Allround', 399, 23, 17, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Kick', NULL, NULL, 0, NULL, NULL, 'SR400 Final Edition: La última edición de la SR400, una motocicleta de estilo retro con un motor de un solo cilindro y un diseño clásico.', NULL, 0, 3, 1095, 174),
(1001, 'SZ', 2022, 'Allround', 149, 12, 9, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'SZ: Una motocicleta versátil diseñada para la conducción diaria en entornos urbanos, conocida por su eficiencia y facilidad de manejo.', NULL, 0, 3, 1100, 133),
(1002, 'Serow 250 Final Edition', 2022, 'Enduro / offroad', 249, 18, 13, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.30', 'Electric', NULL, NULL, 0, NULL, NULL, 'Serow 250 Final Edition: La última versión de la Serow 250, una motocicleta de trail ligera diseñada para el manejo off-road con facilidad y confianza.', NULL, 0, 3, 1160, 133),
(1003, 'Sight 115', 2022, 'Scooter', 114, 9, 6, 'Air', 'Single cylinder, four-stroke', 4, 'Belt   (final drive)', '4.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Sight 115: Una motocicleta económica y eficiente diseñada para la conducción diaria en la ciudad, conocida por su bajo consumo de combustible y su manejo ágil.', NULL, 0, 3, 1075, 96),
(1004, 'Smax', 2022, 'Scooter', 155, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.57', 'Electric', NULL, NULL, 0, NULL, NULL, 'Smax: Una scooter deportiva de tamaño medio diseñada para ofrecer comodidad y rendimiento en viajes largos o cortos en la ciudad.', NULL, 0, 3, 1295, 148.8),
(1005, 'Sniper 155', 2022, 'Scooter', 155, 18, 13, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '5.40', 'Electric', NULL, NULL, 0, NULL, NULL, 'Sniper 155: Una motocicleta deportiva diseñada para un rendimiento ágil y emocionante en entornos urbanos o carreteras sinuosas.', NULL, 0, 3, 1085, 119),
(1006, 'Sniper 155R', 2022, 'Scooter', 155, 18, 13, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '5.40', 'Electric', NULL, NULL, 0, NULL, NULL, 'Sniper 155R: Una variante de alto rendimiento de la Sniper 155, equipada con características mejoradas para una experiencia de conducción más emocionante.', NULL, 0, 3, 1085, 121),
(1007, 'Star Venture', 2022, 'Touring', 1854, NULL, NULL, 'Liquid', 'V2, four-stroke', 6, 'Belt   (final drive)', '24.98', 'Electric', NULL, NULL, 0, NULL, NULL, 'Star Venture: Una motocicleta cruiser de gran turismo diseñada para largos viajes en carretera con comodidad y lujo, equipada con características premium y tecnología avanzada.', NULL, 0, 3, 1410, NULL),
(1008, 'Super Tenere ES', 2022, 'Super motard', 1199, 112, 82, 'Liquid', 'Twin, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '23.09', 'Electric', NULL, NULL, 0, NULL, NULL, 'Super Tenere ES: Una motocicleta de aventura de alto rendimiento diseñada para enfrentar cualquier terreno con confianza, equipada con características avanzadas de turismo de aventura.', NULL, 0, 3, 1410, 264.9),
(1009, 'TMAX 560', 2022, 'Scooter', 562, 47, 34, 'Liquid', 'Twin, four-stroke', 0, 'Belt   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'TMAX 560: Una scooter de alto rendimiento diseñada para ofrecer una experiencia de conducción emocionante y deportiva, con un potente motor y tecnología avanzada.', NULL, 0, 3, 1525, 220),
(1010, 'TMAX Tech Max', 2022, 'Scooter', 562, 47, 34, 'Liquid', 'Twin, four-stroke', 0, 'Belt   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'TMAX Tech Max: Una variante de lujo de la TMAX 560, equipada con características premium y tecnología avanzada para un mayor confort y conveniencia.', NULL, 0, 3, 1420, 220),
(1011, 'TT-R110E', 2022, 'Enduro / offroad', 110, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '3.79', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'TT-R110E: Una motocicleta todoterreno diseñada para jóvenes pilotos, con un motor de baja potencia y características de seguridad para aprender a manejar off-road.', NULL, 0, 3, 919, 72.1),
(1012, 'TT-R125LE', 2022, 'Enduro / offroad', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.06', 'Electric', NULL, NULL, 0, NULL, NULL, 'TT-R125LE: Una motocicleta todoterreno de tamaño medio diseñada para pilotos de todas las edades, con un equilibrio entre rendimiento y facilidad de manejo.', NULL, 0, 3, 1085, 89.8),
(1013, 'TT-R230', 2022, 'Enduro / offroad', 223, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'TT-R230: Una motocicleta todoterreno de tamaño completo diseñada para el manejo off-road, con un potente motor y características de suspensión para terrenos difíciles.', NULL, 0, 3, 1181, 113.9),
(1014, 'TT-R50E', 2022, 'Minibike, cross', 49, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 3, 'Chain   (final drive)', '3.03', 'Electric', NULL, NULL, 0, NULL, NULL, 'TT-R50E: Una motocicleta todoterreno de tamaño pequeño diseñada para pilotos jóvenes o principiantes, con un motor de baja potencia y características de seguridad.', NULL, 0, 3, 795, 58.1),
(1015, 'TW200', 2022, 'Enduro / offroad', 196, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.81', 'Electric', NULL, NULL, 0, NULL, NULL, 'TW200: Una motocicleta de estilo dual-sport diseñada para la conducción en carreteras y caminos sin pavimentar, con un diseño robusto y características de rendimiento confiables.', NULL, 0, 3, 1120, 126.1),
(1016, 'Tenere 700', 2022, 'Sport touring', 689, 74, 54, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tenere 700: Una motocicleta de aventura de tamaño medio diseñada para exploraciones off-road y largos viajes en carretera, con un equilibrio entre rendimiento y comodidad.', NULL, 0, 3, 1455, 205),
(1017, 'Tenere 700 Raid Prototype', 2022, 'Prototype / concept model', 689, 72, 53, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tenere 700 Raid Prototype: Una versión especial de la Tenere 700 diseñada para enfrentar desafíos extremos off-road, con características de rendimiento mejoradas y un diseño robusto.', NULL, 0, 3, NULL, NULL),
(1018, 'Tenere 700 Rally ', 2022, 'Sport touring', 689, 72, 53, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tenere 700 Rally: Una variante de rally de la Tenere 700, equipada con características específicas para competiciones off-road de larga distancia.', NULL, 0, 3, 1455, 204),
(1019, 'Tracer 7 ', 2022, 'Sport touring', 689, 72, 53, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tracer 7: Una motocicleta sport-touring diseñada para largos viajes en carretera con comodidad y rendimiento deportivo, equipada con características avanzadas de turismo.', NULL, 0, 3, 1290, 196),
(1020, 'Tracer 7 GT', 2022, 'Sport touring', 689, 72, 53, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tracer 7 GT: Una versión de lujo de la Tracer 7, equipada con características premium y tecnología avanzada para un mayor confort y conveniencia en viajes largos.', NULL, 0, 3, 1290, 196),
(1021, 'Tracer 9 ', 2022, 'Sport touring', 890, 119, 87, 'Liquid', 'In-line three, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tracer 9: Una versión mejorada de la Tracer 7, equipada con un motor más potente y características avanzadas de turismo para una experiencia de conducción más emocionante.', NULL, 0, 3, 1430, 213),
(1022, 'Tracer 9 GT', 2022, 'Sport touring', 890, 119, 87, 'Liquid', 'In-line three, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tracer 9 GT: Una variante de lujo de la Tracer 9, equipada con características premium y tecnología avanzada para un mayor confort y conveniencia en viajes largos.', NULL, 0, 3, 1471, 220),
(1023, 'Tricity 125', 2022, 'Scooter', 125, 12, 9, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tricity 125: Una scooter de tres ruedas diseñada para ofrecer estabilidad y facilidad de manejo en entornos urbanos congestionados, con espacio de almacenamiento adicional y características de seguridad.', NULL, 0, 3, 1210, 164),
(1024, 'Tricity 155', 2022, 'Scooter', 155, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.20', 'Electric', NULL, NULL, 2, NULL, NULL, NULL, '../view/assets/images/motocicleta/tricity155.jpg', 0, 3, 1210, 165),
(1025, 'AX4 115', 2022, 'Allround', 113, 11, 8, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '9.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'AX4 115: Una motocicleta económica diseñada para la conducción diaria en la ciudad, conocida por su bajo consumo de combustible y su facilidad de manejo.', NULL, 0, 4, 1050, 108),
(1026, 'Access 125', 2022, 'Scooter', 124, 9, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Access 125: Una scooter de estilo urbano diseñada para ofrecer comodidad y rendimiento en la conducción diaria, con características modernas y eficientes.', NULL, 0, 4, 1160, 103),
(1027, 'Address ', 2022, 'Scooter', 113, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Address: Una scooter compacta y ágil diseñada para la movilidad urbana, con un diseño ligero y características prácticas para la conducción diaria.', NULL, 0, 4, 1095, 100),
(1028, 'Avenis', 2022, 'Scooter', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Avenis: Una motocicleta económica diseñada para la conducción diaria en la ciudad, con un motor eficiente y características básicas para el transporte personal.', NULL, 0, 4, 1175, NULL),
(1029, 'Best 125 Fi', 2022, 'Scooter', 124, 9, 7, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Best 125 Fi: Una scooter económica y eficiente diseñada para la conducción diaria en la ciudad, con un motor de bajo consumo de combustible y características prácticas.', NULL, 0, 4, 1070, NULL),
(1030, 'Boulevard C50', 2022, 'Custom / cruiser', 805, 53, 39, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '15.52', 'Electric', NULL, NULL, 0, NULL, NULL, 'Boulevard C50: Una motocicleta cruiser clásica diseñada para largos viajes en carretera con comodidad y estilo, equipada con un potente motor y características de turismo.', NULL, 0, 4, 1110, 277),
(1031, 'Boulevard C50SE', 2022, 'Touring', 805, 53, 39, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '15.52', 'Electric', NULL, NULL, 0, NULL, NULL, 'Boulevard C50SE: Una versión especial de la Boulevard C50, equipada con características premium y detalles de diseño exclusivos.', NULL, 0, 4, 1110, 277),
(1032, 'Boulevard C50T', 2022, 'Touring', 805, 53, 39, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '15.52', 'Electric', NULL, NULL, 0, NULL, NULL, 'Boulevard C50T: Una variante turística de la Boulevard C50, equipada con características adicionales de turismo de larga distancia, como un parabrisas y alforjas.', NULL, 0, 4, 1110, 292),
(1033, 'Boulevard C90 B O S S', 2022, 'Custom / cruiser', 1462, NULL, NULL, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '18.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'Boulevard C90 B O S S: Una motocicleta cruiser de gran turismo diseñada para largos viajes en carretera con comodidad y estilo, equipada con un potente motor y características de turismo.', NULL, 0, 4, 1135, 344),
(1034, 'Boulevard C90T', 2022, 'Touring', 1462, 58, 42, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '18.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'Boulevard C90T: Una variante turística de la Boulevard C90, equipada con características adicionales de turismo de larga distancia, como un parabrisas y alforjas.', NULL, 0, 4, 1440, 363),
(1035, 'Boulevard M109R B O S S', 2022, 'Custom / cruiser', 1783, 125, 91, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '19.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1130, 347),
(1036, 'Boulevard M50', 2022, 'Custom / cruiser', 805, 53, 39, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '15.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, NULL, 269),
(1037, 'Boulevard M90', 2022, 'Custom / cruiser', 1462, 79, 58, 'Liquid', 'V2, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '18.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1100, 328),
(1038, 'Boulevard S40', 2022, 'Custom / cruiser', 652, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Belt   (final drive)', '10.60', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1105, 173),
(1039, 'Burgman 200', 2022, 'Scooter', 200, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '10.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1240, 163),
(1040, 'Burgman 400 ', 2022, 'Scooter', 399, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1350, NULL),
(1041, 'Burgman Street', 2022, 'Scooter', 124, 9, 6, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '5.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1140, NULL),
(1042, 'DR 650 SE', 2022, 'Super motard', 644, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1195, 166),
(1043, 'DR-Z125', 2022, 'Enduro / offroad', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.80', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1185, 88),
(1044, 'DR-Z125L', 2022, 'Enduro / offroad', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '4.80', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1110, 89),
(1045, 'DR-Z400S', 2022, 'Enduro / offroad', 398, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '10.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1230, 144),
(1046, 'DR-Z400SM', 2022, 'Super motard', 398, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '10.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1200, 146),
(1047, 'DR-Z50', 2022, 'Minibike, cross', 49, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 3, 'Chain   (final drive)', '3.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 790, 54),
(1048, 'DR200S', 2022, 'Cross / motocross', 199, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1140, 126),
(1049, 'DR200SE', 2022, 'Cross / motocross', 199, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1185, 126),
(1050, 'DR650S', 2022, 'Super motard', 644, NULL, NULL, 'Oil & air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1195, 166),
(1051, 'GN 125', 2022, 'Allround', 124, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '10.30', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1110, 107),
(1052, 'GSX-R1000', 2022, 'Sport', 999, 199, 145, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1145, 201),
(1053, 'GSX-R1000A', 2022, 'Sport', 999, 185, 135, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1145, 202),
(1054, 'GSX-R1000R', 2022, 'Sport', 999, 185, 135, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1145, 202),
(1055, 'GSX-R1000R Phantom', 2022, 'Sport', 999, 202, 147, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1145, 202),
(1056, 'GSX-R1000RZ', 2022, 'Sport', 999, 199, 145, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1145, 202),
(1057, 'GSX-R125', 2022, 'Sport', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1070, 134),
(1058, 'GSX-R150', 2022, 'Sport', 147, 19, 14, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1075, 131),
(1059, 'GSX-R600', 2022, 'Sport', 599, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1135, 187),
(1060, 'GSX-R600Z', 2022, 'Sport', 599, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1135, 187),
(1061, 'GSX-R750', 2022, 'Sport', 750, 150, 110, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1135, 190),
(1062, 'GSX-R750Z', 2022, 'Sport', 750, 150, 110, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1135, 190),
(1063, 'GSX-S1000', 2022, 'Sport', 999, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1080, NULL),
(1064, 'GSX-S1000F', 2022, 'Sport', 999, 148, 108, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1180, 215),
(1065, 'GSX-S1000FZ', 2022, 'Sport', 999, 150, 110, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1180, 214),
(1066, 'GSX-S1000GT', 2022, 'Sport touring', 999, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1215, 226),
(1067, 'GSX-S1000GT Plus', 2022, 'Sport touring', 999, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1215, 226),
(1068, 'GSX-S1000GTA', 2022, 'Sport touring', 999, NULL, NULL, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1215, 226),
(1069, 'GSX-S1000Z', 2022, 'Naked bike', 999, 149, 109, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1180, 210),
(1070, 'GSX-S125', 2022, 'Naked bike', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1035, 134),
(1071, 'GSX-S150', 2022, 'Naked bike', 147, 19, 14, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '11.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1040, 130),
(1072, 'GSX-S750A', 2022, 'Sport', 749, 113, 82, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1055, 213),
(1073, 'GSX-S950', 2022, 'Sport', 999, 95, 69, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1055, 214),
(1074, 'GSX250R', 2022, 'Sport', 248, 24, 18, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1110, 181),
(1075, 'Gixxer 250', 2022, 'Naked bike', 249, 27, 19, 'Oil & air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1035, 156),
(1076, 'Gixxer SF', 2022, 'Sport', 154, 14, 10, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1035, 148),
(1077, 'Gixxer SF 250', 2022, 'Sport', 249, 27, 19, 'Air', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1035, 161),
(1078, 'Hayabusa', 2022, 'Sport', 1340, 197, 144, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '21.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1165, 264),
(1079, 'Intruder', 2022, 'Custom / cruiser', 155, 14, 10, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '11.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1095, 152),
(1080, 'JR80', 2022, 'Minibike, cross', 79, NULL, NULL, 'Air', 'Single cylinder, two-stroke', 5, 'Chain   (final drive)', '4.10', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 915, 65),
(1081, 'Katana', 2022, 'Sport', 999, 152, 111, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1110, 215),
(1082, 'KingQuad 400FSi', 2022, 'ATV', 376, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Shaft drive (cardan)   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1220, 279),
(1083, 'KingQuad 500AXi', 2022, 'ATV', 493, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '17.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1285, 335),
(1084, 'KingQuad 750AXi', 2022, 'ATV', 722, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Shaft drive (cardan)   (final drive)', '17.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1285, 320),
(1085, 'QuadSport Z50', 2022, 'ATV', 49, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '2.60', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 765, 79),
(1086, 'QuadSport Z90', 2022, 'ATV', 90, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 915, 127),
(1087, 'RM-Z250', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1255, 106),
(1088, 'RM-Z450', 2022, 'Cross / motocross', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.30', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1260, 112),
(1089, 'RM85', 2022, 'Cross / motocross', 84, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '5.00', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1100, 73),
(1090, 'RMX450Z', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '6.20', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1265, 123.5),
(1091, 'Raider J Crossover', 2022, 'Scooter', 113, 9, 7, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1046, 97),
(1092, 'Raider R150', 2022, 'Scooter', 147, 18, 13, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '4.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 980, NULL),
(1093, 'SV650', 2022, 'Naked bike', 645, 73, 53, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1090, 196),
(1094, 'SV650A', 2022, 'Naked bike', 645, 75, 55, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1091, 198),
(1095, 'SV650X', 2022, 'Naked bike', 645, 73, 53, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1090, 198),
(1096, 'Skydrive 125 Fi', 2022, 'Scooter', 124, 9, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '4.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1040, 111),
(1097, 'Skydrive Crossover', 2022, 'Scooter', 113, 9, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '3.60', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1055, 94),
(1098, 'Smash 115', 2022, 'Scooter', 112, 9, 6, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '4.30', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1040, 99),
(1099, 'TF125', 2022, 'Enduro / offroad', 123, NULL, NULL, 'Air', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '13.00', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, 1150, NULL),
(1100, 'TS185ER', 2022, 'Allround', 183, NULL, NULL, 'Air', 'Single cylinder, two-stroke', 5, 'Chain   (final drive)', '7.00', 'Kick', NULL, NULL, 0, NULL, NULL, 'TS185ER: Una motocicleta de estilo trail ligero, ideal para la conducción off-road y en terrenos variados.', NULL, 0, 4, 1125, 102),
(1101, 'Trojan', 2022, 'Enduro / offroad', 199, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, '', '13.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Trojan: Una motocicleta clásica estilo cruiser, conocida por su diseño retro y su facilidad de manejo.', NULL, 0, 4, 1185, 132),
(1102, 'V-Strom 1000', 2022, 'Super motard', 1037, 100, 73, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1000: Una motocicleta de aventura diseñada para largos viajes en carretera y off-road ligero. Ofrece un equilibrio entre potencia y manejo, con características de confort para largas distancias.', NULL, 0, 4, 1470, 232),
(1103, 'V-Strom 1000XT', 2022, 'Super motard', 1037, 100, 73, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1000XT: Una variante de la V-Strom 1000 con características mejoradas para el manejo off-road, como llantas de radios y protectores adicionales.', NULL, 0, 4, 1470, 233),
(1104, 'V-Strom 1000XT Adventure', 2022, 'Super motard', 1037, 100, 73, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1000XT Adventure: Una versión aún más equipada de la V-Strom 1000XT, diseñada para aventuras de larga distancia con características adicionales de turismo de aventura.', NULL, 0, 4, 1470, 233),
(1105, 'V-Strom 1050', 2022, 'Super motard', 1037, 100, 73, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1050: Una versión actualizada de la V-Strom 1000, con mejoras en el rendimiento del motor y la electrónica, así como un diseño renovado.', NULL, 0, 4, 1515, 236),
(1106, 'V-Strom 1050A', 2022, 'Super motard', 1037, 100, 73, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1050A: Una variante de la V-Strom 1050 diseñada específicamente para un rendimiento off-road más ágil y controlado.', NULL, 0, 4, 1465, 247),
(1107, 'V-Strom 1050XA', 2022, 'Super motard', 1037, 100, 73, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1050XA: Una versión de la V-Strom 1050 equipada con características adicionales para el manejo off-road, como suspensiones ajustables y protectores de motor.', NULL, 0, 4, 1465, 247),
(1108, 'V-Strom 1050XAA', 2022, 'Super motard', 1037, 100, 73, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1050XAA: Una variante de la V-Strom 1050XA con características adicionales de turismo de aventura, como maletas laterales y un parabrisas más grande.', NULL, 0, 4, 1465, 247),
(1109, 'V-Strom 1050XT', 2022, 'Super motard', 1037, 99, 72, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1050XT: Una versión mejorada de la V-Strom 1050 con características adicionales de turismo de aventura y mejoras en el rendimiento off-road.', NULL, 0, 4, 1465, 247),
(1110, 'V-Strom 1050XT Adventure', 2022, 'Super motard', 1037, 100, 73, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1050XT Adventure: Una variante aún más equipada de la V-Strom 1050XT, diseñada para aventuras de larga distancia con características adicionales de turismo de aventura.', NULL, 0, 4, 1465, 247),
(1111, 'V-Strom 1050XT Tour', 2022, 'Super motard', 1037, 107, 78, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 1050XT Tour: Una versión turística de la V-Strom 1050XT, diseñada para viajes de larga distancia con comodidades adicionales y características de turismo.', NULL, 0, 4, 1465, 247),
(1112, 'V-Strom 250', 2022, 'Super motard', 248, 25, 18, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '17.30', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 250: Una motocicleta de aventura más pequeña y ágil, ideal para principiantes o para aquellos que buscan una opción más ligera para la conducción en carretera y off-road.', NULL, 0, 4, 1295, 188),
(1113, 'V-Strom 650', 2022, 'Super motard', 645, 71, 52, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.06', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 650: Una motocicleta de aventura de tamaño medio, conocida por su equilibrio entre rendimiento, comodidad y versatilidad para largos viajes o exploraciones off-road.', NULL, 0, 4, 1405, NULL),
(1114, 'V-Strom 650A', 2022, 'Super motard', 645, 70, 51, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'V-Strom 650A: Una variante de la V-Strom 650 equipada con características adicionales de turismo de aventura, como maletas laterales y un parabrisas más grande.', NULL, 0, 4, 1405, 216),
(1145, 'DesertX', 2022, 'Enduro / offroad', 937, 110, 80, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '21.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'DesertX: Una motocicleta de aventura inspirada en el estilo rally, diseñada para enfrentarse a terrenos difíciles con confianza y rendimiento robusto.', NULL, 0, 5, NULL, 223),
(1146, 'Diavel 1260', 2022, 'Allround', 1262, 162, 118, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Diavel 1260: Una motocicleta cruiser con un potente motor de 1262cc y un diseño muscular y agresivo. Ofrece un equilibrio entre rendimiento deportivo y comodidad para largas distancias.', NULL, 0, 5, NULL, 249),
(1147, 'Diavel 1260 S', 2022, 'Allround', 1262, 162, 118, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Diavel 1260 S: Una variante de alta gama de la Diavel 1260, equipada con características premium y tecnología avanzada para un rendimiento superior.', NULL, 0, 5, NULL, 247),
(1148, 'Hypermotard 950 SP', 2022, 'Super motard', 937, 114, 83, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'Hypermotard 950 SP: Una versión de alto rendimiento de la Hypermotard 950, diseñada para una conducción agresiva en carreteras sinuosas y circuitos cerrados. Equipada con suspensiones de alto rendimiento y componentes de primera calidad.', NULL, 0, 5, NULL, 198),
(1149, 'Multistrada V2', 2022, 'Sport', 937, 93, 68, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Multistrada V2: Una motocicleta de aventura de tamaño medio, diseñada para exploraciones off-road y largos viajes en carretera con comodidad y rendimiento confiable.', NULL, 0, 5, NULL, 222),
(1150, 'Multistrada V2 S', 2022, 'Allround', 937, 93, 68, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Multistrada V2 S: Una variante de la Multistrada V2 equipada con características premium y tecnología avanzada para un rendimiento superior y mayor comodidad en largos viajes.', NULL, 0, 5, NULL, 225),
(1151, 'Multistrada V4', 2022, 'Sport', 1158, 170, 124, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Multistrada V4: Una nueva generación de la icónica motocicleta de aventura, equipada con un nuevo motor V4 y tecnología de vanguardia para un rendimiento excepcional en cualquier terreno.', NULL, 0, 5, NULL, 242),
(1152, 'Multistrada V4 Pikes Peak', 2022, 'Sport', 1158, 170, 124, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Multistrada V4 Pikes Peak: Una variante de alto rendimiento de la Multistrada V4, inspirada en la famosa carrera Pikes Peak. Equipada con características de rendimiento avanzadas y un diseño exclusivo.', NULL, 0, 5, NULL, 238),
(1153, 'Multistrada V4 S Sport', 2022, 'Sport', 1158, 170, 124, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Multistrada V4 S Sport: Una versión deportiva de la Multistrada V4 S, equipada con características adicionales de rendimiento y estilo para una experiencia de conducción más dinámica.', NULL, 0, 5, NULL, 242),
(1154, 'Multistrada V4S', 2022, 'Sport', 1158, 170, 124, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Multistrada V4S: Una versión premium de la Multistrada V4, equipada con tecnología avanzada y características de comodidad para largos viajes en carretera y exploraciones off-road.', NULL, 0, 5, NULL, 240),
(1155, 'Panigale V2 Bayliss', 2022, 'Sport', 955, 153, 112, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Panigale V2 Bayliss: Una edición especial de la Panigale V2 en colaboración con el legendario piloto de carreras Troy Bayliss, equipada con características exclusivas y un diseño inspirado en las pistas de carreras.', NULL, 0, 5, 1105, 197),
(1156, 'Panigale V4', 2022, 'Sport', 1103, 216, 157, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Panigale V4: Una superbike de alto rendimiento diseñada para la competición en circuitos cerrados, equipada con un motor V4 y tecnología de vanguardia para un rendimiento excepcional en pista.', NULL, 0, 5, 845, 198.5),
(1157, 'Panigale V4 S', 2022, 'Sport', 1103, 216, 157, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Panigale V4 S: Una versión mejorada de la Panigale V4, equipada con componentes de alta gama y tecnología avanzada para un rendimiento superior en pista.', NULL, 0, 5, NULL, 195),
(1158, 'Scrambler 1100 Dark Pro', 2022, 'Classic', 1079, 86, 63, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Scrambler 1100 Dark Pro: Una versión oscura y minimalista de la Scrambler 1100, con un estilo distintivo y características básicas para una experiencia de conducción pura y auténtica.', NULL, 0, 5, 1330, 206),
(1159, 'Scrambler 1100 Pro', 2022, 'Classic', 1079, 86, 63, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Scrambler 1100 Pro: Una variante mejorada de la Scrambler 1100, equipada con características adicionales de rendimiento y estilo para una experiencia de conducción más dinámica y emocionante.', NULL, 0, 5, 1330, 206),
(1160, 'Scrambler 1100 Sport Pro', 2022, 'Classic', 1079, 86, 63, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Scrambler 1100 Sport Pro: Una versión deportiva de la Scrambler 1100, con características de rendimiento mejoradas y un estilo más agresivo para aquellos que buscan una experiencia de conducción más dinámica y emocionante.', NULL, 0, 5, 920, 206),
(1161, 'Scrambler 1100 Tribute Pro', 2022, 'Classic', 1079, 86, 63, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1330, 211),
(1162, 'Scrambler Desert Sled', 2022, 'Enduro / offroad', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1213, 209),
(1163, 'Scrambler Icon ', 2022, 'Allround', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1150, 189),
(1164, 'Scrambler Icon Dark', 2022, 'Allround', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1150, 189),
(1165, 'Scrambler Nightshift', 2022, 'Allround', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1060, 196),
(1166, 'Scrambler Urban Motard', 2022, 'Super motard', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1150, 196),
(1167, 'Streetfighter V2', 2022, 'Naked bike', 955, 153, 112, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 200),
(1168, 'Streetfighter V4 SP', 2022, 'Naked bike', 1103, 208, 152, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 196),
(1169, 'Desert Sled Fasthouse', 2021, 'Enduro / offroad', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1213, 209),
(1170, 'Diavel 1260 Lamborghini', 2021, 'Allround', 1262, 162, 118, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 246),
(1171, 'Hypermotard 950', 2021, 'Super motard', 937, 114, 83, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 200),
(1172, 'Hypermotard 950 RVE', 2021, 'Super motard', 937, 114, 83, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 200),
(1173, 'Hypermotard 950 SP', 2021, 'Super motard', 937, 114, 83, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 198),
(1174, 'Monster ', 2021, 'Naked bike', 937, 111, 81, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 188),
(1175, 'Monster Plus', 2021, 'Naked bike', 937, 111, 81, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 188),
(1176, 'Multistrada 1260 Enduro', 2021, 'Enduro / offroad', 1262, 158, 115, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '30.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 254),
(1177, 'Multistrada 950', 2021, 'Allround', 937, 113, 83, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 227),
(1178, 'Multistrada 950 S', 2021, 'Allround', 937, 113, 83, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 230),
(1179, 'Multistrada V4', 2021, 'Sport', 1158, 179, 131, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 242),
(1180, 'Multistrada V4 S Sport', 2021, 'Sport', 1158, 179, 131, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 242),
(1181, 'Multistrada V4S', 2021, 'Sport', 1158, 179, 131, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 240),
(1182, 'Panigale V2', 2021, 'Sport', 955, 155, 113, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1105, 200),
(1183, 'Panigale V2 Bayliss', 2021, 'Sport', 955, 153, 112, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1105, 197),
(1184, 'Panigale V4 R', 2021, 'Sport', 998, 221, 161, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 193);
INSERT INTO `motocicleta` (`idMoto`, `nombreModelo`, `fechaFabricacion`, `tipoMoto`, `cilindrada`, `potencia1`, `potencia2`, `refrigeracion`, `tipoMotor`, `marchas`, `transmision`, `capacidad`, `arranque`, `tag`, `tipoCarnet`, `popularidad`, `precioMin`, `precioMax`, `descripcion`, `imagenMoto`, `suspendida`, `idFabricante`, `altura`, `peso`) VALUES
(1185, 'Panigale V4 SP', 2021, 'Sport', 1103, 214, 156, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 194),
(1186, 'Scrambler 1100 Dark Pro', 2021, 'Classic', 1079, 86, 63, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1330, 206),
(1187, 'Scrambler Desert Sled', 2021, 'Enduro / offroad', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1213, 209),
(1188, 'Scrambler Desert Sled Fasthouse', 2021, 'Enduro / offroad', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1213, 209),
(1189, 'Scrambler Icon ', 2021, 'Allround', 803, 72, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1150, 189),
(1190, 'Scrambler Nightshift', 2021, 'Allround', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1060, 196),
(1191, 'Streetfighter V4 S', 2021, 'Naked bike', 1103, 208, 152, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 201),
(1192, 'Superleggera V4', 2021, 'Naked bike', 998, 221, 162, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 167),
(1193, 'Supersport 950 ', 2021, 'Sport', 937, 110, 80, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1320, 210),
(1194, 'Supersport 950 S', 2021, 'Sport', 937, 110, 80, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1320, 210),
(1195, 'XDiavel Black Star', 2021, 'Sport', 1262, 160, 117, 'NULL', 'V2, four-stroke', 0, 'Belt   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, NULL),
(1196, 'XDiavel Dark', 2021, 'Sport', 1262, 160, 117, 'NULL', 'V2, four-stroke', 0, 'Belt   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, NULL),
(1197, 'XDiavel S', 2021, 'Sport', 1262, 160, 117, 'NULL', 'V2, four-stroke', 0, 'Belt   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 247),
(1198, '1299 Panigale R Final Edition', 2020, 'Sport', 1285, 209, 153, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1105, 190),
(1199, 'Diavel 1260', 2020, 'Allround', 1262, 159, 116, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 244),
(1200, 'Diavel 1260 S', 2020, 'Allround', 1262, 159, 116, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 244),
(1201, 'Hypermotard 950', 2020, 'Super motard', 937, 110, 80, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 200),
(1202, 'Hypermotard 950 SP', 2020, 'Super motard', 937, 114, 83, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 198),
(1203, 'Monster 1200 S', 2020, 'Naked bike', 1198, 147, 107, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '16.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1040, 213),
(1204, 'Monster 821', 2020, 'Naked bike', 821, 109, 80, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '16.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1055, 206),
(1205, 'Monster 821  Stealth', 2020, 'Naked bike', 821, 109, 80, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '16.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1055, 205),
(1206, 'Multistrada 1260', 2020, 'Allround', 1262, 158, 115, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 232),
(1207, 'Multistrada 1260 D-Air', 2020, 'Allround', 1262, 158, 115, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 236),
(1208, 'Multistrada 1260 Enduro', 2020, 'Enduro / offroad', 1262, 158, 115, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '30.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 254),
(1209, 'Multistrada 1260 Pikes Peak', 2020, 'Naked bike', 1262, 158, 115, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '30.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 229),
(1210, 'Multistrada 1260 S', 2020, 'Allround', 1262, 158, 115, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 232),
(1211, 'Multistrada 1260 S Grand Tour', 2020, 'Sport touring', 1262, 158, 115, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 238),
(1212, 'Multistrada 950', 2020, 'Allround', 937, 113, 83, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 227),
(1213, 'Multistrada 950 S', 2020, 'Allround', 937, 113, 83, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 227),
(1214, 'Panigale Superleggera V4', 2020, 'Naked bike', 998, 221, 162, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'NULL', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, NULL),
(1215, 'Panigale V2', 2020, 'Sport', 955, 155, 113, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1105, NULL),
(1216, 'Panigale V4', 2020, 'Sport', 1103, 214, 156, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 845, 198),
(1217, 'Panigale V4 R', 2020, 'Sport', 998, 221, 161, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 193),
(1218, 'Panigale V4 S', 2020, 'Sport', 1103, 214, 156, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 195),
(1219, 'Scrambler Cafe Racer', 2020, 'Allround', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1066, NULL),
(1220, 'Scrambler Desert Sled', 2020, 'Enduro / offroad', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1213, 209),
(1221, 'Scrambler DesertX Concept', 2020, 'Prototype / concept model', 1079, 84, 61, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '30.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, NULL),
(1222, 'Scrambler Full Throttle', 2020, 'Allround', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1150, 189),
(1223, 'Scrambler Icon Dark', 2020, 'Allround', 803, 72, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1150, 189),
(1224, 'Scrambler Sixty2', 2020, 'Classic', 399, 40, 29, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '14.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1165, 183),
(1225, 'Scrambler Tangerine Icon', 2020, 'Enduro / offroad', 803, 73, 53, 'Air', 'V2, four-stroke', 6, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1150, 189),
(1226, 'Streetfighter V4', 2020, 'Naked bike', 1103, 208, 152, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 845, NULL),
(1227, 'Streetfighter V4 S', 2020, 'Naked bike', 1103, 208, 152, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 845, 199),
(1228, 'Supersport S', 2020, 'Sport', 937, 110, 80, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '16.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 5, 1320, 210),
(1229, '125 SX', 2022, 'Enduro / offroad', 124, 15, 11, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '7.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1230, '125 XC', 2022, 'Enduro / offroad', 124, 15, 11, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '7.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1231, '1290 Super Duke GT', 2022, 'Naked bike', 1301, 173, 126, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '23.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1232, '150 EXC TPI', 2022, 'Enduro / offroad', 143, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1233, '150 SX', 2022, 'Cross / motocross', 144, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '7.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1234, '150 XC-W TPI', 2022, 'Enduro / offroad', 144, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1235, '250 EXC TPI', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1236, '250 EXC TPI Six Days', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1237, '250 EXC-F', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1238, '250 EXC-F Six days', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1239, '250 SX', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 5, 'Chain   (final drive)', '7.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1240, '250 SX-F ', 2022, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1241, '250 XC TPI', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1242, '250 XC-F ', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1243, '250 XC-W TPI', 2022, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1244, '300 EXC TPI', 2022, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1245, '300 EXC TPI Erzbergrodeo', 2022, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1246, '300 EXC TPI Six Days', 2022, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1247, '300 XC TPI', 2022, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1248, '300 XC-W TPI', 2022, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/300 XC-W TPI.webp', 0, 6, NULL, NULL),
(1249, '300 XC-W TPI Erzbergrodeo', 2022, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1250, '350 EXC-F', 2022, 'Enduro / offroad', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1251, '350 EXC-F Factory', 2022, 'Enduro / offroad', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1252, '350 EXC-F Six Days', 2022, 'Enduro / offroad', 349, 45, 33, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1253, '350 SX-F', 2022, 'Cross / motocross', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1254, '350 XC-F', 2022, 'Enduro / offroad', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1255, '450 EXC-F', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1256, '450 EXC-F Six Days', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1257, '450 SMR', 2022, 'Super motard', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1258, '450 SX-F', 2022, 'Cross / motocross', 449, 63, 46, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1259, '450 XC-F', 2022, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1260, '50 SX', 2022, 'Minibike, cross', 49, NULL, NULL, 'NULL', 'Single cylinder, two-stroke', 0, 'Chain   (final drive)', '2.30', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1261, '50 SX Factory', 2022, 'Minibike, cross', 49, NULL, NULL, 'NULL', 'Single cylinder, two-stroke', 0, 'Chain   (final drive)', '2.30', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1262, '50 SX Mini', 2022, 'Minibike, cross', 49, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 0, 'Chain   (final drive)', '2.10', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1263, '500 EXC-F ', 2022, 'Enduro / offroad', 510, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1264, '500 EXC-F Six Days', 2022, 'Enduro / offroad', 510, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1265, '500 XCF-W ', 2022, 'Enduro / offroad', 510, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1266, '65 SX ', 2022, 'Minibike, cross', 64, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '3.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1267, '85 SX 17-14', 2022, 'Cross / motocross', 84, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '5.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1268, '85 SX 19-16', 2022, 'Cross / motocross', 84, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '5.20', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1269, '250 EXC-F ', 2021, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1270, '250 EXC-F Six days', 2021, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1271, '250 SX', 2021, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 5, 'Chain   (final drive)', '7.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1272, '250 SX-F ', 2021, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1273, '250 SX-F Troy Lee', 2021, 'Cross / motocross', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1274, '250 XC TPI', 2021, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1275, '250 XC-F ', 2021, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1276, '250 XC-W TPI', 2021, 'Enduro / offroad', 249, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1277, '300 EXC TPI  Erzberg Rodeo', 2021, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1278, '300 EXC TPI Six Days', 2021, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1279, '300 XC TPI', 2021, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1280, '300 XC-W TPI', 2021, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 1, NULL, NULL, NULL, '../view/assets/images/motocicleta/300 XC.jpeg', 0, 6, NULL, NULL),
(1281, '300 XC-W TPI Erzbergrodeo', 2021, 'Enduro / offroad', 293, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1282, '350 EXC TPI  Erzberg Rodeo', 2021, 'Enduro / offroad', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1283, '350 EXC-F', 2021, 'Enduro / offroad', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1284, '350 EXC-F Six Days', 2021, 'Enduro / offroad', 349, 45, 33, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1285, '350 EXC-F Wess', 2021, 'Enduro / offroad', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1286, '350 SX-F', 2021, 'Cross / motocross', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1287, '350 XC-F', 2021, 'Enduro / offroad', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1288, '350 XC-F Kailub Russell', 2021, 'Enduro / offroad', 349, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1289, '390 Adventure', 2021, 'Enduro / offroad', 373, 43, 31, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1290, '390 Duke', 2021, 'Naked bike', 373, 44, 32, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '13.40', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1291, '450 EXC-F', 2021, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '9.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1292, '450 EXC-F Six Days', 2021, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '9.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1293, '450 Rally Replica', 2021, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1294, '450 SMR', 2021, 'Super motard', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1295, '450 SX-F', 2021, 'Cross / motocross', 449, 63, 46, 'Liquid', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1296, '450 SX-F Factory', 2021, 'Cross / motocross', 449, 63, 46, 'Liquid', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1297, '450 XC-F', 2021, 'Enduro / offroad', 449, NULL, NULL, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '8.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1298, '50 SX', 2021, 'Minibike, cross', 49, NULL, NULL, 'NULL', 'Single cylinder, two-stroke', 0, 'Chain   (final drive)', '2.30', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL),
(1299, 'Dorsoduro 900', 2022, 'Super motard', 896, 95, 70, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 7, 1185, 212),
(1300, 'RS 125', 2022, 'Sport', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 125: Motocicleta deportiva de 125 cc, ideal para pilotos jóvenes que buscan un rendimiento ágil.', NULL, 0, 7, 1135, 144),
(1301, 'RS 125 GP Replica', 2022, 'Sport', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 125 GP Replica: Versión réplica de GP de la RS 125, con gráficos y estilo de competición.', NULL, 0, 7, 1135, 144),
(1302, 'RS 660', 2022, 'Sport', 659, 100, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 660: Deportiva de media cilindrada, conocida por su equilibrio entre potencia y manejabilidad.', NULL, 0, 7, NULL, 183),
(1303, 'RS 660 35kW', 2022, 'Sport', 659, 47, 34, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 660 35kW: Versión limitada a 35 kW, adecuada para pilotos con licencia A2.', NULL, 0, 7, 1150, 183),
(1304, 'RS 660 Limited', 2022, 'Sport', 659, 100, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 660 Limited: Edición limitada con características exclusivas y detalles de alta gama.', NULL, 0, 7, NULL, 183),
(1305, 'RSV4', 2022, 'Sport', 1099, 217, 158, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '18.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RSV4: Superdeportiva de alta cilindrada, con tecnología avanzada y rendimiento de pista.', NULL, 0, 7, 1090, 202),
(1306, 'RSV4 Factory', 2022, 'Sport', 1099, 217, 158, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '18.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RSV4 Factory: Versión premium del RSV4, con componentes de alto rendimiento y materiales ligeros.', NULL, 0, 7, 1090, 199),
(1307, 'RX 125', 2022, 'Enduro / offroad', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'RX 125: Motocicleta off-road de 125 cc, diseñada para aventuras todoterreno.', NULL, 0, 7, 1180, 134),
(1308, 'RX 50', 2022, 'Enduro / offroad', 50, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '14.50', 'Kick', NULL, NULL, 0, NULL, NULL, 'RX 50: Motocicleta off-road de 50 cc, perfecta para jóvenes pilotos que inician en el off-road.', NULL, 0, 7, NULL, 132),
(1309, 'RX 50 Factory', 2022, 'Enduro / offroad', 50, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '7.00', 'Kick', NULL, NULL, 0, NULL, NULL, 'RX 50 Factory: Versión mejorada del RX 50, con componentes y diseño de fábrica.', NULL, 0, 7, NULL, 104),
(1310, 'SR GT 125', 2022, 'Scooter', 124, 15, 11, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SR GT 125: Scooter de aventura, combina agilidad urbana con capacidad para terrenos irregulares.', NULL, 0, 7, 1166, 115),
(1311, 'SR GT 200', 2022, 'Scooter', 174, 17, 13, 'Liquid', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '9.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SR GT 200: Versión de mayor cilindrada del SR GT, con más potencia para trayectos largos.', NULL, 0, 7, 1166, 116),
(1312, 'SX 125', 2022, 'Super motard', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SX 125: Motocicleta supermotard de 125 cc, ágil y ligera, ideal para uso urbano y deportivo.', NULL, 0, 7, 1140, 134),
(1313, 'SX 50', 2022, 'Super motard', 50, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '7.00', 'Kick', NULL, NULL, 0, NULL, NULL, 'SX 50: Motocicleta supermotard de 50 cc, diseñada para jóvenes pilotos.', NULL, 0, 7, 1120, 99),
(1314, 'SX 50 Factory', 2022, 'Super motard', 50, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '7.00', 'Kick', NULL, NULL, 0, NULL, NULL, 'SX 50 Factory: Versión mejorada del SX 50, con componentes de alto rendimiento.', NULL, 0, 7, 1120, 99),
(1315, 'SXR 50', 2022, 'Scooter', 49, 3, 2, 'NULL', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SXR 50: Scooter urbano de 50 cc, conocido por su eficiencia y diseño moderno.', NULL, 0, 7, NULL, 108),
(1316, 'Scarabeo 50 Classic 2T', 2022, 'Scooter', 49, 3, 2, 'Air', 'Single cylinder, two-stroke', 0, 'Belt   (final drive)', '7.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Scarabeo 50 Classic 2T: Scooter clásico de 50 cc con motor de dos tiempos, estilo retro y funcionalidad urbana.', NULL, 0, 7, NULL, NULL),
(1317, 'Scarabeo 50 Street 2T', 2022, 'Scooter', 49, 3, 2, 'Air', 'Single cylinder, two-stroke', 0, 'Belt   (final drive)', '7.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, 'Scarabeo 50 Street 2T: Versión street del Scarabeo 50, con diseño moderno y motor de dos tiempos.', NULL, 0, 7, NULL, NULL),
(1318, 'Shiver 900', 2022, 'Naked bike', 896, 95, 69, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Shiver 900: Naked bike de 900 cc, potente y versátil, con un diseño atractivo y tecnología avanzada.', NULL, 0, 7, 1110, 218),
(1319, 'Shiver 900 35kW', 2022, 'Naked bike', 896, 47, 34, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Shiver 900 35kW: Versión limitada a 35 kW, apta para pilotos con licencia A2.', NULL, 0, 7, 1110, 218),
(1320, 'Tuareg 660', 2022, 'Super motard', 660, 80, 58, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '18.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tuareg 660: Motocicleta de aventura de media cilindrada, diseñada para largos viajes y terrenos difíciles.', NULL, 0, 7, NULL, 204),
(1321, 'Tuono 125', 2022, 'Naked bike', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tuono 125: Naked deportiva de 125 cc, ideal para pilotos jóvenes que buscan estilo y rendimiento.', NULL, 0, 7, NULL, 144),
(1322, 'Tuono 660', 2022, 'Sport', 660, 95, 69, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tuono 660: Naked de media cilindrada, combina potencia con un diseño agresivo y tecnología avanzada.', NULL, 0, 7, 820, 183),
(1323, 'Tuono 660 Factory', 2022, 'Sport', 660, 100, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tuono 660 Factory: Versión de alto rendimiento del Tuono 660, con componentes premium y mejoras en el motor.', NULL, 0, 7, 820, NULL),
(1324, 'Tuono V4 ', 2022, 'Naked bike', 1077, 175, 128, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '17.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tuono V4: Naked de alta cilindrada, basada en la RSV4, con rendimiento extremo y tecnología de competición.', NULL, 0, 7, 1090, 209),
(1325, 'Tuono V4 Factory', 2022, 'Naked bike', 1077, 175, 128, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '17.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tuono V4 Factory: Versión premium del Tuono V4, con componentes y ajustes de alto rendimiento.', NULL, 0, 7, 1090, 209),
(1326, 'Dorsoduro 900', 2021, 'Super motard', 896, 95, 70, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Dorsoduro 900: Supermotard de 900 cc, conocida por su agilidad y diversión en la conducción.', NULL, 0, 7, 1185, 212),
(1327, 'RS 125', 2021, 'Sport', 124, 28, 21, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 125: Motocicleta deportiva de 125 cc, diseñada para jóvenes pilotos que buscan rendimiento.', NULL, 0, 7, 1135, NULL),
(1328, 'RS 125 GP Replica ', 2021, 'Sport', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 125 GP Replica: Versión réplica de GP de la RS 125, con gráficos y estilo de competición.', NULL, 0, 7, 1135, 144),
(1329, 'RS 50', 2021, 'Sport', 50, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 50: Motocicleta deportiva de 50 cc, ideal para jóvenes pilotos que buscan un primer contacto con el motociclismo.', NULL, 0, 7, 1138, 132),
(1330, 'RS 660', 2021, 'Sport', 659, 100, 73, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 660: Deportiva de media cilindrada, equilibrada en potencia y manejabilidad.', NULL, 0, 7, NULL, 183),
(1331, 'RS 660 35kW', 2021, 'Sport', 659, 47, 34, 'Liquid', 'Twin, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 660 35kW: Versión limitada a 35 kW, ideal para pilotos con licencia A2.', NULL, 0, 7, 1150, 183),
(1332, 'RS-GP', 2021, 'Sport', 999, 255, 186, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '22.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS-GP: Motocicleta de competición, basada en la tecnología de MotoGP.', NULL, 0, 7, NULL, 160),
(1333, 'RSV4', 2021, 'Sport', 1099, 217, 158, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '18.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RSV4: Superdeportiva de alta cilindrada, con tecnología avanzada y rendimiento excepcional.', NULL, 0, 7, 1090, 199),
(1334, 'RSV4 1100 Factory', 2021, 'Sport', 1099, 217, 158, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '18.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RSV4 1100 Factory: Versión premium del RSV4, con mayor cilindrada y componentes de alto rendimiento.', NULL, 0, 7, 1090, 199),
(1335, 'RSV4 RR 1000', 2021, 'Sport', 999, 201, 147, 'Liquid', 'V4, four-stroke', 6, 'Chain   (final drive)', '18.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RSV4 RR 1000: Versión de competición del RSV4, con un motor de 1000 cc y tecnología avanzada.', NULL, 0, 7, NULL, 204),
(1336, 'RX 125', 2021, 'Enduro / offroad', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '7.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RX 125: Motocicleta off-road de 125 cc, diseñada para aventuras en terrenos difíciles.', NULL, 0, 7, NULL, 134),
(1337, 'RX 50', 2021, 'Enduro / offroad', 50, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '7.00', 'Kick', NULL, NULL, 0, NULL, NULL, 'RX 50: Motocicleta off-road de 50 cc, perfecta para jóvenes pilotos.', NULL, 0, 7, NULL, 99),
(1338, 'RX 50 Factory', 2021, 'Enduro / offroad', 50, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '7.00', 'Kick', NULL, NULL, 0, NULL, NULL, 'RX 50 Factory: Versión mejorada del RX 50, con componentes de alto rendimiento.', NULL, 0, 7, NULL, 104),
(1339, 'SR 125', 2021, 'Scooter', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SR 125: Scooter urbano de 125 cc, conocido por su agilidad y eficiencia.', NULL, 0, 7, 1166, 115),
(1340, 'SR 160 ', 2021, 'Scooter', 160, 11, 8, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SR 160: Scooter de mayor cilindrada, ideal para desplazamientos urbanos y periurbanos.', NULL, 0, 7, 1166, 122),
(1341, 'SR 160 Race', 2021, 'Scooter', 160, 11, 8, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SR 160 Race: Versión deportiva del SR 160, con diseño y rendimiento mejorados.', NULL, 0, 7, 1166, 122),
(1342, 'SR 50 Factory', 2021, 'Scooter', 49, 4, 3, 'Liquid', 'Single cylinder, two-stroke', 0, 'Belt   (final drive)', '7.60', 'Electric', NULL, NULL, 0, NULL, NULL, 'SR 50 Factory: Scooter de 50 cc, con un enfoque en el rendimiento y el estilo.', NULL, 0, 7, 1120, NULL),
(1343, 'SR 50 MT', 2021, 'Scooter', 49, 2, 2, 'Air', 'Single cylinder, two-stroke', 0, 'Belt   (final drive)', '6.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'SR 50 MT: Versión motard del SR 50, con diseño deportivo y ágil.', NULL, 0, 7, 1145, NULL),
(1344, 'SR R 50', 2021, 'Scooter', 49, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 0, 'Belt   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SR R 50: Scooter de 50 cc, conocido por su estilo deportivo y rendimiento en la ciudad.', NULL, 0, 7, 1120, NULL),
(1345, 'SX 125', 2021, 'Super motard', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '10.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SX 125: Motocicleta supermotard de 125 cc, ágil y versátil, ideal para uso urbano.', NULL, 0, 7, NULL, 120),
(1346, 'SX 50 Factory', 2021, 'Super motard', 50, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '7.00', 'Kick', NULL, NULL, 0, NULL, NULL, 'SX 50 Factory: Versión mejorada del SX 50, con componentes de alto rendimiento.', NULL, 0, 7, 1120, 104),
(1347, 'SXR 160', 2021, 'Scooter', 160, 11, 8, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SXR 160: Scooter urbano de mayor cilindrada, combina eficiencia con un diseño moderno.', NULL, 0, 7, 1515, 129),
(1348, 'SXR 50', 2021, 'Scooter', 49, 3, 2, 'NULL', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '7.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'SXR 50: Scooter urbano de 50 cc, eficiente y fácil de manejar.', NULL, 0, 7, NULL, 108),
(1349, 'Shiver 900', 2021, 'Naked bike', 896, 95, 69, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Shiver 900: Naked bike de 900 cc, potente y versátil, con un diseño atractivo y tecnología avanzada.', NULL, 0, 7, 1110, 218),
(1350, 'Storm 125', 2021, 'Scooter', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 0, 'Belt   (final drive)', '6.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'Storm 125: Motocicleta de 125 cc, ideal para el uso urbano con un diseño robusto.', NULL, 0, 7, 1166, 115),
(1351, 'Tuono 125', 2021, 'Naked bike', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'Tuono 125: Naked deportiva de 125 cc, perfecta para pilotos jóvenes que buscan estilo y rendimiento.', NULL, 0, 7, NULL, 144),
(1352, 'RS 125 GP Replica ', 2020, 'Sport', 124, 15, 11, 'Liquid', 'Single cylinder, four-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 125 GP Replica: Versión réplica de GP de la RS 125, con gráficos y estilo de competición.', NULL, 0, 7, 1135, 120),
(1353, 'RS 50', 2020, 'Sport', 50, NULL, NULL, 'Liquid', 'Single cylinder, two-stroke', 6, 'Chain   (final drive)', '14.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'RS 50: Motocicleta deportiva de 50 cc, ideal para jóvenes pilotos que inician en el motociclismo.', NULL, 0, 7, 1138, 132),
(1354, 'Electra Glide Standard', 2022, 'Touring', 1746, 90, 66, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Electra Glide Standard: Touring de Harley-Davidson, conocida por su comodidad en largos viajes.', NULL, 0, 9, NULL, 372),
(1355, 'Fat Bob 114', 2022, 'Custom / cruiser', 1868, 94, 69, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '13.60', 'Electric', NULL, NULL, 0, NULL, NULL, 'Fat Bob 114: Cruiser potente, con un motor de 114 cc y un diseño robusto.', NULL, 0, 9, NULL, 306.2),
(1356, 'Fat Boy 114', 2022, 'Custom / cruiser', 1868, 100, 73, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '18.93', 'Electric', NULL, NULL, 0, NULL, NULL, 'Fat Boy 114: Icono de Harley-Davidson, combina estilo clásico con un motor potente.', NULL, 0, 9, NULL, 317.1),
(1357, 'Forty-Eight', 2022, 'Custom / cruiser', 1202, 65, 47, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '7.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Forty-Eight: Sportster con un diseño retro y un potente motor de 1200 cc.', NULL, 0, 9, NULL, 252),
(1358, 'Freewheeler', 2022, 'Custom / cruiser', 1868, 100, 73, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Freewheeler: Trike de Harley-Davidson, con diseño clásico y estabilidad adicional.', NULL, 0, 9, NULL, 507.1),
(1359, 'Heritage Classic', 2022, 'Custom / cruiser', 1868, NULL, NULL, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '18.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Heritage Classic: Cruiser de estilo retro, con detalles nostálgicos y modernas prestaciones.', NULL, 0, 9, NULL, 330.2),
(1360, 'Iron 883', 2022, 'Custom / cruiser', 883, 51, 37, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '12.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'Iron 883: Sportster de entrada, conocida por su diseño oscuro y rendimiento accesible.', NULL, 0, 9, NULL, 256),
(1361, 'Pan America 1250', 2022, 'Super motard', 1250, 150, 110, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '21.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'Pan America 1250: Motocicleta de aventura de Harley-Davidson, diseñada para terrenos difíciles.', NULL, 0, 9, NULL, 244.9),
(1362, 'Pan America 1250 Special', 2022, 'Super motard', 1250, 150, 110, 'Liquid', 'V2, four-stroke', 6, 'Chain   (final drive)', '21.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'Pan America 1250 Special: Versión premium de la Pan America, con características adicionales de lujo.', NULL, 0, 9, NULL, 258.1),
(1363, 'Road Glide', 2022, 'Touring', 1746, 89, 65, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Road Glide: Touring de Harley-Davidson, famosa por su carenado y comodidad en largos viajes.', NULL, 0, 9, NULL, 388),
(1364, 'Road Glide Limited', 2022, 'Touring', 1868, 89, 65, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Road Glide Limited: Versión equipada con más características de lujo y tecnología avanzada.', NULL, 0, 9, NULL, 422.8),
(1365, 'Road Glide Special', 2022, 'Touring', 1868, 100, 73, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Road Glide Special: Modelo touring con características mejoradas y un diseño distintivo.', NULL, 0, 9, NULL, 386.9),
(1366, 'Road King', 2022, 'Touring', 1746, 89, 65, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Road King: Clásico de Harley-Davidson, conocida por su diseño tradicional y confort.', NULL, 0, 9, NULL, 375.6),
(1367, 'Road King Special', 2022, 'Touring', 1868, 100, 73, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Road King Special: Versión con un diseño más moderno y características mejoradas.', NULL, 0, 9, NULL, 366.1),
(1368, 'Softail Standard', 2022, 'Custom / cruiser', 1753, NULL, NULL, 'Air', 'V2, four-stroke', 5, 'Belt   (final drive)', '13.25', 'Electric', NULL, NULL, 0, NULL, NULL, 'Softail Standard: Cruiser esencial, con diseño simple y motor potente.', NULL, 0, 9, NULL, 297.1),
(1369, 'Sportster S ', 2022, 'Sport', 1252, 121, 88, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '11.73', 'Electric', NULL, NULL, 0, NULL, NULL, 'Sportster S: Nueva generación de la Sportster, con un diseño agresivo y tecnología moderna.', NULL, 0, 9, NULL, 227.7),
(1370, 'Street Bob 114', 2022, 'Custom / cruiser', 1868, NULL, NULL, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '13.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'Street Bob 114: Cruiser minimalista con un potente motor de 114 cc y estilo clásico.', NULL, 0, 9, NULL, 297.1),
(1371, 'Street Glide', 2022, 'Touring', 1746, 89, 65, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Street Glide: Touring con carenado batwing, perfecta para largos viajes con comodidad.', NULL, 0, 9, NULL, 376),
(1372, 'Street Glide Special', 2022, 'Touring', 1868, 100, 73, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.70', 'Electric', NULL, NULL, 0, NULL, NULL, 'Street Glide Special: Versión con características mejoradas y un diseño más moderno.', NULL, 0, 9, NULL, 375.1),
(1373, 'Tri Glide Ultra', 2022, 'Touring', 1868, 100, 73, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 2, NULL, NULL, NULL, '../view/assets/images/motocicleta/tri_glide_ultra_2023.webp', 0, 9, NULL, 563.8),
(1374, 'Ultra Limited', 2022, 'Touring', 1868, 100, 73, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 1, NULL, NULL, NULL, '../view/assets/images/motocicleta/ULTRA_limited.png', 0, 9, NULL, 415.9),
(1375, 'Breakout', 2021, 'Custom / cruiser', 1868, 93, 68, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '13.20', 'Electric', NULL, NULL, 0, NULL, NULL, 'Breakout: Cruiser de diseño largo y bajo, con un motor potente y estilo imponente.', NULL, 0, 9, NULL, 305),
(1376, 'CVO Limited', 2021, 'Touring', 1923, 105, 77, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'CVO Limited: Versión de lujo de Harley-Davidson, con características exclusivas y componentes premium.', NULL, 0, 9, NULL, 428.2),
(1377, 'CVO Road Glide', 2021, 'Touring', 1923, 105, 77, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'CVO Road Glide: Touring de lujo con diseño exclusivo y tecnología avanzada.', NULL, 0, 9, NULL, 405.1),
(1378, 'CVO Street Glide', 2021, 'Touring', 1923, 105, 77, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'CVO Street Glide: Versión de lujo del Street Glide, con características exclusivas.', NULL, 0, 9, NULL, 392.8),
(1379, 'CVO Tri Glide', 2021, 'Touring', 1917, 105, 77, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'CVO Tri Glide: Trike de lujo, con características y diseño premium.', NULL, 0, 9, NULL, 575.6),
(1380, 'Electra Glide Standard', 2021, 'Touring', 1746, 90, 66, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Electra Glide Standard: Touring clásica de Harley-Davidson, conocida por su comodidad en viajes largos.', NULL, 0, 9, NULL, 372),
(1381, 'Fat Bob 114', 2021, 'Custom / cruiser', 1868, 94, 69, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '13.60', 'Electric', NULL, NULL, 0, NULL, NULL, 'Fat Bob 114: Cruiser con diseño robusto y motor potente de 114 cc.', NULL, 0, 9, NULL, 306.6),
(1382, 'Fat Boy 114', 2021, 'Custom / cruiser', 1868, 100, 73, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '18.93', 'Electric', NULL, NULL, 0, NULL, NULL, 'Fat Boy 114: Icono de Harley-Davidson, con un motor potente y diseño clásico.', NULL, 0, 9, NULL, 317.1),
(1383, 'Forty-Eight', 2021, 'Custom / cruiser', 1202, 65, 47, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '7.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Forty-Eight: Sportster de diseño retro, con un potente motor de 1200 cc.', NULL, 0, 9, NULL, 252),
(1384, 'Freewheeler', 2021, 'Custom / cruiser', 1868, 100, 73, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Freewheeler: Trike de Harley-Davidson, con diseño clásico y estabilidad adicional.', NULL, 0, 9, NULL, 507.1),
(1385, 'Heritage Classic', 2021, 'Custom / cruiser', 1746, 86, 63, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '18.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Heritage Classic: Cruiser de estilo retro, con detalles nostálgicos y modernas prestaciones.', NULL, 0, 9, NULL, 330.2),
(1386, 'Heritage Classic 114', 2021, 'Custom / cruiser', 1868, 94, 69, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '18.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Heritage Classic 114: Versión con motor más potente y características mejoradas.', NULL, 0, 9, NULL, 330.2),
(1387, 'Iron 1200', 2021, 'Custom / cruiser', 1202, NULL, NULL, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '12.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'Iron 1200: Sportster con motor de 1200 cc, conocida por su diseño oscuro y rendimiento accesible.', NULL, 0, 9, NULL, 255.8),
(1388, 'Iron 883', 2021, 'Custom / cruiser', 883, 51, 37, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '12.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'Iron 883: Sportster de entrada, conocida por su diseño oscuro y rendimiento accesible.', NULL, 0, 9, NULL, 256),
(1389, 'Electra Glide Standard', 2020, 'Touring', 1746, 90, 66, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Electra Glide Standard: Touring clásica de Harley-Davidson, famosa por su comodidad en largos viajes.', NULL, 0, 9, NULL, 372),
(1390, 'FXDR 114', 2020, 'Custom / cruiser', 1868, 100, 73, 'NULL', 'V2, four-stroke', 6, 'Chain   (final drive)', '16.70', 'Electric', NULL, NULL, 0, NULL, NULL, 'FXDR 114: Cruiser de alto rendimiento, con diseño agresivo y motor potente.', NULL, 0, 9, NULL, 303),
(1391, 'Fat Bob 114', 2020, 'Custom / cruiser', 1868, 94, 69, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '13.60', 'Electric', NULL, NULL, 0, NULL, NULL, 'Fat Bob 114: Cruiser con diseño robusto y motor potente de 114 cc.', NULL, 0, 9, NULL, 306),
(1392, 'Fat Boy 114', 2020, 'Custom / cruiser', 1868, 100, 73, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '13.60', 'Electric', NULL, NULL, 0, NULL, NULL, 'Fat Boy 114: Icono de Harley-Davidson, con un motor potente y diseño clásico.', NULL, 0, 9, NULL, 306);
INSERT INTO `motocicleta` (`idMoto`, `nombreModelo`, `fechaFabricacion`, `tipoMoto`, `cilindrada`, `potencia1`, `potencia2`, `refrigeracion`, `tipoMotor`, `marchas`, `transmision`, `capacidad`, `arranque`, `tag`, `tipoCarnet`, `popularidad`, `precioMin`, `precioMax`, `descripcion`, `imagenMoto`, `suspendida`, `idFabricante`, `altura`, `peso`) VALUES
(1393, 'Freewheeler', 2020, 'Custom / cruiser', 1868, 100, 73, 'Oil & air', 'V2, four-stroke', 6, 'Belt   (final drive)', '22.71', 'Electric', NULL, NULL, 0, NULL, NULL, 'Freewheeler: Trike de Harley-Davidson, con diseño clásico y estabilidad adicional.', NULL, 0, 9, NULL, 507.1),
(1394, 'Heritage Classic', 2020, 'Custom / cruiser', 1746, 86, 63, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '18.90', 'Electric', NULL, NULL, 0, NULL, NULL, 'Heritage Classic: Cruiser de estilo retro, con detalles nostálgicos y modernas prestaciones.', NULL, 0, 9, NULL, 328),
(1395, 'Iron 1200', 2020, 'Custom / cruiser', 1202, NULL, NULL, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '12.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'Iron 1200: Sportster con motor de 1200 cc, conocida por su diseño oscuro y rendimiento accesible.', NULL, 0, 9, NULL, 255.8),
(1396, 'Iron 883', 2020, 'Custom / cruiser', 883, 51, 37, 'Air', 'V2, four-stroke', 6, 'Belt   (final drive)', '12.50', 'Electric', NULL, NULL, 0, NULL, NULL, 'Iron 883: Sportster de entrada, famosa por su diseño oscuro y rendimiento accesible.', NULL, 0, 9, NULL, 256),
(1397, 'C 400 GT', 2022, 'Scooter', 350, 34, 25, 'Liquid', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '12.80', 'Electric', NULL, NULL, 2, NULL, NULL, NULL, '../view/assets/images/motocicleta/C400GT.jpg', 0, 10, 1305, 214.1),
(1398, 'R nineT Scrambler', 2022, 'Naked bike', 1170, 109, 80, 'Oil & air', 'Two cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '17.00', 'Electric', NULL, NULL, 3, NULL, NULL, NULL, '../view/assets/images/motocicleta/R nineT Scrambler.jpg', 0, 10, 1330, NULL),
(1399, 'R nineT Scrambler', 2022, 'Naked bike', 1170, 109, 80, 'Oil & air', 'Two cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', '17.00', 'Electric', NULL, NULL, 0, NULL, NULL, 'R nineT Scrambler: Versión scrambler del R nineT, con características todoterreno y estilo vintage.', NULL, 0, 10, 1330, NULL),
(1400, 'R18 The Wal', 2022, 'Prototype / concept model', 1800, 90, 66, 'NULL', 'Two cylinder boxer, four-stroke', 6, 'Shaft drive (cardan)   (final drive)', NULL, 'Electric', NULL, NULL, 3, NULL, NULL, NULL, '../view/assets/images/motocicleta/R18_2022.jpg', 0, 10, NULL, NULL),
(1401, 'S 1000 R', 2022, 'Naked bike', 999, 165, 120, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '17.50', 'Electric', NULL, NULL, 3, NULL, NULL, NULL, '../view/assets/images/motocicleta/s1000r_2022.jpg', 0, 10, 1228, 199),
(1402, 'S 1000 RR', 2022, 'Sport', 999, 205, 150, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '16.50', 'Electric', NULL, NULL, 2, NULL, NULL, NULL, '../view/assets/images/motocicleta/S1000RR_2022.jpg', 0, 10, 1151, 196.9),
(1403, 'S 1000 XR', 2022, 'Sport', 999, 165, 120, 'Liquid', 'In-line four, four-stroke', 6, 'Chain   (final drive)', '20.00', 'Electric', NULL, NULL, 1, NULL, NULL, NULL, '../view/assets/images/motocicleta/S1000XR.jpg', 0, 10, 1411, 226),
(1404, 'C 400 X', 2021, 'Scooter', 350, 34, 25, 'Liquid', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '12.80', 'Electric', NULL, NULL, 1, NULL, NULL, NULL, '../view/assets/images/motocicleta/C400X.jpg', 0, 10, 1305, 204),
(1405, 'YBR125 ED', 2022, 'Allround', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 1, NULL, NULL, NULL, '../view/assets/images/motocicleta/YBR125ED.jfif', 0, 3, 1080, 123),
(1406, 'YBR 110', 2018, 'Allround', 106, 8, 6, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1050, 123),
(1407, 'YBR125', 2018, 'Naked bike', 123, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.60', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1100, 126),
(1408, 'YBR 110', 2017, 'Allround', 106, 10, 7, 'Air', 'Single cylinder, four-stroke', 4, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, NULL, 123),
(1409, 'YBR125', 2017, 'Naked bike', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 126),
(1410, 'YBR125 Custom', 2017, 'Custom / cruiser', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1125, 129),
(1411, 'YBR125', 2016, 'Naked bike', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 126),
(1412, 'YBR125 Custom', 2016, 'Custom / cruiser', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, NULL, 129),
(1413, 'YBR125', 2015, 'Naked bike', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 126),
(1414, 'YBR125 Custom', 2015, 'Custom / cruiser', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, NULL, 129),
(1415, 'YBR125', 2014, 'Naked bike', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 126),
(1416, 'YBR125 Custom', 2014, 'Custom / cruiser', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, NULL, 129),
(1417, 'YBR125', 2013, 'Naked bike', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 125),
(1418, 'YBR125 Custom', 2013, 'Custom / cruiser', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, NULL, 129),
(1419, 'YBR125', 2012, 'Naked bike', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 125),
(1420, 'YBR125 Custom', 2012, 'Custom / cruiser', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, '', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, NULL, 129),
(1421, 'YBR125', 2011, 'Naked bike', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 125),
(1422, 'YBR125 Custom', 2011, 'Custom / cruiser', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, '', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1125, 129),
(1423, 'YBR250', 2011, 'Sport', 249, 21, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '19.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/YBR250.webp', 0, 3, 1065, 138),
(1424, 'YBR 125', 2010, 'Naked bike', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 124),
(1425, 'YBR125', 2009, 'Sport', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, 124),
(1426, 'YBR125 Custom', 2009, 'Custom / cruiser', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1125, 129),
(1427, 'YBR250', 2009, 'Naked bike', 249, 21, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1065, NULL),
(1428, 'YBR125', 2008, 'Allround', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, NULL),
(1429, 'YBR125 Custom', 2008, 'Custom / cruiser', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1125, NULL),
(1430, 'YBR250', 2008, 'Allround', 249, 21, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '19.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1065, NULL),
(1431, 'YBR 125', 2007, 'Sport', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, NULL),
(1432, 'YBR 250', 2007, 'Allround', 249, 21, 15, 'Air', 'Single cylinder, four-stroke', 0, 'Chain   (final drive)', '19.20', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1065, NULL),
(1433, 'YBR 125', 2006, 'Naked bike', 124, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, '', '12.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, 1080, NULL),
(1434, 'YBR 125', 2005, 'Naked bike', 125, 10, 7, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.00', 'NULL', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL),
(1435, 'Classic 350', 2022, 'Classic', 349, 20, 14, 'Oil & air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Classic 350.png', 0, 8, 1090, 195),
(1436, 'Continental GT 650', 2022, 'Classic', 648, 47, 34, 'Air', 'Twin, four-stroke', 6, 'Chain   (final drive)', '12.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Continental GT.jpg', 0, 8, 1069, 212),
(1437, 'Himalayan', 2022, 'Enduro / offroad', 411, 25, 18, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '12.49', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/HImalayan.png', 0, 8, 1360, 194),
(1438, 'Interceptor 650', 2022, 'Classic', 648, 47, 34, 'Air', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.70', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Interceptor 650.webp', 0, 8, 1120, 217),
(1439, 'Meteor 350', 2022, 'Classic', 349, 20, 15, 'Oil & air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '15.00', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Meteor 350.jpg', 0, 8, 1140, 191),
(1440, ' Bullet 350', 2019, 'Classic', 346, 20, 15, 'NULL', 'Single cylinder, four-stroke', 0, '', '13.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1120, 185),
(1441, ' Bullet 350 ES', 2019, 'Classic', 346, 20, 15, 'NULL', 'Single cylinder, four-stroke', 0, '', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1120, 189),
(1442, ' Bullet Trials Work Replica 350', 2019, 'Classic', 346, 20, 15, 'NULL', 'Single cylinder, four-stroke', 0, '', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1123, 187),
(1443, '500 T Bullet Trials', 2019, 'Classic', 499, 22, 16, 'Air', 'Single cylinder, four-stroke', 0, '', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1123, 192),
(1444, 'Bullet 500', 2019, 'Classic', 499, 22, 16, 'Air', 'Single cylinder, four-stroke', 0, '', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1110, 196),
(1445, 'Bullet Trials Works Replica 500', 2019, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1123, 196),
(1446, 'Classic 350 Gunmetal Grey', 2019, 'Allround', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 194),
(1447, 'Classic 350 Redditch', 2019, 'Allround', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 194),
(1448, 'Classic 350 Signals', 2019, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 194),
(1449, 'Classic 500 ', 2019, 'Allround', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 196),
(1450, 'Classic 500 Pegasus', 2019, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 194),
(1451, 'Classic 500 Squadron Blue', 2019, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 196),
(1452, 'Classic 500 Stealth Black ', 2019, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 196),
(1453, 'Classic Chrome 500', 2019, 'Allround', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1454, 'Classic Desert Storm', 2019, 'Allround', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 196),
(1455, 'Concept KX', 2019, 'Sport', 838, 90, 66, 'NULL', 'V2, two-stroke', 0, 'Chain   (final drive)', NULL, 'NULL', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 998, NULL),
(1456, 'Continental GT 650', 2019, 'Allround', 648, 47, 34, 'Oil & air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1024, NULL),
(1457, 'Himalayan', 2019, 'Enduro / offroad', 411, 25, 18, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '15.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1360, 194),
(1458, 'Interceptor 650', 2019, 'Allround', 648, 47, 34, 'Air', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.70', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1165, 202),
(1459, 'Thunderbird  X350', 2019, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1140, 197),
(1460, 'Thunderbird 350', 2019, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1205, 197),
(1461, 'Thunderbird 500', 2019, 'Allround', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1205, 199),
(1462, 'Thunderbird X 500', 2019, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1140, 199),
(1463, 'Bullet 350', 2018, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1030, 183),
(1464, 'Bullet 500', 2018, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 194),
(1465, 'Bullet ES', 2018, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1120, 187),
(1466, 'Classic 350 Gunmetal Grey', 2018, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 192),
(1467, 'Classic 500 Stealth Black ', 2018, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 194),
(1468, 'Continental GT', 2018, 'Allround', 535, 29, 21, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1070, 192),
(1469, 'Custombike Dirty Duck', 2018, 'Enduro / offroad', 535, 29, 21, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1070, 198),
(1470, 'Custombike Mo Powa', 2018, 'Classic', 499, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, NULL, NULL),
(1471, 'Himalayan', 2018, 'Enduro / offroad', 411, 25, 18, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '15.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1360, 191),
(1472, 'Interceptor 650', 2018, 'Allround', 648, 47, 34, 'Air', 'Twin, four-stroke', 6, 'Chain   (final drive)', '13.70', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1165, 203),
(1473, 'Thunderbird 350', 2018, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1205, 195),
(1474, 'Thunderbird 500', 2018, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1300, 197),
(1475, 'Thunderbird X 350', 2018, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1140, 195),
(1476, 'Thunderbird X 500', 2018, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1140, 197),
(1477, 'Bullet 350', 2017, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1030, 180),
(1478, 'Bullet 350 ES', 2017, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1030, 185),
(1479, 'Bullet 500', 2017, 'Classic', 499, 26, 19, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1110, 193),
(1480, 'Classic 350', 2017, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1080, 187),
(1481, 'Classic 500', 2017, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 190),
(1482, 'Classic Battle Green ', 2017, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Classic Battle Green.png', 0, 8, 1050, 187),
(1483, 'Classic Chrome', 2017, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1484, 'Classic Desert Storm', 2017, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1485, 'Classic Squadron Blue', 2017, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 187),
(1486, 'Continental GT', 2017, 'Allround', 535, 29, 21, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1070, 184),
(1487, 'Himalayan', 2017, 'Enduro / offroad', 411, 25, 18, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '15.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1360, 182),
(1488, 'Thunderbird 350', 2017, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1205, 192),
(1489, 'Thunderbird 500', 2017, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1300, 195),
(1490, 'Bullet 350', 2016, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1030, 180),
(1491, 'Bullet 500', 2016, 'Classic', 499, 26, 19, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1110, 193),
(1492, 'Bullet Electra', 2016, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1120, 187),
(1493, 'Classic 350', 2016, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1080, 187),
(1494, 'Classic 500', 2016, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 190),
(1495, 'Classic 500 C5 Chrome', 2016, 'Classic', 499, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1496, 'Classic Battle Green ', 2016, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1497, 'Classic Desert Storm', 2016, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1498, 'Classic Squadron Blue', 2016, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1090, 187),
(1499, 'Continental GT', 2016, 'Allround', 535, 29, 21, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1070, 184),
(1500, 'Himalayan', 2016, 'Enduro / offroad', 411, 25, 18, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '15.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1360, 182),
(1501, 'Thunderbird 350', 2016, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1205, 192),
(1502, 'Thunderbird 500', 2016, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1300, 195),
(1503, 'Bullet 350', 2015, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1030, 180),
(1504, 'Bullet 500', 2015, 'Classic', 499, 26, 19, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1120, 193),
(1505, 'Bullet 500 B5', 2015, 'Classic', 499, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1110, 193),
(1506, 'Bullet 500 G5 Deluxe', 2015, 'Classic', 499, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1120, 187),
(1507, 'Bullet Electra', 2015, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1120, 187),
(1508, 'Classic 350', 2015, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1080, 187),
(1509, 'Classic 500', 2015, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Classic 500.png', 0, 8, 1080, 190),
(1510, 'Classic 500 C5 Chrome', 2015, 'Classic', 499, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1511, 'Classic 500 C5 Classic', 2015, 'Classic', 499, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1120, 187),
(1512, 'Classic 500 C5 Military', 2015, 'Classic', 499, NULL, NULL, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1513, 'Classic Battle Green ', 2015, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1514, 'Classic Chrome', 2015, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1080, 187),
(1515, 'Classic Desert Storm', 2015, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187),
(1516, 'Continental GT', 2015, 'Allround', 535, 29, 21, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1070, 184),
(1517, 'Thunderbird 350', 2015, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1205, 192),
(1518, 'Thunderbird 500', 2015, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '20.00', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1300, 195),
(1519, 'Bullet 350', 2014, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1030, 180),
(1520, 'Bullet 500', 2014, 'Classic', 499, 37, 27, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1120, 193),
(1521, 'Bullet Electra', 2014, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, '../view/assets/images/motocicleta/Bullet Electra.webp', 0, 8, 1120, 187),
(1522, 'Classic 350', 2014, 'Classic', 346, 20, 15, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1080, 187),
(1523, 'Classic 500', 2014, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '13.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1080, 190),
(1524, 'Classic Battle Green ', 2014, 'Classic', 499, 27, 20, 'Air', 'Single cylinder, four-stroke', 5, 'Chain   (final drive)', '14.50', 'Electric & kick', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, 1050, 187);

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

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`idRegistro`, `fechaCambio`, `tipoCambio`, `descripcionCambios`, `idUsuario`) VALUES
(35, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(36, '2024-05-31', 'usuario', 'Se ha activado el usuario: 14', 11),
(37, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(38, '2024-05-31', 'usuario', 'Se ha activado el usuario: 14', 11),
(39, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(40, '2024-05-31', 'usuario', 'Se ha activado el usuario: 14', 11),
(41, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(42, '2024-05-31', 'usuario', 'Se ha activado el usuario: 14', 11),
(43, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(44, '2024-05-31', 'usuario', 'Se ha activado el usuario: 14', 11),
(45, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(46, '2024-05-31', 'usuario', 'Se ha activado el usuario: 14', 11),
(47, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(48, '2024-05-31', 'usuario', 'Se ha activado el usuario: 14', 11),
(49, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(50, '2024-05-31', 'usuario', 'Se ha activado el usuario: 14', 11),
(51, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(52, '2024-05-31', 'usuario', 'Se ha activado el usuario: 14', 11),
(53, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 14', 11),
(54, '2024-05-31', 'usuario', 'Se ha vetado al usuario: 15', 11),
(55, '2024-05-31', 'usuario', 'Se ha activado el usuario: 15', 11),
(56, '2024-05-31', 'usuario', 'Se ha cambiado los permisos a colab al usuario: 14', 11),
(57, '2024-05-31', 'usuario', 'Se ha cambiado los permisos a user al usuario: 14', 11),
(58, '2024-05-31', 'usuario', 'Se ha cambiado los permisos a colab al usuario: 14', 11),
(59, '2024-05-31', 'usuario', 'Se ha cambiado los permisos a user al usuario: 15', 11),
(60, '2024-05-31', 'usuario', 'Se ha cambiado los permisos a admin al usuario: 15', 11),
(61, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 3', 11),
(62, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 2', 11),
(63, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 5', 11),
(64, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 9', 11),
(65, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 9', 11),
(66, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 7', 11),
(67, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 10', 11),
(68, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 1', 11),
(69, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 6', 11),
(70, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 6', 11),
(71, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 8', 11),
(72, '2024-05-31', 'fabricante', 'Se han modificado los datos del Fabricante: 4', 11);

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
  `password` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fechaRegistro` date NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `betado` tinyint(4) NOT NULL,
  `tipoUsuario` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombreUsuario`, `apellido1`, `apellido2`, `username`, `email`, `password`, `fechaRegistro`, `fechaNacimiento`, `betado`, `tipoUsuario`) VALUES
(11, 'davidTestAdmin', 'davidTestAdmin', 'davidTestAdmin', 'davidTestAdmin', 'davidTest@gmail.com', '$2y$10$fq0BKR0181rlooXXOQg3v.xuviDxEi7JE8j28hfUwp/WzPzAU6nrW', '2024-05-31', '2000-10-10', 0, 'admin'),
(12, 'davidTestColab', 'davidTestColab', 'davidTestColab', 'davidTestColab', 'david12Test@gmail.com', '$2y$10$orUinatSrJDo3FzWY6MjMuxlGaQydaydAR8cDlARonLjABTWNNpDq', '2024-05-31', '2000-10-10', 0, 'colab'),
(13, 'davidTestUser', 'davidTestUser', 'davidTestUser', 'davidTestUser', 'davidrdgz21@gmail.com', '$2y$10$DNIFVk8UYC3ILVGE15ujwedO5TfUImJTNvwOJ3hu1Jst0FMqPC8oa', '2024-05-31', '2000-10-10', 0, 'user'),
(14, 'davidraTestUser', 'davidraTestUser', 'davidraTestUser', 'davidraTestUser', 'davidraTestUser@gmail.com', '$2y$10$xoEQ0jLFbnwnTp0guXyKB.Z5vaUiH1F2wlLi0qSTpnIinTie0Qbj6', '2024-05-31', '2000-02-10', 1, 'colab'),
(15, 'dawAdmin', 'dawAdmin', 'dawAdmin', 'dawAdmin123', 'dawadmin@gmail.com', '$2y$10$A6nkYgqsDPEOBKDjD4XeWuiRl4sSi1FIe2KVtytPNgj62vc9m7T86', '2024-05-31', '2000-10-10', 0, 'admin'),
(16, 'dawColab', 'dawColab', 'dawColab', 'dawColab123', 'daw2Colab123@gmail.com', '$2y$10$vA8VJSP4UQiRY7x7W/oagOphGHQHL./emOFE0fnmxa3w7aJWpXYh.', '2024-05-31', '2000-10-10', 0, 'colab'),
(17, 'dawUser', 'dawUser', 'dawUser', 'dawUser123', 'dawUser123@gmail.com', '$2y$10$3mX1qY4hIrr4UHlKqdNBo.g/gYkur.i.58.9L5s33uUPOCetplrg6', '2024-05-31', '2000-10-10', 0, 'user');

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
  MODIFY `idFabricante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `motocicleta`
--
ALTER TABLE `motocicleta`
  MODIFY `idMoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1525;

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
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
