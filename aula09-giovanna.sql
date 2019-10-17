create database faculdade;

use faculdade;

create table aluno(
	ra int primary key,
    nome varchar(30),
    telefone varchar(15),
	fk_projeto int,
    foreign key (fk_projeto) references projeto(id_projeto)
);

create table projeto(
	id_projeto int primary key auto_increment,
    nome varchar(30),
    descricao varchar(100)
);

create table acompanhante(
	id_acompanhante int primary key auto_increment,
    nome varchar(30),
    tipo varchar(30),
    fk_aluno int,
    foreign key (fk_aluno) references aluno(ra)
);

insert into aluno value
(1, 'giovanna', '1234', 5),
(2 , 'thayna', '5678', 4),
(3 , 'leonardo', '9012', 3),
(4 , 'luan', '3456', 2),
(5 , 'arthur', '7890', 1);

insert into projeto value
(null, 'projeto1', 'fisica'),
(null, 'projeto2', 'pesquisa'),
(null, 'projeto3', 'tecnologia'),
(null, 'projeto4', 'frontend'),
(null, 'projeto5', 'analista');

insert into acompanhante value
(null, 'lennon', 'namorado', 1),
(null, 'maria', 'mae', 2),
(null, 'pamela', 'tia', 3),
(null, 'gabriela', 'amiga', 4),
(null, 'marcos', 'tio', 5);

select * from aluno;
select * from projeto;
select * from acompanhante;

select * from aluno, projeto where fk_projeto = id_projeto;


