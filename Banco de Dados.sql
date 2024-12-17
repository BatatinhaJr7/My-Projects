create database faculdade;
use faculdade;

create table endereco (
id_endereco integer auto_increment primary key,
logradouro varchar(100),
bairro varchar(100),
cidade varchar(100),
cep varchar(8),
estado varchar(100)
);

create table alunos (
id_alunos integer auto_increment primary key,
nome varchar(100) not null,
telefone varchar(100) not null,
email varchar(100) not null,
nascimento varchar(100) not null,
id_endereco integer,
foreign key (id_endereco) references endereco(id_endereco)
);

create table professores (
id_professores integer auto_increment primary key,
nome varchar(100) not null,
telefone varchar(100) not null,
email varchar(100) not null,
nascimento varchar(100) not null,
id_endereco integer,
foreign key (id_endereco) references endereco(id_endereco)
);

create table alunos_professores (
id_alunos_professores integer auto_increment primary key,
id_alunos integer,
foreign key (id_alunos) references alunos(id_endereco),
id_professores integer,
foreign key (id_professores) references professores(id_professores)
);

create table faculdade ( 
id_faculdade integer auto_increment primary key,
cursos varchar(100) not null,
materias varchar(100) not null,
turmas varchar(100) not null,
notas varchar(100)
);

create table alunos_faculdade (
id_alunos_faculdade integer auto_increment primary key,
id_alunos integer,
foreign key (id_alunos) references alunos(id_alunos)
);

create table professores_faculdade (
id_professores_faculdade integer auto_increment primary key,
id_professores integer,
foreign key (id_professores) references professores(id_professores)
);

create table assinatura (
id_assinatura integer auto_increment primary key,
mensal_ead varchar(100),
mensal_presencial varchar(100),
status BOOLEAN,
pagamento varchar(100),
confirmacao varchar(100),
id_alunos integer,
foreign key  (id_alunos) references alunos(id_alunos),
id_faculdade integer,
foreign key (id_faculdade) references faculdade(id_faculdade)
);

insert into 
endereco (logradouro, bairro, cidade, cep, estado)
values
('rua A', 'Jd. Azul', 'Canhotinho', '12345678', 'PE'),
('Av. das aves', 'centro', 'embu das artes', '12345678', 'SP'),
('rua 7', 'vermelho', 'Sao Paulo', '12345678', 'SP'),
('Av. dos cachorros', 'jurema', 'Osasco', '12345678', 'SP');

insert into
alunos (nome, telefone, email, nascimento, id_endereco)
values
('joao', '1234567', 'joao123@gmail.com', '04/10/1998', '1'),
('ana', '1233453', 'ana77@gmail.com', '07/09/1996', '2');

insert into
professores (nome, telefone, email, nascimento, id_endereco)
values
('julio', '1234958', 'julio9@gmail.com', '25/01/1982', '4'),
('silvia', '1238756', 'silvia123@gmail.com', '13/07/1987', '3');

insert into
faculdade (cursos, materias, turmas, notas)
values
('farmacia', '12', '3', '9'),
('design', '6', '4', '9'),
('idiomas', '8', '6', '9,5'),
('t.i', '10', '4', '9,0');

insert into
assinatura (id_assinatura, mensal_ead, mensal_presencial, status, pagamento, confirmacao, id_alunos, id_faculdade)
values
('1', 'ativo', '-', true, 'ok', 'pago', '1', '2'),
('2', '-', 'ativo', false, 'aberto', 'processando', '2', '1');




select * from endereco;
select *from alunos;
select * from professores;
select * from faculdade;
select * from assinatura;

show tables;