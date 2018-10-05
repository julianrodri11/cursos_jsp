-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-02-2012 a las 00:01:23
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cursos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apertura`
--

CREATE TABLE IF NOT EXISTS `apertura` (
  `curId` varchar(3) NOT NULL,
  `fecApertura` date NOT NULL,
  `fecCierre` date NOT NULL,
  `canEstudiantes` int(5) NOT NULL,
  `usuarioId` varchar(11) NOT NULL,
  PRIMARY KEY (`curId`),
  UNIQUE KEY `usuarioId` (`usuarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `curId` varchar(3) NOT NULL,
  `curNombre` varchar(35) NOT NULL,
  `curValor` int(10) NOT NULL,
  `curDescripcion` text NOT NULL,
  `curEstado` varchar(15) NOT NULL,
  PRIMARY KEY (`curId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`curId`, `curNombre`, `curValor`, `curDescripcion`, `curEstado`) VALUES
('111', 'fdhfg', 18087000, 'null', '2'),
('124', 'photoshop cs5', 180000, '\r\nIngresa un mensaje para el estudiante!', '3'),
('125', 'Flash', 768999, 'sdfsd', '2'),
('133', 'Linux', 80000, 'estudiante!', 'null'),
('134', 'asdas asdasd a', 768999, 'werwerwer', 'null'),
('135', 'adobe reader X', 2000000, ' asja kljlka asdlkasjd askjdkalsj jsadas lkjsadkl asldas das', 'null'),
('136', 'asdas asdasd a', 768999, 'asd', 'null'),
('137', 'asdas asdasd a', 768999, 'Ingresa un mensaje para el estudiante!', 'null'),
('138', 'Linux', 2000000, 'Ingresa un mensaje para el estudiante!', 'null'),
('140', 'adobe reader X', 400000, 'Ingresa un mensaj', 'null'),
('142', 'sdfgvd', 768999, 'juliianmnnnn', '2'),
('143', 'sistemas inf', 2000000, 'sadas ', 'null'),
('144', 'linux', 200000, 'fggf fg ', '2'),
('149', 'photoshop cs5', 180000, 'w', '3'),
('155', 'sadhajsd', 180000, 'Ingresa un mensaje para el estudiante!', '2'),
('162', 'sadhajsd', 180000, 'hg', '2'),
('166', 'Flash', 180000, 'Ingresa un mensaje para el estudiante!', '2'),
('180', 'apren', 100000, 'sjaldkjaslkjd', 'null'),
('181', 'julian', 50000, 'Ingresa un mensaje para el estudiante!', 'null'),
('182', 'julian', 50000, 'Ingresa un mensaje para el estudiante!', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuTipoId` varchar(2) NOT NULL,
  `usuId` varchar(11) NOT NULL,
  `usuNombre` varchar(25) NOT NULL,
  `usuApellido` varchar(25) NOT NULL,
  `usuDireccion` varchar(50) NOT NULL,
  `usuEmail` varchar(30) NOT NULL,
  `usuTelefono` varchar(20) NOT NULL,
  `usuTipo` varchar(13) NOT NULL,
  PRIMARY KEY (`usuTipoId`,`usuId`),
  KEY `usuId` (`usuId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuTipoId`, `usuId`, `usuNombre`, `usuApellido`, `usuDireccion`, `usuEmail`, `usuTelefono`, `usuTipo`) VALUES
('CC', '1089480020', 'null', 'null', '88888888', 'lukas170787@hotmail.com', 'null', 'Administrador'),
('TI', '1089480021', 'leonairo ', 'guerrero meneses', '777777777777', 'lukas170787@hotmail.com    ', '3122828089  ', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioapertura`
--

CREATE TABLE IF NOT EXISTS `usuarioapertura` (
  `usuarioId` varchar(11) NOT NULL,
  `usuId` varchar(11) NOT NULL,
  PRIMARY KEY (`usuId`),
  UNIQUE KEY `usuarioId` (`usuarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
