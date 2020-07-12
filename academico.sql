-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2020 a las 22:29:55
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `cod_depar` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_dep` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`cod_depar`, `nombre_dep`) VALUES
('BE', 'BENI'),
('CB', 'COCHABAMBA'),
('CH', 'CHUQUISACA'),
('LP', 'LA PAZ'),
('OR', 'ORURO'),
('PD', 'PANDO'),
('PT', 'POTOSI'),
('SC', 'SANTA CRUZ'),
('TJ', 'TARIJA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

CREATE TABLE `identificador` (
  `ci` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `paterno` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `materno` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `cod_depar` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `color` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `foto` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`ci`, `nombre`, `paterno`, `materno`, `fecha_nac`, `cod_depar`, `color`, `foto`) VALUES
('111', 'Arturo', 'Vidal', 'Caceres', '1987-10-06', 'OR', '#f15426', 'img/vidal.jpg'),
('112', 'Carlos', 'Casemiro', 'Gutierrez', '1990-02-21', 'PT', '#f15426', 'img/casemiro.jpg'),
('113', 'Freddie', 'Mercury', 'Smith', '1998-10-25', 'PD', '#f15426', 'img/freddie.jpg'),
('114', 'Iker', 'Casillas', 'Duarte', '1992-08-14', 'BE', '#f55426', 'img/casillas.jpg'),
('115', 'Jurgen', 'Klopp', 'Silva', '1997-05-11', 'CH', '#FFF426', 'img/klopp.jpg'),
('116', 'Kylian', 'Mbappe', 'Pogba', '2000-12-06', 'TJ', '#ff0000', 'img/mbappe.jpg'),
('117', 'Lautaro', 'Martinez', 'Navia', '2001-02-16', 'LP', '#fA5426', 'img/lautaro.jpg'),
('118', 'Mohammed', 'Salah', 'Shana', '1999-04-11', 'CB', '#f15524', 'img/salah.jpg'),
('119', 'Nahuel', 'Guzman', 'Hidalgo', '1997-12-15', 'SC', '#aa5426', 'img/nahuel.jpg'),
('120', 'Franco', 'Armani', 'Pelaez', '1995-12-06', 'TJ', '#0000ff', 'img/armani.jpg'),
('123456', 'Cristiano Ronaldo', 'Do Santos', 'Aveiro', '1985-02-05', 'CB', '#ff0000', 'img/cris.jpg'),
('7891011', 'Lionel', 'Messi', 'Cutticini', '1987-07-06', 'SC', '#0000ff', 'img/messi.jpg'),
('8286974', 'Erik', 'Maquera', 'Cañasto', '1991-10-06', 'LP', '#0000ff', 'img/erik.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `sigla` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`sigla`, `nombre`) VALUES
('inf-324', 'programación multimedial'),
('inf-391', 'simulación de sistemas'),
('inf-398', 'taller de licenciatura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `ci` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `sigla` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nota1` int(11) DEFAULT NULL,
  `nota2` int(11) DEFAULT NULL,
  `nota3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`ci`, `sigla`, `nota1`, `nota2`, `nota3`) VALUES
('111', 'inf-324', 30, 55, 80),
('112', 'inf-324', 40, 20, 60),
('113', 'inf-324', 50, 52, 50),
('114', 'inf-324', 80, 85, 90),
('115', 'inf-324', 10, 15, 80),
('116', 'inf-324', 60, 60, 75),
('117', 'inf-324', 45, 60, 80),
('118', 'inf-324', 30, 20, 12),
('119', 'inf-324', 30, 55, 80),
('120', 'inf-324', 50, 55, 80),
('123456', 'inf-324', 50, 55, 90),
('7891011', 'inf-324', 80, 85, 80),
('8286974', 'inf-324', 40, 60, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(25) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `clave`) VALUES
('111', '111'),
('112', '112'),
('113', '113'),
('114', '114'),
('115', '115'),
('116', '116'),
('117', '117'),
('118', '118'),
('119', '119'),
('120', '120'),
('123456', '123456'),
('7891011', '7891011'),
('8286974', '8286974');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`cod_depar`);

--
-- Indices de la tabla `identificador`
--
ALTER TABLE `identificador`
  ADD PRIMARY KEY (`ci`),
  ADD KEY `fk_cd` (`cod_depar`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`sigla`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`ci`,`sigla`),
  ADD KEY `fk_s` (`sigla`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`,`clave`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `identificador`
--
ALTER TABLE `identificador`
  ADD CONSTRAINT `fk_cd` FOREIGN KEY (`cod_depar`) REFERENCES `departamento` (`cod_depar`);

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `fk_c` FOREIGN KEY (`ci`) REFERENCES `identificador` (`ci`),
  ADD CONSTRAINT `fk_s` FOREIGN KEY (`sigla`) REFERENCES `materia` (`sigla`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_ci` FOREIGN KEY (`ci`) REFERENCES `identificador` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
