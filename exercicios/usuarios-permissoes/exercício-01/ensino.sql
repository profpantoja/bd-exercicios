-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/11/2023 às 17:44
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ensino`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `duracao` int(11) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `id_instituicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `curso`
--

INSERT INTO `curso` (`id`, `nome`, `duracao`, `descricao`, `id_instituicao`) VALUES
(11, 'Inglês', 5, 'Inglês', 1),
(12, 'Enfermagem', 2, 'Enfermagem', 2),
(13, 'Design', 4, 'Design', 3),
(14, 'Direito', 5, 'Direito', 4),
(15, 'Administração ', 4, 'Administração ', 5),
(16, 'Cuidador', 2, 'Cuidador', 6),
(17, 'Informática', 2, 'Informática', 7),
(18, 'Manicure', 2, 'Manicure', 8),
(19, 'Corretor de imóveis', 2, 'Corretor de imóveis', 9),
(20, 'Gestão', 4, 'Gestão', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `telefone` int(11) NOT NULL,
  `site` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `instituicao`
--

INSERT INTO `instituicao` (`id`, `nome`, `telefone`, `site`) VALUES
(1, 'Waterfalls Academy', 833243143, 'waterfallsacademy.org'),
(2, 'Broad River College', 752214422, 'broadrivercolleg.org'),
(3, 'Grapevine Grammar School', 682306324, 'grapevinegrammarschool.org'),
(4, 'Redlands Technical School', 912166782, 'radlandsthechnicalschool.org'),
(5, 'Savanna High School', 682306324, 'savannahighschool.org'),
(6, 'Bayshore School', 423733588, 'bayshoreschool.org'),
(7, 'East Bridge College', 643783316, 'eastbridgecollege.org'),
(8, 'Trinity Institute', 892843182, 'trinityinstitute.org'),
(9, 'Pinewood High', 472272072, 'pinewoodhigh.org'),
(10, 'West Bridge Academy', 682306324, 'westbridgeacademy.org');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_instituicao` (`id_instituicao`);

--
-- Índices de tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_instituicao`) REFERENCES `instituicao` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
