CREATE TABLE usuarios
(
   id int PRIMARY KEY auto_increment,
   nome varchar(50),
   sobrenome varchar(50),
   cpf char(14) UNIQUE,
   email varchar(50) UNIQUE,
   senha varchar(255),
   interesse varchar(50),
   tipo varchar(10),
   descricao varchar(350)
) ENGINE=InnoDB;

CREATE TABLE turmas
(
   id int PRIMARY KEY auto_increment,
   nome_turma varchar(50),
   descricao varchar(350),
   id_usuario int not null,
   CONSTRAINT id_usuario_fk FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE foto
(
   id_turma int not null,
   nomeArqFoto varchar(50),
   FOREIGN KEY (id_turma) REFERENCES turmas(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE fotoUsuario
(
   id_fotoUsuario int PRIMARY KEY AUTO_INCREMENT,
   id_usuario int not null,
   nomeArqFoto varchar(255) DEFAULT '../img/default.jpg',
   FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `cpf` char(14) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `sobrenome`, `cpf`, `email`, `senha`) VALUES
(1, 'Vitoria', 'Cardoso', '123.456.789-01', 'vs@gmail.com', 'teste');
