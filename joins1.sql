create database ger_join_1e;

create table funcionarios(
cod_func int auto_increment primary key,
nome_func varchar(255),
especialidade varchar(255)
);

create table dependentes(
cod_int int auto_increment primary key,
nome varchar(255),
cod_func int,
foreign key (cod_func) references funcionarios (cod_func)
);

insert into funcionarios(nome_func, especialidade)
values ("Jose", "Engenheiro"),
("João", "Mestre de obras"),

("Maria", "contabilista");

insert into dependentes(nome, cod_func)
values ("Pedro", 1),
("Alice", 1),
("Luana", 3);

select funcionarios.nome_func, dependente.nome
from funcionarios
inner join dependentes
on funcionarios.nome_func = dependentes.cod_func
where funcionarios.cod_func=1;

select func.nome nome_func, dep.nome nome_dep
from funcionarios FUNC
left join dependentes DEP
on FUN.cod_func = DEP.cod_func;

Select func_nome nome_func, dep.nome nome_dep
from funcionarios FUNC
left join dependentes DEP
on cod_func = dep.cod_func
where dep.nome is null;

select func.nome nome_func, dep.nome nome_dep
from funcionarios FUNC
right join dependentes DEP
on FUN.cod_func = DEP.cod_func;







