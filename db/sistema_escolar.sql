-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/11/2024 às 14:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_escolar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `chamadas_em_sala`
--

CREATE TABLE `chamadas_em_sala` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `date_day` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `disciplina` varchar(255) NOT NULL,
  `code_professor` varchar(255) NOT NULL,
  `code_aluno` varchar(255) NOT NULL,
  `presente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `confirma_entrada_de_alunos`
--

CREATE TABLE `confirma_entrada_de_alunos` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `data_hoje` varchar(255) NOT NULL,
  `porteiro` varchar(255) NOT NULL,
  `code_aluno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `confirma_entrada_de_alunos`
--

INSERT INTO `confirma_entrada_de_alunos` (`id`, `date`, `data_hoje`, `porteiro`, `code_aluno`) VALUES
(1, '28/08/2014 13:32:50', '28/08/2014', '2597419508', '587418'),
(2, '28/08/2014 13:36:02', '28/08/2014', '2597419508', '587418'),
(3, '28/08/2014 13:51:18', '28/08/2014', '2597419508', '587418'),
(4, '28/08/2014 13:51:29', '28/08/2014', '2597419508', '588160'),
(19, '13/11/2024 01:49:04', '13/11/2024', '123456', '587418'),
(20, '13/11/2024 01:57:45', '13/11/2024', '123456', ''),
(21, '13/11/2024 01:57:49', '13/11/2024', '123456', ''),
(22, '13/11/2024 01:58:07', '13/11/2024', '123456', '587418'),
(23, '13/11/2024 01:58:29', '13/11/2024', '123456', '587418'),
(24, '13/11/2024 01:58:42', '13/11/2024', '123456', ''),
(25, '13/11/2024 02:03:21', '13/11/2024', '123456', '587418'),
(26, '13/11/2024 02:03:24', '13/11/2024', '123456', ''),
(27, '13/11/2024 02:03:28', '13/11/2024', '123456', ''),
(28, '13/11/2024 13:03:33', '13/11/2024', '123456', '587418'),
(29, '13/11/2024 14:42:17', '13/11/2024', '123456', '587418');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `curso` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id`, `curso`) VALUES
(1, '1º ensino médio G'),
(2, 'Inglês - turma 1 - 09:00 as 10:00'),
(3, 'Inglês - turma 2 - 10:00 as 11:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `disciplina` varchar(255) NOT NULL,
  `professor` varchar(255) NOT NULL,
  `sala` varchar(255) NOT NULL,
  `turno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `curso`, `disciplina`, `professor`, `sala`, `turno`) VALUES
