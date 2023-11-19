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