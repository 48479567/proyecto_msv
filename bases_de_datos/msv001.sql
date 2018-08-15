-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2018 a las 19:14:01
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `msv001`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

CREATE TABLE `actores` (
  `cod_actor` varchar(13) NOT NULL,
  `nom_actor` varchar(60) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`cod_actor`, `nom_actor`, `cod_ele_perspectiva`) VALUES
('act000001', 'actor1', 'cep001'),
('act000002', 'actor2', 'cep002'),
('act000003', 'actor3', 'cep001'),
('act000004', 'actor4', 'cep002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `cod_archivo` varchar(30) NOT NULL,
  `nom_archivo` varchar(80) NOT NULL,
  `cod_tip_archivo` varchar(30) NOT NULL,
  `cod_proyecto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`cod_archivo`, `nom_archivo`, `cod_tip_archivo`, `cod_proyecto`) VALUES
('arc000000001', 'archivo 1', 'cta0001', 'pry00000001'),
('arc000000002', 'archivo 2', 'cta0003', 'pry00000001'),
('arc000000003', 'archivo 3', 'cta0004', 'pry00000002'),
('arc000000004', 'archivo 4', 'cta0002', 'pry00000002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiarios`
--

CREATE TABLE `beneficiarios` (
  `cod_beneficiario` varchar(30) NOT NULL,
  `nom_beneficiario` varchar(60) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `beneficiarios`
--

INSERT INTO `beneficiarios` (`cod_beneficiario`, `nom_beneficiario`, `cod_ele_perspectiva`) VALUES
('ben000001', 'beneficiario 1', 'cep001'),
('ben000002', 'beneficiario 2', 'cep002'),
('ben000003', 'beneficiario 3', 'cep001'),
('ben000004', 'beneficiario 4', 'cep002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirigentes`
--

CREATE TABLE `dirigentes` (
  `cod_dirigente` varchar(30) NOT NULL,
  `nom_dirigente` varchar(60) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dirigentes`
--

INSERT INTO `dirigentes` (`cod_dirigente`, `nom_dirigente`, `cod_ele_perspectiva`) VALUES
('drg000001', 'dirigetente 1', 'cep001'),
('drg000002', 'diriigente 2', 'cep002'),
('drg000003', 'dirigente 3', 'cep001'),
('drg000004', 'dirigente 4', 'cep002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos_perspectiva`
--

CREATE TABLE `elementos_perspectiva` (
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `elementos_perspectiva`
--

INSERT INTO `elementos_perspectiva` (`cod_ele_perspectiva`) VALUES
('cep001'),
('cep002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `cod_equipo` varchar(30) NOT NULL,
  `npm_equipo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`cod_equipo`, `npm_equipo`) VALUES
('equ000001', 'equipo 1'),
('equ000002', 'equipo 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `cod_insumo` varchar(30) NOT NULL,
  `nom_insumo` varchar(80) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`cod_insumo`, `nom_insumo`, `cod_ele_perspectiva`) VALUES
('ins000001', 'insumo 1', 'cep001'),
('ins000002', 'insump 2', 'cep002'),
('ins000003', 'insumo 3', 'cep001'),
('ins000004', 'insumo 4', 'cep002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perspectivas`
--

CREATE TABLE `perspectivas` (
  `cod_perspectiva` varchar(30) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perspectivas`
--

INSERT INTO `perspectivas` (`cod_perspectiva`, `cod_ele_perspectiva`) VALUES
('per01', 'cep001'),
('per02', 'cep001'),
('per03', 'cep002'),
('per04', 'cep002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perspectivas_generales`
--

CREATE TABLE `perspectivas_generales` (
  `cod_per_general` varchar(30) NOT NULL,
  `nom_per_genral` varchar(80) NOT NULL,
  `cod_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perspectivas_generales`
--

INSERT INTO `perspectivas_generales` (`cod_per_general`, `nom_per_genral`, `cod_perspectiva`) VALUES
('cpg000001', 'perspectiva general 1', 'per01'),
('cpg000002', 'perspectiva general 2', 'per02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_servicios`
--

CREATE TABLE `productos_servicios` (
  `cod_pro_ser` varchar(30) NOT NULL,
  `nom_pro_ser` varchar(80) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_servicios`
--

INSERT INTO `productos_servicios` (`cod_pro_ser`, `nom_pro_ser`, `cod_ele_perspectiva`) VALUES
('cps0000001', 'producto o servicio 1', 'cep001'),
('cps0000002', 'producto o servicio 2', 'cep002'),
('cps0000003', 'producto o servicio 3', 'cep001'),
('cps0000004', 'producto o servicio 4', 'cep002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `cod_proveedor` varchar(30) NOT NULL,
  `nom_proveedor` varchar(60) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`cod_proveedor`, `nom_proveedor`, `cod_ele_perspectiva`) VALUES
('prv000001', 'proveedor 1', 'cep001'),
('prv000002', 'proveedor 2', 'cep002'),
('prv000003', 'proveedor 3', 'cep001'),
('prv000004', 'proveedor 4', 'cep002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `cod_proyecto` varchar(30) NOT NULL,
  `nom_proyecto` varchar(80) NOT NULL,
  `cod_equipo` varchar(30) NOT NULL,
  `cod_perspecitva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`cod_proyecto`, `nom_proyecto`, `cod_equipo`, `cod_perspecitva`) VALUES
('pry00000001', 'proyecto 1', 'equ000001', 'per01'),
('pry00000002', 'proyecto 2', 'equ000002', 'per01'),
('pry00000003', 'proyecto 3', 'equ000001', 'per02'),
('pry00000004', 'proyecto 4', 'equ000002', 'per02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reguladores`
--

CREATE TABLE `reguladores` (
  `cod_regulador` varchar(30) NOT NULL,
  `nom_regulador` varchar(80) NOT NULL,
  `cod_ele_perspectiva` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reguladores`
--

INSERT INTO `reguladores` (`cod_regulador`, `nom_regulador`, `cod_ele_perspectiva`) VALUES
('reg000001', 'regulador 1', 'cep001'),
('reg000002', 'regulador 2', 'cep002'),
('reg000003', 'regulador 3', 'cep001'),
('reg000004', 'regulador 4', 'cep002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `cod_rol` varchar(30) NOT NULL,
  `nom_rol` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`cod_rol`, `nom_rol`) VALUES
('rol001', 'gestor'),
('rol002', 'co-gestor'),
('rol003', 'analista'),
('rol004', 'espectador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuario`
--

CREATE TABLE `rol_usuario` (
  `cod_rol_usu` varchar(30) NOT NULL,
  `cod_rol` varchar(30) NOT NULL,
  `cod_usuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol_usuario`
--

INSERT INTO `rol_usuario` (`cod_rol_usu`, `cod_rol`, `cod_usuario`) VALUES
('ru0000000001', 'rol001', 'usu00000001'),
('ru0000000002', 'rol002', 'usu00000001'),
('ru0000000003', 'rol003', 'usu00000001'),
('ru0000000004', 'rol003', 'usu00000003');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_archivo`
--

CREATE TABLE `tipos_archivo` (
  `cod_tip_archivo` varchar(30) NOT NULL,
  `nom_tip_archivo` varchar(80) NOT NULL,
  `nom_ext_tip_archivo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos_archivo`
--

INSERT INTO `tipos_archivo` (`cod_tip_archivo`, `nom_tip_archivo`, `nom_ext_tip_archivo`) VALUES
('cta0001', 'tipo de archivo 1', 'pdf'),
('cta0002', 'tipo de archivo 2', 'doc'),
('cta0003', 'tipo de archivo 3', 'png'),
('cta0004', 'tipo de archivo 4', 'jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `cod_usuario` varchar(30) NOT NULL,
  `cor_usuario` varchar(30) NOT NULL,
  `nom_usuario` varchar(60) NOT NULL,
  `pas_usuario` varchar(40) NOT NULL,
  `cod_rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`cod_usuario`, `cor_usuario`, `nom_usuario`, `pas_usuario`, `cod_rol`) VALUES
('usu00000001', 'usuario1@sistemas.com', 'usuario1', '123456', 'rol001'),
('usu00000002', 'usuario2@sistemas.com', 'usuario2', '123456789', 'rol002'),
('usu00000003', 'usuario3@sistemas.com', 'usuario3', '123456789', 'rol003'),
('usu00000004', 'usuario4@sistemas.com', 'usuario4', '123456789', 'rol004');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu_equipo`
--

CREATE TABLE `usu_equipo` (
  `cod_usu_equ` varchar(30) NOT NULL,
  `cod_usuario` varchar(30) NOT NULL,
  `cod_equipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usu_equipo`
--

INSERT INTO `usu_equipo` (`cod_usu_equ`, `cod_usuario`, `cod_equipo`) VALUES
('eu0000000001', 'usu00000001', 'equ000001'),
('eu0000000002', 'usu00000002', 'equ000001'),
('eu0000000003', 'usu00000003', 'equ000002'),
('eu0000000004', 'usu00000004', 'equ000002');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`cod_actor`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`),
  ADD KEY `cod_ele_perspectiva_2` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`cod_archivo`),
  ADD KEY `cod_tip_archivo` (`cod_tip_archivo`,`cod_proyecto`),
  ADD KEY `cod_tip_archivo_2` (`cod_tip_archivo`,`cod_proyecto`),
  ADD KEY `cod_proyecto` (`cod_proyecto`);

--
-- Indices de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD PRIMARY KEY (`cod_beneficiario`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `dirigentes`
--
ALTER TABLE `dirigentes`
  ADD PRIMARY KEY (`cod_dirigente`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `elementos_perspectiva`
--
ALTER TABLE `elementos_perspectiva`
  ADD PRIMARY KEY (`cod_ele_perspectiva`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`cod_equipo`),
  ADD KEY `cod_usuario` (`npm_equipo`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`cod_insumo`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `perspectivas`
--
ALTER TABLE `perspectivas`
  ADD PRIMARY KEY (`cod_perspectiva`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `perspectivas_generales`
--
ALTER TABLE `perspectivas_generales`
  ADD PRIMARY KEY (`cod_per_general`),
  ADD KEY `cod_perspectiva` (`cod_perspectiva`);

--
-- Indices de la tabla `productos_servicios`
--
ALTER TABLE `productos_servicios`
  ADD PRIMARY KEY (`cod_pro_ser`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`cod_proveedor`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`cod_proyecto`),
  ADD KEY `cod_equipo` (`cod_equipo`,`cod_perspecitva`),
  ADD KEY `cod_perspecitva` (`cod_perspecitva`);

--
-- Indices de la tabla `reguladores`
--
ALTER TABLE `reguladores`
  ADD PRIMARY KEY (`cod_regulador`),
  ADD KEY `cod_ele_perspectiva` (`cod_ele_perspectiva`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`cod_rol`);

--
-- Indices de la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD PRIMARY KEY (`cod_rol_usu`),
  ADD KEY `cod_rol` (`cod_rol`,`cod_usuario`),
  ADD KEY `cod_usuario` (`cod_usuario`);

--
-- Indices de la tabla `tipos_archivo`
--
ALTER TABLE `tipos_archivo`
  ADD PRIMARY KEY (`cod_tip_archivo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod_usuario`),
  ADD KEY `cod_rol` (`cod_rol`);

--
-- Indices de la tabla `usu_equipo`
--
ALTER TABLE `usu_equipo`
  ADD PRIMARY KEY (`cod_usu_equ`),
  ADD KEY `cod_usuario` (`cod_usuario`,`cod_equipo`),
  ADD KEY `cod_equipo` (`cod_equipo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actores`
--
ALTER TABLE `actores`
  ADD CONSTRAINT `actores_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD CONSTRAINT `archivos_ibfk_1` FOREIGN KEY (`cod_tip_archivo`) REFERENCES `tipos_archivo` (`cod_tip_archivo`),
  ADD CONSTRAINT `archivos_ibfk_2` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyectos` (`cod_proyecto`);

--
-- Filtros para la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD CONSTRAINT `beneficiarios_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `dirigentes`
--
ALTER TABLE `dirigentes`
  ADD CONSTRAINT `dirigentes_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD CONSTRAINT `insumos_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `perspectivas`
--
ALTER TABLE `perspectivas`
  ADD CONSTRAINT `perspectivas_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `perspectivas_generales`
--
ALTER TABLE `perspectivas_generales`
  ADD CONSTRAINT `perspectivas_generales_ibfk_1` FOREIGN KEY (`cod_perspectiva`) REFERENCES `perspectivas` (`cod_perspectiva`);

--
-- Filtros para la tabla `productos_servicios`
--
ALTER TABLE `productos_servicios`
  ADD CONSTRAINT `productos_servicios_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`cod_equipo`) REFERENCES `equipos` (`cod_equipo`),
  ADD CONSTRAINT `proyectos_ibfk_2` FOREIGN KEY (`cod_perspecitva`) REFERENCES `perspectivas` (`cod_perspectiva`);

--
-- Filtros para la tabla `reguladores`
--
ALTER TABLE `reguladores`
  ADD CONSTRAINT `reguladores_ibfk_1` FOREIGN KEY (`cod_ele_perspectiva`) REFERENCES `elementos_perspectiva` (`cod_ele_perspectiva`);

--
-- Filtros para la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD CONSTRAINT `rol_usuario_ibfk_1` FOREIGN KEY (`cod_rol`) REFERENCES `roles` (`cod_rol`),
  ADD CONSTRAINT `rol_usuario_ibfk_2` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`);

--
-- Filtros para la tabla `usu_equipo`
--
ALTER TABLE `usu_equipo`
  ADD CONSTRAINT `usu_equipo_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`),
  ADD CONSTRAINT `usu_equipo_ibfk_2` FOREIGN KEY (`cod_equipo`) REFERENCES `equipos` (`cod_equipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
