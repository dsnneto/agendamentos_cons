-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/03/2024 às 00:36
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone  "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



-- Banco de dados: `hospitalhs`
--
DROP DATABASE IF EXISTS `hs_consulta`;
CREATE DATABASE IF NOT EXISTS `hs_consulta` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hs_consulta`;
-- --------------------------------------------------------



-- tabela `consulta`

CREATE TABLE `consulta` (
  `idC` int(11) NOT NULL,
  `horaC` time NOT NULL,
  `dataC` date NOT NULL,
  `idPFK` int(11) NOT NULL,
  `idMFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



-- tabela `consulta`

INSERT INTO `consulta` (`idC`, `horaC`, `dataC`, `idPFK`, `idMFK`) VALUES
(6, '19:33:14', '2024-03-12', 1, 1),
(7, '20:09:22', '2024-03-13', 6, 3),
(8, '20:30:22', '2024-03-14', 3, 3),
(9, '20:09:22', '2024-03-18', 8, 2),
(10, '20:09:22', '2024-03-18', 8, 2),
(11, '20:09:22', '2024-03-18', 5, 4),
(13, '20:09:22', '2024-03-18', 8, 2),
(14, '20:09:22', '2024-03-18', 5, 4),
(15, '20:09:22', '2024-03-18', 2, 3),
(16, '20:09:22', '2024-03-18', 3, 5);



-- tabela `medico`

CREATE TABLE `medico` (
  `idM` int(11) NOT NULL,
  `nomeM` varchar(105) NOT NULL,
  `espM` varchar(25) NOT NULL,
  `crm` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `medico` (`idM`, `nomeM`, `espM`, `crm`) VALUES
(1, 'Dr. Leo','Neuro','856246 CRM/SP'),
(2, 'Dr. Jr', 'Neuro','656881 CRM/PE'),
(3, 'Dr. Franco', 'Neuro','187456 CRM/MG'),
(4, 'Dr. Marco F', 'Neuro','187456 CRM/MG')



-- tabela `paciente`

CREATE TABLE `paciente` (
  `idP` int(11) NOT NULL,
  `nomeP` varchar(100) NOT NULL,
  `telP` bigint(20) NOT NULL,
  `endP` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `paciente` (`idP`, `nomeP`, `telP`, `endP`) VALUES
(1, 'Tony', 18998136500, 'rua reste'),
(2, 'Néia Maria', 1899804504, 'km45'),
(3, 'Evandro F.', 18363364242, 'av estados'),
(4, 'Carlos C', 1899835978, 'rua  Norte'),
(5, 'Bruno Ruis', 18936315582, 'rua Marcondes'),
(6, 'Vinicius H', 1888995854, 'Av  Noel Rosa'),
(7, 'Luciano', 189868568, 'Br Aguas'),
(8, 'Carlos Miguel', 18981698457, 'Av Miguel'),
(9, 'Tay', 9868568, 'RUA ROSE'),
(10, 'pessoa1', 18999999, 'teste'),
(11, 'pessoa2', 222222, 'teste2');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idC`),
  ADD KEY `idMFK` (`idMFK`),
  ADD KEY `idPFK` (`idPFK`) USING BTREE;

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`idM`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idP`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `idM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`idMFK`) REFERENCES `medico` (`idM`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`idPFK`) REFERENCES `paciente` (`idP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
