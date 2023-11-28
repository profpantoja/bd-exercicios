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
-- Banco de dados: `enderecos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`id`, `nome`, `id_estado`) VALUES
(1, 'Maceió', 6),
(2, 'Rio de Janeiro', 4),
(3, 'São Bernardo do Campo', 5),
(4, 'Tatuí', 5),
(5, 'Nova Xavantina', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `id_cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`id`, `rua`, `numero`, `bairro`, `id_cidade`) VALUES
(1, 'Avenida Mato Grosso', 478, 'Centro', 5),
(2, 'Rua Campos Sales', 333, 'Barro Vermelho', 2),
(3, 'Rua Soldado José Peçanha', 213, 'Realengo', 2),
(4, 'Rua Jornalista Carlos de Carvalho Lins', 644, 'Pinheiro', 1),
(5, 'Rua da Pátria', 988, 'Santa Terezinha', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `id_pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estado`
--

INSERT INTO `estado` (`id`, `nome`, `id_pais`) VALUES
(4, 'Rio de Janeiro', 3),
(5, 'São Paulo', 3),
(6, 'Alagoas', 3),
(7, 'Mato Grosso', 3),
(8, 'Amapá', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pais`
--

INSERT INTO `pais` (`id`, `nome`) VALUES
(1, 'Argentina'),
(2, 'Bolívia'),
(3, 'Brasil'),
(4, 'Chile'),
(5, 'Colômbia');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- Índices de tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Índices de tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id`);

--
-- Restrições para tabelas `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
