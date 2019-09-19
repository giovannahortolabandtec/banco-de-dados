create database tabela;
use tabela;

create table aluno(
	idAluno int primary key auto_increment,
	nome varchar(30),
	email varchar(30)
);

create table notebook(
	codNote int primary key auto_increment,
	fab varchar(30),
	modelo varchar(30),
	fk_aluno int,
	foreign key (fk_aluno) references aluno(idAluno)
);

insert into aluno value 
	(null, 'Emilly', 'emi@gmail.com'),
	(null, 'Giovanna', 'gio@gmail.com');

insert into notebook value
	(001, 'Dell', 'vostro', 1),
	(002, 'HP', '240', 2);


select * from notebook;

select * from aluno;

select * from aluno, notebook where fk_aluno = idAluno;

select a. *, fab, modelo from aluno as a, notebook as n where fk_aluno = idAluno; 

select * from aluno, notebook where fk_aluno = idAluno and fab = 'Dell';

select * from aluno, notebook where fk_aluno = idAluno and modelo = 'vostro';

select * from aluno, notebook where fk_aluno = idAluno and nome = 'Giovanna';

select * from aluno, notebook where fk_aluno = idAluno and email = 'gio@gmail.com';

select * from aluno, notebook where fk_aluno = idAluno and codNote = 1

