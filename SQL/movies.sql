-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Mar-2022 às 15:23
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `movies-controll`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `movies`
--
-- Criação: 18-Mar-2022 às 14:11
-- Última actualização: 18-Mar-2022 às 14:12
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `totaL_ep` int(11) DEFAULT NULL,
  `atual_ep` int(11) DEFAULT NULL,
  `last_view` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONAMENTOS PARA TABELAS `movies`:
--

--
-- Extraindo dados da tabela `movies`
--

INSERT INTO `movies` (`id`, `type`, `name`, `totaL_ep`, `atual_ep`, `last_view`) VALUES
(1, 0, 'Friends', 10, 1, '2022-03-24'),
(2, 1, 'Vingadores', NULL, NULL, '2022-03-18'),
(3, 0, 'Vikings', 10, 2, '2022-03-18'),
(4, 1, 'Um Lugar Silencioso', NULL, NULL, '2022-03-18'),
(5, 1, 'IT', NULL, NULL, '2022-03-18');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
