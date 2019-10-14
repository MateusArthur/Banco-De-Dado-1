#Comandos uties sql

select nome from aluno where dtnasc = (select mint(dtnasc) from aluno where codc = 11);

select a.nome from (select min(dtnasc) as eldery from aluno where codc = 11) t join aluno a on t.eldery = a.dtnasc where a.code = 11;

select nomep, sum(qtdade) from exp group by 1;

