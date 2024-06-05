CREATE DATABASE saopaulo;

USE saopaulo;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

create table quiz (
idQuiz int primary key auto_increment,
score int, 
fkUsuario int, 
foreign key (fkUsuario) references Usuario (idUsuario)
);

select * from usuario;
select * from quiz;

SELECT u.idUsuario, u.nome, q.maxScore
FROM usuario as u
JOIN (
    SELECT fkUsuario, MAX(score) as maxScore
    FROM quiz
    GROUP BY fkUsuario
) q ON u.idUsuario = q.fkUsuario;