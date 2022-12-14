-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2022 at 12:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_domicilios`
--

-- --------------------------------------------------------

--
-- Table structure for table `barrios`
--

CREATE TABLE `barrios` (
  `barrio_id` int(5) NOT NULL,
  `barrio_nombre` varchar(50) NOT NULL,
  `barrio_comuna` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barrios`
--

INSERT INTO `barrios` (`barrio_id`, `barrio_nombre`, `barrio_comuna`) VALUES
(1, 'CIUDAD CAMPESTRE', '1'),
(2, 'EL RETIRO', '1'),
(3, 'FATIMA', '1'),
(4, 'LOMITAS', '1'),
(5, 'JAZMIN', '1'),
(6, 'MIRAFLORES', '1'),
(7, 'PANAMERICANO', '1'),
(8, 'LA RIVERA', '1'),
(9, 'SAN BENITO', '1'),
(10, 'NUEVO FATIMA', '1'),
(11, 'VICTORIA', '1'),
(12, 'VILLA CAMPESTRE', '1'),
(13, 'VILLA DEL RIO', '1'),
(14, 'ALVERNIA', '2'),
(15, 'CESPEDES', '2'),
(16, 'ENTRE RIOS', '2'),
(17, 'FRANCISCANOS', '2'),
(18, 'NUEVO ALVERNIA', '2'),
(19, 'SAN VICENTE DE PAUL', '2'),
(20, 'SANTA LUCIA', '2'),
(21, 'LA SANTA CRUZ', '3'),
(22, 'CASA HUERTAS', '3'),
(23, 'EL BOSQUE', '3'),
(24, 'EL CONDOR', '3'),
(25, 'EL CONDOR II', '3'),
(26, 'EL DORADO', '3'),
(27, 'ESTAMBUL', '3'),
(28, 'LA INMACULADA', '3'),
(29, 'LA VILLA', '3'),
(30, 'LAS BRISAS', '3'),
(31, 'MORALES', '3'),
(32, 'NUEVO MORALES', '3'),
(33, 'MORALITO', '3'),
(34, 'POPULAR', '3'),
(35, 'SAN ANTONIO', '3'),
(36, 'SANTA RITA DEL RIO', '3'),
(37, 'URBANIZACION PEÑARANDA', '3'),
(38, 'VILLANUEVA', '3'),
(39, 'ALTOS DE LAS COLINAS', '3'),
(40, 'LAS COLINAS', '3'),
(41, 'EL CENTRO', '4'),
(42, 'ESCOBAR', '4'),
(43, 'LAS OLAS', '4'),
(44, 'PALOBONITO', '4'),
(45, 'TOMAS URIBE', '4'),
(46, 'AVENIDA CALI', '5'),
(47, 'CONJUNTO RESIDENCIAL LUSITANIA', '5'),
(48, 'DOCE DE OCTUBRE', '5'),
(49, 'EL LAGO', '5'),
(50, 'EL LAGUITO', '5'),
(51, 'EL PRINCIPE', '5'),
(52, 'NUEVO PRINCIPE', '5'),
(53, 'ARBOLEDA DEL DARIEN', '5'),
(54, 'LA BASTILLA', '5'),
(55, 'LA MERCED', '5'),
(56, 'LAS ACACIAS', '5'),
(57, 'LUSITANIA', '5'),
(58, 'SAJONIA', '5'),
(59, 'SALESIANO', '5'),
(60, 'SAN CARLOS', '5'),
(61, 'LAGUITO', '5'),
(62, 'QUINTAS DE SAN FELIPE', '5'),
(63, 'BOLIVAR', '6'),
(64, 'PLAYAS', '6'),
(65, 'MARANDUA', '6'),
(66, 'PUEBLO NUEVO', '6'),
(67, 'ASOGRIN', '6'),
(68, 'LA CEIBA', '6'),
(69, 'LA ESPERANZA', '6'),
(70, 'ASOAGRIN', '6'),
(71, 'LAS DELICIAS', '6'),
(72, 'EL PINAR', '6'),
(73, 'PROGRESAR', '6'),
(74, 'SAN PEDRO CLAVER', '6'),
(75, 'LA HERRADURA (urbanización)', '6'),
(76, 'LAS PALMAS', '6'),
(77, 'BUENOS AIRES', '6'),
(78, 'PARQUES DE VERSALLES', '6'),
(79, 'DEPARTAMENTAL', '7'),
(80, 'PORVENIR', '7'),
(81, 'FARFAN', '7'),
(82, 'LA QUINTA', '7'),
(83, 'LAS AMERICAS', '7'),
(84, 'LOS TOLUES', '7'),
(85, 'ROJAS', '7'),
(86, 'DIABLOS ROJOS 1', '7'),
(87, 'EL DESCANSO', '7'),
(88, 'EL LIMONAR', '7'),
(89, 'GUAYACANES', '7'),
(90, 'JOSE ANTONIO GALAN', '7'),
(91, 'LA CAMPIÑA', '7'),
(92, 'LAS NIEVES', '7'),
(93, 'LAURELES I Y II', '7'),
(94, 'NUEVO FARFAN', '7'),
(95, 'LOS OLMOS', '7'),
(96, 'PRADOS DEL NORTE', '7'),
(97, 'RUBEN CRUZ VELEZ', '7'),
(98, 'VILLA LILIANA', '7'),
(99, 'VILLA DEL SUR', '7'),
(100, 'CHIMINANGOS', '8'),
(101, 'MUNICIPAL', '8'),
(102, 'HORIZONTE', '8'),
(103, 'BOSQUES DE MARACAIBO', '8'),
(104, 'FAMILIAR', '8'),
(105, 'DIABLOS ROJOS II', '8'),
(106, 'EL REFUGIO', '8'),
(107, 'FLOR DE LA CAMPANA', '8'),
(108, 'SANTA ISABEL', '8'),
(109, 'JORGE ELIECER GAITAN', '8'),
(110, 'LA INDEPENDENCIA', '8'),
(111, 'RIO PAILA', '8'),
(112, 'SAN LUIS', '8'),
(113, 'SANTA INES', '8'),
(114, 'SINTRA SANCARLOS', '8'),
(115, 'TERCER MILENIO', '8'),
(116, 'ALAMEDA I Y II', '9'),
(117, 'EL JARDIN', '9'),
(118, 'EL PALMAR', '9'),
(119, 'LA GRACIELA', '9'),
(120, 'LA TRINIDAD', '9'),
(121, 'SIETE DE AGOSTO', '9'),
(122, 'VILLA COLOMBIA', '9'),
(123, 'INTERNACIONAL', '9'),
(124, 'JUAN XXIII', '9'),
(125, 'EL BOSQUECITO', '9'),
(126, 'MARACAIBO', '9'),
(127, 'PORTALES DEL RIO', '9'),
(128, 'SAMAN DEL NORTE', '9'),
(129, 'AGUACLARA', '10'),
(130, 'LA PAZ', '10'),
(131, 'SAN FRANCISCO', '10'),
(132, 'PARAISO', '10'),
(133, 'AGUACLARA', 'corr'),
(134, 'ALTAFLOR', 'corr'),
(135, 'BARRAGAN', 'corr'),
(136, 'BOCAS DE TULUA', 'corr'),
(137, 'CAMPOALEGRE', 'corr'),
(138, 'EL PICACHO', 'corr'),
(139, 'EL RETIRO', 'corr'),
(140, 'LA DIADEMA', 'corr'),
(141, 'LA IBERIA', 'corr'),
(142, 'LA MARINA', 'corr'),
(143, 'LA MORALIA', 'corr'),
(144, 'LA PALMERA', 'corr'),
(145, 'LOS CAIMOS', 'corr'),
(146, 'MONTELORO', 'corr'),
(147, 'NARIÑO', 'corr'),
(148, 'PIEDRITAS', 'corr'),
(149, 'PUERTO FRAZADAS', 'corr'),
(150, 'QUEBRADAGRANDE', 'corr'),
(151, 'SAN LORENZO', 'corr'),
(152, 'SAN RAFAEL', 'corr'),
(153, 'SANTA LUCIA', 'corr'),
(154, 'TOCHECITO', 'corr'),
(155, 'TRES ESQUINAS', 'corr'),
(156, 'VENUS', 'corr'),
(157, 'CIENEGUETA', 'vered'),
(158, 'LA CABALLERA', 'vered'),
(159, 'LA RIVERA', 'vered'),
(160, 'PALOMESTIZO', 'vered'),
(161, 'LA PALMERA', 'vered'),
(162, 'CONTADOR OWAR', '4'),
(163, 'CONSIGNACION', '6'),
(164, 'PRA INSUMOS', '4'),
(165, 'pra med ALBEIRO', '6'),
(166, 'pra med FARMAUNIDOS', '3'),
(167, 'pra med FAVORITA', '4'),
(168, 'pra med SALUDESCUENTOS', '6'),
(169, 'pra med FANDI centro', '4'),
(170, 'pra med COLOMBO', '1'),
(171, 'pra med YORMAN', '6'),
(172, 'pra med YOLANDA', '8'),
(173, 'pra med LA ECONOMIA cll25', '6'),
(174, 'org CC LA HERRADURA', '6'),
(175, 'org LA 14', '1'),
(176, 'org LA CURVA', '6'),
(177, 'org OLIMPICA DELICIAS', '6'),
(178, 'org CLINICA MARIA ANGEL', '1'),
(179, 'org PARQUE INDUSTRIAL', '1'),
(180, 'org HOTEL PRINCIPE', '4');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(5) NOT NULL,
  `cliente_nombre` varchar(50) NOT NULL,
  `cliente_apellido` varchar(50) NOT NULL,
  `cliente_docu` int(20) NOT NULL,
  `cliente_telefono1` bigint(20) NOT NULL,
  `cliente_telefono2` bigint(20) NOT NULL,
  `cliente_dir1` varchar(50) NOT NULL,
  `cliente_dir1_barrio` varchar(50) NOT NULL,
  `cliente_dir2` varchar(50) NOT NULL,
  `cliente_dir2_barrio` varchar(50) NOT NULL,
  `cliente_dir3` varchar(50) NOT NULL,
  `cliente_dir3_barrio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `cliente_nombre`, `cliente_apellido`, `cliente_docu`, `cliente_telefono1`, `cliente_telefono2`, `cliente_dir1`, `cliente_dir1_barrio`, `cliente_dir2`, `cliente_dir2_barrio`, `cliente_dir3`, `cliente_dir3_barrio`) VALUES
(5, 'ALICIA', 'CARO', 987654, 3104568798, 3145627898, 'CRA 34#10-13', 'EL VERGEL', 'TRANSVERSAL 45#23-34', 'CALLE 12#23-23', 'CRA 56 #45-45', 'LUCITANIA'),
(6, 'PEDRO', 'PEREZ', 12345, 3144567899, 3178761243, 'CALLE 29# 40-20', 'SANTA CLARA', 'CRA 23 # 10-10', 'EL GUAMAL', 'CRA 34 # 12-23', '2');

-- --------------------------------------------------------

--
-- Table structure for table `domicilios`
--

CREATE TABLE `domicilios` (
  `domi_id` int(5) NOT NULL,
  `domi_factura` int(10) NOT NULL,
  `domi_valor` int(10) NOT NULL,
  `cliente_id` int(5) NOT NULL COMMENT 'fk',
  `domi_dir_elegida` varchar(50) NOT NULL,
  `domi_barrio_elegido` varchar(50) NOT NULL,
  `domi_observacion` varchar(250) NOT NULL,
  `domi_hora_reg` time NOT NULL,
  `domi_hora_asig` time NOT NULL,
  `domi_hora_entrega` time NOT NULL,
  `domi_hora_llegada` time NOT NULL,
  `trans_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domicilios`
--

INSERT INTO `domicilios` (`domi_id`, `domi_factura`, `domi_valor`, `cliente_id`, `domi_dir_elegida`, `domi_barrio_elegido`, `domi_observacion`, `domi_hora_reg`, `domi_hora_asig`, `domi_hora_entrega`, `domi_hora_llegada`, `trans_id`) VALUES
(1, 3434, 6000, 5, 'CRA 20# 34-14', 'LOS ALCAZARES', 'preguntar por ella en la entrada del condominio.', '08:30:00', '08:36:00', '08:54:00', '09:17:00', 1),
(2, 3435, 3000, 6, 'CALLE 12 # 12-10', 'LA PAZ', 'timbre tres veces', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 1),
(3, 3436, 10000, 5, 'TRANSVERSAL 5 # 4-10', ' CALLEJON SANTAMARIA', 'en la puerta verde con amarillo', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transportadores`
--

