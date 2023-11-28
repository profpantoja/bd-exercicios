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
-- Banco de dados: `pessoas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `telefone` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contato`
--

INSERT INTO `contato` (`id`, `telefone`, `id_pessoa`, `email`) VALUES
(1, 2147483647, 1, 'luctus.sit@google.org'),
(2, 2147483647, 2, 'nisl.arcu.iaculis@hotmail.net'),
(3, 2147483647, 3, 'consectetuer@hotmail.couk'),
(4, 2147483647, 3, 'vel.venenatis.vel@yahoo.com'),
(5, 2147483647, 5, 'erat.vivamus.nisi@aol.org'),
(6, 2147483647, 6, 'feugiat.nec@yahoo.couk'),
(7, 2147483647, 7, 'dui.nec@aol.org'),
(8, 2147483647, 8, 'donec.dignissim@icloud.ca'),
(9, 892843182, 9, 'ullamcorper.velit@icloud.org'),
(10, 2147483647, 10, 'pede.cum@outlook.org');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cpf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoa`
--

INSERT INTO `pessoa` (`id`, `nome`, `cpf`) VALUES
(1, 'Felicia Jacobs', 2147483647),
(2, 'Halee Olsen', 843981650),
(3, 'Sybill Blackwell', 2147483647),
(4, 'Lester Atkinson', 2147483647),
(5, 'Darryl Oneil', 2147483647),
(6, 'Dara Hoover', 2147483647),
(7, 'Simon Mclean', 2147483647),
(8, 'Walter Bullock', 2147483647),
(9, 'Wyoming Jensen', 2147483647),
(10, 'Sybill Blackwell', 2147483647);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `senha` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `senha`, `id_pessoa`) VALUES
(21, 'luctus.sit@google.org', 12345, 1),
(22, 'nisl.arcu.iaculis@hotmail.net', 12345, 2),
(23, 'consectetuer@hotmail.couk', 12345, 3),
(24, 'vel.venenatis.vel@yahoo.com', 12345, 4),
(25, 'erat.vivamus.nisi@aol.org', 12345, 5),
(26, 'feugiat.nec@yahoo.couk', 12345, 6),
(27, 'dui.nec@aol.org', 12345, 7),
(28, 'donec.dignissim@icloud.ca', 12345, 8),
(29, 'ullamcorper.velit@icloud.org', 12345, 9),
(30, 'pede.cum@outlook.org', 12345, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pessoa2` (`id_pessoa`);

--
-- Índices de tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pessoa` (`id_pessoa`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `fk_pessoa2` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`);

--
-- Restrições para tabelas `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