(1, '1º ensino médio G', 'História', '87415978', '01', 'Manhã'),
(2, '1º ensino médio G', 'Português', '87415978', '01', 'Manhã'),
(3, '1º ensino médio G', 'Quimica', '87415978', '01', 'Manhã'),
(4, '1º ensino médio G', 'Física', '87415978', '01', 'Manhã'),
(5, '1º ensino médio G', 'Geografia', '87415978', '01', 'Manhã'),
(6, '1º ensino médio G', 'Matemática', '87415978', '01', 'Manhã'),
(8, '1º ensino médio G', 'Filosofia', '87415978', '01', 'Manhã'),
(9, '1º ensino médio G', 'Sociologia', '87415978', '01', 'Manhã'),
(10, 'Inglês - turma 1 - 09:00 as 10:00', 'Inglês Fundamental', '87415978', '1', 'Manhã');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estudantes`
--

CREATE TABLE `estudantes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `nascimento` varchar(255) NOT NULL,
  `mae` varchar(255) NOT NULL,
  `pai` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `tel_residencial` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `tel_amigo` varchar(255) NOT NULL,
  `serie` varchar(255) NOT NULL,
  `turno` varchar(255) NOT NULL,
  `atendimento_especial` varchar(255) NOT NULL,
  `mensalidade` varchar(255) NOT NULL,
  `vencimento` varchar(255) NOT NULL,
  `tel_cobranca` varchar(255) NOT NULL,
  `obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `estudantes`
--

INSERT INTO `estudantes` (`id`, `code`, `status`, `nome`, `cpf`, `rg`, `nascimento`, `mae`, `pai`, `estado`, `cidade`, `bairro`, `endereco`, `complemento`, `cep`, `tel_residencial`, `celular`, `tel_amigo`, `serie`, `turno`, `atendimento_especial`, `mensalidade`, `vencimento`, `tel_cobranca`, `obs`) VALUES
(1, '587418', 'Ativo', 'Marcos Rodrigues de Oliveira', '05379839371', '20073154576', '05/04/1993', 'Marleide de Sousa Rodrigues', 'Jose Nestor de Oliveira', 'São Gonçalo do Amarante', 'CEARA', 'Taiba', 'Av. Capitão Inácio Prata', 'Próximo ao posto bandeira branca', 'Próximo ao posto', '8651', '1515', '5815', '1º ensino médio G', 'Manhã', 'NÃO', '499.99', '28', '8589321649', 'assdf'),
(2, '588160', 'Ativo', 'Sany Ribeiro', '12345678910', '958741568715', '05/04/1993', 'Sisa Rodrigues', 'Jose Ribeiro', 'CE', 'Fortaleza', 'Centro', 'Rua Carolina Sucupira', 'ap. 15 3º andar', '78545-000', '8533156162', '8589321649', '857419621', '1º ensino médio G', 'Noite', 'NÃO', '1499.99', '25', '85893221649', '----'),
(3, '588903', 'Ativo', 'EDNILSON NASCIMENTO MARTINIANO', '047.589.757-95', '3703706341', '14/12/1974', 'DONA GRACE', 'EDMILSON', 'SP', 'Santo André', 'JD ALZIRA FRANCO', 'AVENIDA GUARATINGUETA, 660, APTO 12', 'APTO 12', '09290-270', '', '96065-2530', '', 'Inglês - turma 1 - 09:00 as 10:00', 'Manhã', 'NÃO', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `painel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id`, `status`, `code`, `senha`, `nome`, `painel`) VALUES
(1, 'Ativo', '1234', '1234', 'Teste Usuário', 'admin'),
(2, 'Ativo', '12345', '12345', 'Segundo caso', 'aluno'),
(3, 'ativo', '123456', '123456', 'Teste Portaria', 'portaria'),
(4, 'Ativo', '588903', '047.589.757-95', 'EDNILSON NASCIMENTO MARTINIANO', 'Aluno');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensalidades`
--