CREATE TABLE `transportadores` (
  `trans_id` int(5) NOT NULL,
  `trans_nombre` varchar(50) NOT NULL,
  `trans_apellido` varchar(50) NOT NULL,
  `trans_docu` int(20) NOT NULL,
  `trans_telefono1` bigint(20) DEFAULT NULL,
  `trans_telefono2` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transportadores`
--

INSERT INTO `transportadores` (`trans_id`, `trans_nombre`, `trans_apellido`, `trans_docu`, `trans_telefono1`, `trans_telefono2`) VALUES
(1, 'BRAYAN', 'PEREZ', 1116456789, 3014657890, 3164557788),
(2, 'MARINO', 'VICTORIA', 24567890, 3104556677, 3457892233);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barrios`
--
ALTER TABLE `barrios`
  ADD PRIMARY KEY (`barrio_id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indexes for table `domicilios`
--
ALTER TABLE `domicilios`
  ADD PRIMARY KEY (`domi_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `trans_id` (`trans_id`);

--
-- Indexes for table `transportadores`
--
ALTER TABLE `transportadores`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barrios`
--
ALTER TABLE `barrios`
  MODIFY `barrio_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `domicilios`
--
ALTER TABLE `domicilios`
  MODIFY `domi_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transportadores`
--
ALTER TABLE `transportadores`
  MODIFY `trans_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `domicilios`
--
ALTER TABLE `domicilios`
  ADD CONSTRAINT `domicilios_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`),
  ADD CONSTRAINT `domicilios_ibfk_2` FOREIGN KEY (`trans_id`) REFERENCES `transportadores` (`trans_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
