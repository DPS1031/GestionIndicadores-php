-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2023 a las 14:23:03
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
-- Base de datos: `bdindicadores`
--
-- Estructura de tabla para la tabla `fuente`
--

CREATE TABLE `fuente` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `nombre` varchar(2000) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `fuente`
--

INSERT INTO `fuente` (`id`, `nombre`) VALUES
(1, 'Fuente 1'),
(3, 'Fuente 3'),
(4, 'Fuente 4'),
(5, 'Fuente 5'),
(7, 'Fuente 7');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `represenvisual`
--

CREATE TABLE `represenvisual` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `nombre` varchar(100) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `represenvisual`
--

INSERT INTO `represenvisual` (`id`, `nombre`) VALUES
(1, 'Tabla'),
(2, 'Barras'),
(3, 'Bigotes'),
(4, 'Torta');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `nombre` varchar(100) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`) VALUES
(1, 'admin'),
(2, 'Verificador'),
(3, 'Validador'),
(4, 'Administrativo'),
(5, 'invitado');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` varchar(2) NOT NULL COMMENT 'TRIAL',
  `nombre` varchar(200) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id`, `nombre`) VALUES
('0', 'NA'),
('1', 'GENERALIDADES'),
('10', 'SITUACIONES ACERCA DEL REGISTRO CALIFICADO'),
('11', 'OTRAS DISPOSICIONES DEL REGISTRO CALIFICADO'),
('12', 'DISPOSICIONES TRANSITORIAS'),
('2', 'CARACTERÍSTICAS DEL REGISTRO CALIFICADO'),
('3', 'CONDICIONES DE CALIDAD'),
('4', 'CRÉDITOS ACADÉMICOS'),
('5', 'PROGRAMAS EN CONVENIO'),
('6', 'PROGRAMAS DE POSGRADO'),
('7', 'CICLOS PROPEDÉUTICOS'),
('8', 'TRÁMITE DE REGISTRO CALIFICADO'),
('9', 'PARTICULARIDADES DEL TRÁMITE DEL REGISTRO CALIFICADO POR PARTE DE INSTITUCIONES ACREDITADAS EN ALTA CALIDAD Y DE PROGRAMAS ACREDITADOS EN ALTA CALIDAD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sentido`
--

CREATE TABLE `sentido` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `nombre` varchar(200) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `sentido`
--

INSERT INTO `sentido` (`id`, `nombre`) VALUES
(2, 'Sentido 2'),
(3, 'Sentido 3'),
(4, 'Sentido 4'),
(5, 'Sentido 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subseccion`
--

CREATE TABLE `subseccion` (
  `id` varchar(2) NOT NULL COMMENT 'TRIAL',
  `nombre` varchar(100) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `subseccion`
--

INSERT INTO `subseccion` (`id`, `nombre`) VALUES
('0', ''),
('13', 'Condiciones institucionales'),
('18', 'Etapa de prerradicación de solicitud de registro calificado'),
('23', 'Evaluación de condiciones de programa'),
('28', 'Etapa de radicación de solicitud de registro calificado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoactor`
--

CREATE TABLE `tipoactor` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `nombre` varchar(200) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `tipoactor`
--

INSERT INTO `tipoactor` (`id`, `nombre`) VALUES
(1, 'Estudiante'),
(2, 'Profesor'),
(3, 'Universidad'),
(4, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoindicador`
--

CREATE TABLE `tipoindicador` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `nombre` varchar(200) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `tipoindicador`
--

INSERT INTO `tipoindicador` (`id`, `nombre`) VALUES
(1, 'Tipo1'),
(2, 'tipo2'),
(3, 'tipo3'),
(4, 'tipo4'),
(5, 'tipo5'),
(6, 'tipo6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadmedicion`
--

CREATE TABLE `unidadmedicion` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `descripcion` varchar(200) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `unidadmedicion`
--

INSERT INTO `unidadmedicion` (`id`, `descripcion`) VALUES
(12, 'Unidad 1'),
(13, 'Unidad 2'),
(14, 'Unidad 3'),
(15, 'Unidad 4'),
(16, 'Unidad 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(100) NOT NULL COMMENT 'TRIAL',
  `contrasena` varchar(100) NOT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TRIAL';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`email`, `contrasena`) VALUES
('admin@empresa.com', '1234567'),
('carlosarturo.castrocastro@gmail.com', 'e0bc614e4fd035a488619799853b075143deea596c477b8dc077e309c0fe42e9'),
('hugo@empresa.com', '1234567'),
('paraborrar2@empresa.com', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'),
('paraborrar3@empresa.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414'),
('paraborrar@empresa.com', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855');

-- --------------------------------------------------------
--
-- Índices para tablas volcadas
--
--
-- Indices de la tabla `fuente`
--
ALTER TABLE `fuente`
  ADD PRIMARY KEY (`id`);
--
-- Indices de la tabla `indicador`
--
-- Indices de la tabla `represenvisual`
--
ALTER TABLE `represenvisual`
  ADD PRIMARY KEY (`id`);
--
--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);
--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sentido`
--
ALTER TABLE `sentido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subseccion`
--
ALTER TABLE `subseccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoactor`
--
ALTER TABLE `tipoactor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoindicador`
--
ALTER TABLE `tipoindicador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidadmedicion`
--
ALTER TABLE `unidadmedicion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email`);
--
-- AUTO_INCREMENT de las tablas volcadas
--
--
-- AUTO_INCREMENT de la tabla `fuente`
--
ALTER TABLE `fuente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `represenvisual`
--
ALTER TABLE `represenvisual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sentido`
--
ALTER TABLE `sentido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipoactor`
--
ALTER TABLE `tipoactor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipoindicador`
--
ALTER TABLE `tipoindicador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `unidadmedicion`
--
ALTER TABLE `unidadmedicion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
