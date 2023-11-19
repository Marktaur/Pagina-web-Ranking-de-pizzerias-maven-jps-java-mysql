-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-11-2023 a las 20:52:03
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

DROP TABLE IF EXISTS `oradores`;
CREATE TABLE IF NOT EXISTS `oradores` (
  `id_orador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tema` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_alta` date NOT NULL,
  PRIMARY KEY (`id_orador`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Marcos', 'Benassi', 'marcos@gmail.com', 'Programacion', '2023-11-19'),
(2, 'Jorge', 'Barrios', 'jorge@gmail.com', 'programacion', '2023-11-19'),
(5, 'Daniel', 'Pampuro', 'daniel@gmail.com', 'Pizzas de Anana', '2023-11-19'),
(6, 'Sergio', 'Massa', 'massa@gmail.com', 'massismo@gmail.com', '2023-11-19'),
(7, 'milei', 'sinApellido', 'milei@gmail.com', 'milesismo', '2023-11-19'),
(8, 'Geoge', 'bush', 'bush@gmail.com', 'eeuu', '2023-11-19'),
(9, 'Valentina', 'Benassi', 'valen@gmail.com', 'juguetesparaNavidad', '2023-11-19'),
(10, 'ludmila', 'Benassi', 'lulupop@gmail.com', 'lulismo', '2023-11-19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