CREATE TABLE `mensalidades` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `matricula` varchar(255) NOT NULL,
  `d_cobranca` varchar(255) NOT NULL,
  `vencimento` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `dia` varchar(255) NOT NULL,
  `mes` varchar(255) NOT NULL,
  `ano` varchar(255) NOT NULL,
  `dia_pagamento` varchar(255) NOT NULL,
  `data_pagamento` varchar(255) NOT NULL,
  `d_p` varchar(255) NOT NULL,
  `m_p` varchar(255) NOT NULL,
  `a_p` varchar(255) NOT NULL,
  `metodo_pagamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `mensalidades`
--

INSERT INTO `mensalidades` (`id`, `code`, `matricula`, `d_cobranca`, `vencimento`, `valor`, `status`, `dia`, `mes`, `ano`, `dia_pagamento`, `data_pagamento`, `d_p`, `m_p`, `a_p`, `metodo_pagamento`) VALUES
(1, '1174836', '587418', '28/07/2014', '28/07/2014', '399.99', 'Pagamento Confirmado', '28', '07', '2014', '28/07/2014', '28/07/2014 00:14:01', '28', '07', '2014', 'Cartão de crédito'),
(2, '1174837', '587418', '28/08/2014', '28/08/2014', '499.99', 'Aguarda Pagamento', '28', '08', '2014', '', '', '', '', '', ''),
(3, '1176320', '588160', '28/08/2014', '25/08/2014', '1499.99', 'Pagamento Confirmado', '28', '08', '2014', '28/08/2014', '28/08/2014 13:44:50', '28', '08', '2014', 'Cheque'),
(4, '1177806', '588903', '13/11/2024', '/11/2024', '', 'Aguarda Pagamento', '13', '11', '2024', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `nascimento` varchar(255) NOT NULL,
  `formacao` varchar(255) NOT NULL,
  `graduacao` varchar(255) NOT NULL,
  `pos_graduacao` varchar(255) NOT NULL,
  `mestrado` varchar(255) NOT NULL,
  `doutorado` varchar(255) NOT NULL,
  `salario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id`, `code`, `status`, `nome`, `cpf`, `nascimento`, `formacao`, `graduacao`, `pos_graduacao`, `mestrado`, `doutorado`, `salario`) VALUES
(1, '87415978', 'Ativo', 'Francisca Alberta', '12345678912', '05/04/1993', 'Superior Completo', 'Pedagogia', '___', '___', '___', '1500');

-- --------------------------------------------------------

--
-- Estrutura para tabela `voluntarios`
--

CREATE TABLE `voluntarios` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `nascimento` varchar(255) NOT NULL,
  `mae` varchar(255) NOT NULL,
  `pai` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `tel_residencial` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `tel_amigo` varchar(255) NOT NULL,
  `serie` varchar(255) NOT NULL,
  `turno` varchar(255) NOT NULL,
  `atendimento_especial` varchar(255) NOT NULL,
  `mensalidade` varchar(255) NOT NULL,
  `vencimento` varchar(255) NOT NULL,
  `tel_cobranca` varchar(255) NOT NULL,
  `obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `voluntarios`
--

INSERT INTO `voluntarios` (`id`, `code`, `status`, `nome`, `cpf`, `rg`, `nascimento`, `mae`, `pai`, `estado`, `cidade`, `bairro`, `endereco`, `complemento`, `cep`, `tel_residencial`, `celular`, `tel_amigo`, `serie`, `turno`, `atendimento_especial`, `mensalidade`, `vencimento`, `tel_cobranca`, `obs`) VALUES
(1, '587418', 'Ativo', 'Marcos Rodrigues de Oliveira', '05379839371', '20073154576', '05/04/1993', 'Marleide de Sousa Rodrigues', 'Jose Nestor de Oliveira', 'São Gonçalo do Amarante', 'CEARA', 'Taiba', 'Av. Capitão Inácio Prata', 'Próximo ao posto bandeira branca', 'Próximo ao posto', '8651', '1515', '5815', '1º ensino médio G', 'Manhã', 'NÃO', '499.99', '28', '8589321649', 'assdf'),
(2, '588160', 'Ativo', 'Sany Ribeiro', '12345678910', '958741568715', '05/04/1993', 'Sisa Rodrigues', 'Jose Ribeiro', 'CE', 'Fortaleza', 'Centro', 'Rua Carolina Sucupira', 'ap. 15 3º andar', '78545-000', '8533156162', '8589321649', '857419621', '1º ensino médio G', 'Noite', 'NÃO', '1499.99', '25', '85893221649', '----');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `chamadas_em_sala`
--
ALTER TABLE `chamadas_em_sala`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `confirma_entrada_de_alunos`
--
ALTER TABLE `confirma_entrada_de_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `estudantes`
--
ALTER TABLE `estudantes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `mensalidades`
--
ALTER TABLE `mensalidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `voluntarios`
--
ALTER TABLE `voluntarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chamadas_em_sala`
--
ALTER TABLE `chamadas_em_sala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `confirma_entrada_de_alunos`
--
ALTER TABLE `confirma_entrada_de_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estudantes`
--
ALTER TABLE `estudantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `mensalidades`
--
ALTER TABLE `mensalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `voluntarios`
--
ALTER TABLE `voluntarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
